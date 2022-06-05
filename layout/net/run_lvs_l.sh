# netgen option to exclude fill and tap from source
export MAGIC_EXT_USE_GDS=1
netgen -batch lvs "lvs.spice BR64_nwell_flat" "source.spice BR64" ./sky130A_setup.tcl ./lvs_results.log
