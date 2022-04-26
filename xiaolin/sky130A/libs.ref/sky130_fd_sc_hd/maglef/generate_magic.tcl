#!/usr/bin/env wish
#--------------------------------------------
# Script to generate .mag files from .lef    
#--------------------------------------------
tech unlock *
lef datestamp 1648127584
lef read /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef
puts stdout "Annotating cells from CDL/SPICE"
catch {readspice /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/cdl/sky130_fd_sc_hd.cdl}
load sky130_ef_sc_hd__decap_12
writeall force
puts stdout "Done."
quit -noprompt
