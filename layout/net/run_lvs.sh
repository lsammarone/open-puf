# netgen option to exclude fill and tap from source
# export MAGIC_EXT_USE_GDS=1
netgen -batch lvs "lvs.spice NBR128_flat" "source.spice NBR128" /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/netgen/sky130A_setup.tcl ./lvs_results.log
