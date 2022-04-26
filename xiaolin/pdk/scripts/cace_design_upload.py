#!/usr/bin/env python3
#
# cace_design_upload.py
#
# The purpose of this script is to package up the user
# design schematic and associated files and send them to
# the remote marketplace server, precipitating a launch
# of CACE to officially characterize the design.
#

import os
import json
import re
import sys
import requests
import subprocess

import file_compressor
import file_request_hash
import local_uid_services

import config

"""
 standalone script.
 Makes rest calls to marketplace REST server to save datasheet
 and associated file(s).  Request hash is generated so the two
 requests can be associated on the server side.  This action
 causes the marketplace to run the official characterization
 on the CACE server.
"""

mktp_server_url = config.mktp_server_url
cace_server_url = config.cace_server_url

# Make request to server sending json passed in.
def send_doc(doc):
    result = requests.post(mktp_server_url + '/cace/simulate_request', json=doc)
    print('send_doc', result.status_code)

# Cancel simulation (sent directly to CACE)
def send_cancel_doc(doc):
    result = requests.post(cace_server_url + '/cace/cancel_sims', json=doc)
    print('send_cancel_doc', result.status_code)

# Pure HTTP post here.  Add the file to files object and the hash/filename
# to the data params.
def send_file(hash, file, file_name):
    files = {'file': file.getvalue()}
    data = {'request-hash': hash, 'file-name': file_name}
    result = requests.post(mktp_server_url + '/cace/simulate_request_files', files=files, data=data)
    print('send_file', result.status_code)

if __name__ == '__main__':

   # Divide up command line into options and arguments
    options = []
    arguments = []
    for item in sys.argv[1:]:
        if item.find('-', 0) == 0:
            options.append(item)
        else:
            arguments.append(item)

    # There should be two arguments passed to the script.  One is
    # the path and filename of the datasheet JSON file, and the
    # other a path to the location of the design (netlist and/or
    # schematic).

    datasheet_filepath = []
    design_filepath = []

    for argval in arguments:
        if os.path.isfile(argval):
            datasheet_filepath = argval
        elif os.path.isdir(argval):
            design_filepath = argval
        elif os.path.splitext(argval)[1] == '':
            argname = argval + '.json'
            if os.path.isfile(argval):
                datasheet_filepath = argname

    if not datasheet_filepath:
        # Check for JSON file 'project.json' in the current or parent directory
        if design_filepath:
            argtry = design_filepath + '/project.json'
            if os.path.isfile(argtry):
                datasheet_filepath = argtry
            else:
                argtry = os.path.split(design_filepath)[0] + '/project.json'
                if os.path.isfile(argtry):
                    datasheet_filepath = argtry

        if not os.path.isfile(datasheet_filepath):
            # Legacy behavior support:
            # Check for JSON file with same name as netlist filepath,
            # but with a .json extension, in the netlist filepath directory
            # or the directory above it.
            if design_filepath:
                argtry = design_filepath + '/' + os.path.basename(design_filepath) + '.json'
                if os.path.isfile(argtry):
                    datasheet_filepath = argtry
                else:
                    argtry = os.path.split(design_filepath)[0] + '/' + os.path.basename(design_filepath) + '.json'
                    if os.path.isfile(argtry):
                        datasheet_filepath = argtry

    if not datasheet_filepath:
        print('Error:  No datasheet JSON file specified\n')
        sys.exit(1)

    if not os.path.isfile(datasheet_filepath):
        print('Error:  No datasheet JSON file ' + datasheet_filepath + ' found\n')
        sys.exit(1)

    # Read the datasheet now.  Get the expected design name

    dsheet = {}
    print('Reading JSON datasheet ' + datasheet_filepath)
    with open(datasheet_filepath, 'r') as user_doc_file:
        docinfo = json.load(user_doc_file)
        dsheet = docinfo['data-sheet']
        name = dsheet['ip-name']

    # Get JSON file of settings if it exists.  It should be in the same
    # location as the JSON datasheet file (generated by cace.py)
    testmode = False
    force = False
    settings_filepath = os.path.split(datasheet_filepath)[0] + '/settings.json'
    if os.path.exists(settings_filepath):
        with open(settings_filepath, 'r') as user_settings_file:
            settings = json.load(user_settings_file)
            docinfo['settings'] = settings
            if 'submit-as-schematic' in settings:
                if settings['submit-as-schematic'] == True:
                    force = True
            if 'submit-test-mode' in settings:
                if settings['submit-test-mode'] == True:
                    testmode = True

    # Use of "-force" in the options overrides any settings from the JSON file.
    if '-force' in options:
        force = True

    if '-test' in options:
        testmode = True

    # Diagnostic
    if 'identifiers' in docinfo:
        print('Identifiers: ' + str(docinfo['identifiers']))

    if not design_filepath:
        print('Error:  No schematic or netlist directory given\n')
        sys.exit(1)
    else:
        # If design_filepath has a subdirectory "design", add that to
        # the path name.
        if os.path.isdir(design_filepath + '/spi'):
            spice_filepath = design_filepath + '/spi'
            filelist = os.listdir(spice_filepath)
        if os.path.isdir(design_filepath + '/elec'):
            if os.path.isdir(design_filepath + '/elec/' + name + '.delib'):
                schem_filepath = design_filepath + '/elec/' + name + '.delib'
                filelist.extend(os.listdir(schem_filepath))

        # To be valid, the filepath must contain either a .spi file with
        # the name of ip-name, or a .sch file with the name of ip-name.
        netlistname = name + '.spi'
        schemname = name + '.sch'
        if netlistname not in filelist and schemname not in filelist:
            print('Error:  Path ' + design_filepath + ' has no schematic '
			+ 'or netlist for design ' + name + '\n')
            sys.exit(1)

    # Add key 'project-folder' to the document, containing the path to the
    # JSON file.  This is used by the CACE to ensure that progress information
    # is passed to the correct folder, not relying on hard-coded home paths,
    # and allowing for copies of projects in different paths.

    foldername = os.path.split(datasheet_filepath)[0]
    docinfo['project-folder'] = foldername

    # Current expectation is to use UID (username).  If it is not in the
    # document, then add it here.

    if testmode:
        uid = {}
    else:
        if 'UID' not in docinfo:
            uid = local_uid_services.get_uid(os.environ['USER'])
        else:
            uid = docinfo['UID']

    if not uid or uid == 'null':
        uid = os.environ['USER']
    docinfo['UID'] = uid

    # Handle cancel requests
    if '-cancel' in options:
        # Read last message . . .
        if os.path.exists(design_filepath + '/ngspice/char/remote_status.json'):
            with open(design_filepath + '/ngspice/char/remote_status.json', 'r') as f:
                status = json.load(f)
            if 'hash' in status:
                docinfo['request-hash'] = status['hash']
                send_cancel_doc(docinfo)
            else:
                print('No hash value in status file, cannot cancel.')
        else:
            print('No status file found, cannot cancel.')
        sys.exit(0)

    # If settings specify that the submission should be forced to be schematic-only,
    # pass the setting to CACE as 'netlist-source' in the data-sheet record.
    if force:
        dsheet['netlist-source'] = 'schematic'

    # Put the current git system state into the target directory
    # prior to tarballing
    if os.path.isfile('/ef/.ef-version'):
        with open('/ef/.ef-version', 'r') as f:
            ef_version = f.read().rstrip()
        docinfo['ef-version'] = ef_version

    rhash, timestamp = file_request_hash.get_hash(name)
    docinfo['request-hash'] = rhash
    print('request hash = ' + rhash + '\n')

    # Now send the document
    if testmode:
        print('Test:  running send_doc(docinfo)\n')
    else:
        send_doc(docinfo)

    # Send the tarballed design file directory to the marketplace server for storage.
    # Ignore the log file, which is meant for in-system diagnostics, not for storage.
    exclusions = [name + '\.log', '.*\.raw',
		'elec/\.java',
		'ngspice/run/\.allwaves']

    # If settings specify that the submission should be forced to be schematic-only,
    # then don't tarball the layout database files.
    if force:
        exclusions.append('mag/.*\.mag')
        exclusions.append('mag/.*\.ext')

    # Now send the netlist file tarball
    tarballname = name + '.tar.gz'
    if testmode:
        file_compressor.tar_directory_contents_to_file(design_filepath,
		tarballname, exclude=exclusions)
        os.rename(design_filepath + '/' + tarballname, tarballname)
        print('Test:  running send_file(' + rhash + ', <tarball>, ' + tarballname + ')\n')
    else:
        tar = file_compressor.tar_directory_contents(design_filepath,
		exclude=exclusions)
        send_file(rhash, tar, tarballname)

