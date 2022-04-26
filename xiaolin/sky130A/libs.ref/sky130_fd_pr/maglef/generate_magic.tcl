#!/usr/bin/env wish
#--------------------------------------------
# Script to generate .mag files from .lef    
#--------------------------------------------
tech unlock *
set devlist {}
lef datestamp 1648127584
lef read /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.ref/sky130_fd_pr/lef/sky130_fd_pr.lef
puts stdout "Annotating cells from CDL/SPICE"
catch {readspice /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.ref/sky130_fd_pr/cdl/sky130_fd_pr.cdl}
load sky130_fd_pr__cap_vpp_02p4x04p6_m1m2_noshield
writeall force
puts stdout "Done."
quit -noprompt
