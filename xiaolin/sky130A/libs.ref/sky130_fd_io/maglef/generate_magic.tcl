#!/usr/bin/env wish
#--------------------------------------------
# Script to generate .mag files from .lef    
#--------------------------------------------
tech unlock *
lef datestamp 1648127584
lef read /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lef/sky130_ef_io.lef
lef read /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/lef/sky130_fd_io.lef
puts stdout "Annotating cells from CDL/SPICE"
catch {readspice /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.ref/sky130_fd_io/cdl/sky130_ef_io.cdl}
load sky130_ef_io__analog_pad
writeall force
puts stdout "Done."
quit -noprompt
