#=========================================================================
# power-strategy-singlemesh.tcl
#=========================================================================
# This script implements a single power mesh on the upper metal layers.
# Note that M2 is expected to be vertical, and the lower metal layer of
# the power mesh is expected to be horizontal.
#
# Author : Christopher Torng
# Date   : January 20, 2019

#-------------------------------------------------------------------------
# Stdcell power rail preroute
#-------------------------------------------------------------------------
# Generate horizontal stdcell preroutes

sroute -nets {vccd1 vssd1} -connect {corePin}

#-------------------------------------------------------------------------
# Shorter names from the ADK
#-------------------------------------------------------------------------

set pmesh_bot $ADK_POWER_MESH_BOT_LAYER
set pmesh_top $ADK_POWER_MESH_TOP_LAYER

#-------------------------------------------------------------------------
# Power ring
#-------------------------------------------------------------------------

addRing -nets {vccd1 vssd1} -type core_rings -follow core   \
        -layer [list top  $pmesh_top bottom $pmesh_top  \
                     left $pmesh_bot right  $pmesh_bot] \
        -width   3.1 \
        -spacing 3.1 \
        -offset  0   \
        -extend_corner {tl tr bl br lt lb rt rb}
        
selectInst puf1_inst/BR32_inst
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met4 -stacked_via_bottom_layer met3 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vccd1 vssd1} -type block_rings -around selected -layer {top met3 bottom met3 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

selectInst puf1_inst/BR64_inst
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met4 -stacked_via_bottom_layer met3 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vccd1 vssd1} -type block_rings -around selected -layer {top met3 bottom met3 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

selectInst puf1_inst/BR128_inst
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met4 -stacked_via_bottom_layer met3 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vccd1 vssd1} -type block_rings -around selected -layer {top met3 bottom met3 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

selectInst puf2_inst/BR32_inst
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met4 -stacked_via_bottom_layer met3 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vccd1 vssd1} -type block_rings -around selected -layer {top met3 bottom met3 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

selectInst puf2_inst/BR64_inst
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met4 -stacked_via_bottom_layer met3 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vccd1 vssd1} -type block_rings -around selected -layer {top met3 bottom met3 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

selectInst puf2_inst/BR128_inst
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met4 -stacked_via_bottom_layer met3 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vccd1 vssd1} -type block_rings -around selected -layer {top met3 bottom met3 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

selectInst puf3_inst/BR32_inst
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met4 -stacked_via_bottom_layer met3 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vccd1 vssd1} -type block_rings -around selected -layer {top met3 bottom met3 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

selectInst puf3_inst/BR64_inst
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met4 -stacked_via_bottom_layer met3 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vccd1 vssd1} -type block_rings -around selected -layer {top met3 bottom met3 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

selectInst puf3_inst/BR128_inst
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met4 -stacked_via_bottom_layer met3 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vccd1 vssd1} -type block_rings -around selected -layer {top met3 bottom met3 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

selectInst puf4_inst/BR32_inst
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met4 -stacked_via_bottom_layer met3 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vccd1 vssd1} -type block_rings -around selected -layer {top met3 bottom met3 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

selectInst puf4_inst/BR64_inst
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met4 -stacked_via_bottom_layer met3 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vccd1 vssd1} -type block_rings -around selected -layer {top met3 bottom met3 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

selectInst puf4_inst/BR128_inst
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer met4 -stacked_via_bottom_layer met3 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vccd1 vssd1} -type block_rings -around selected -layer {top met3 bottom met3 left met4 right met4} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None


#-------------------------------------------------------------------------
# Power mesh bottom settings (vertical)
#-------------------------------------------------------------------------
# - pmesh_bot_str_width            : 8X thickness compared to 3 * M1 width
# - pmesh_bot_str_pitch            : Arbitrarily choosing the stripe pitch
# - pmesh_bot_str_intraset_spacing : Space between vssd1/vccd1, choosing
#                                    constant pitch across vssd1/vccd1 stripes

# - pmesh_bot_str_interset_pitch   : Pitch between same-signal stripes

# Get M1 min width and signal routing pitch as defined in the LEF

set M1_min_width    [dbGet [dbGetLayerByZ 2].minWidth]
set M1_route_pitchX [dbGet [dbGetLayerByZ 2].pitchX]

# Bottom stripe params, coming from user project wrapper
# See: https://github.com/efabless/caravel_user_project/blob/main/openlane/user_project_wrapper/config.json

set pmesh_bot_str_width [expr 10] 
set pmesh_bot_str_pitch [expr 100]

set pmesh_bot_str_intraset_spacing [expr 50]
set pmesh_bot_str_interset_pitch   [expr $pmesh_bot_str_pitch]

setViaGenMode -reset
setViaGenMode -viarule_preference default
setViaGenMode -ignore_DRC false

setAddStripeMode -reset
setAddStripeMode -stacked_via_bottom_layer 2 \
                 -stacked_via_top_layer    $pmesh_top

# Add the stripes
#
# Use -start to offset the stripes slightly away from the core edge.
# Allow same-layer jogs to connect stripes to the core ring if some
# blockage is in the way (e.g., connections from core ring to pads).
# Restrict any routing around blockages to use only layers for power.

addStripe -nets {vssd1 vccd1} -layer $pmesh_bot -direction vertical \
    -width $pmesh_bot_str_width                                 \
    -spacing $pmesh_bot_str_intraset_spacing                    \
    -set_to_set_distance $pmesh_bot_str_interset_pitch          \
    -max_same_layer_jog_length $pmesh_bot_str_pitch             \
    -padcore_ring_bottom_layer_limit $pmesh_bot                 \
    -padcore_ring_top_layer_limit $pmesh_top                    \
    -start [expr 60]
    
#-------------------------------------------------------------------------
# Power mesh bottom settings (horizontal)
#-------------------------------------------------------------------------
# - pmesh_bot_str_width            : 8X thickness compared to 3 * M1 width
# - pmesh_bot_str_pitch            : Arbitrarily choosing the stripe pitch
# - pmesh_bot_str_intraset_spacing : Space between vssd1/vccd1, choosing
#                                    constant pitch across vssd1/vccd1 stripes

# - pmesh_bot_str_interset_pitch   : Pitch between same-signal stripes


# Bottom stripe params, coming from user project wrapper
# See: https://github.com/efabless/caravel_user_project/blob/main/openlane/user_project_wrapper/config.json

set pmesh_top_str_width [expr 10] 
set pmesh_top_str_pitch [expr 180]

set pmesh_top_str_intraset_spacing [expr 90]
set pmesh_top_str_interset_pitch   [expr $pmesh_top_str_pitch]

setViaGenMode -reset
setViaGenMode -viarule_preference default
setViaGenMode -ignore_DRC false

setAddStripeMode -reset
setAddStripeMode -stacked_via_bottom_layer 2 \
                 -stacked_via_top_layer    $pmesh_top

# Add the stripes
#
# Use -start to offset the stripes slightly away from the core edge.
# Allow same-layer jogs to connect stripes to the core ring if some
# blockage is in the way (e.g., connections from core ring to pads).
# Restrict any routing around blockages to use only layers for power.

addStripe -nets {vssd1 vccd1} -layer $pmesh_top -direction horizontal \
    -width $pmesh_top_str_width                                 \
    -spacing $pmesh_top_str_intraset_spacing                    \
    -set_to_set_distance $pmesh_top_str_interset_pitch          \
    -max_same_layer_jog_length $pmesh_top_str_pitch             \
    -padcore_ring_bottom_layer_limit $pmesh_bot                 \
    -padcore_ring_top_layer_limit $pmesh_top                    \
    -start [expr 100]



deselectAll
selectInst puf1_inst/BR32_inst
#sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst BR32_inst
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {vccd1 vssd1} -allowLayerChange 1 -blockPin useLef -inst puf1_inst/BR32_inst

deselectAll
selectInst puf1_inst/BR64_inst
#sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst BR32_inst
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {vccd1 vssd1} -allowLayerChange 1 -blockPin useLef -inst puf1_inst/BR64_inst

deselectAll
selectInst puf1_inst/BR128_inst
#sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst BR32_inst
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {vccd1 vssd1} -allowLayerChange 1 -blockPin useLef -inst puf1_inst/BR128_inst


# ---puf2 
deselectAll
selectInst puf2_inst/BR32_inst
#sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst BR32_inst
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {vccd1 vssd1} -allowLayerChange 1 -blockPin useLef -inst puf2_inst/BR32_inst

deselectAll
selectInst puf2_inst/BR64_inst
#sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst BR32_inst
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {vccd1 vssd1} -allowLayerChange 1 -blockPin useLef -inst puf2_inst/BR64_inst

deselectAll
selectInst puf2_inst/BR128_inst
#sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst BR32_inst
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {vccd1 vssd1} -allowLayerChange 1 -blockPin useLef -inst puf2_inst/BR128_inst




deselectAll
selectInst puf3_inst/BR32_inst
#sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst BR32_inst
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {vccd1 vssd1} -allowLayerChange 1 -blockPin useLef -inst puf3_inst/BR32_inst

deselectAll
selectInst puf3_inst/BR64_inst
#sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst BR32_inst
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {vccd1 vssd1} -allowLayerChange 1 -blockPin useLef -inst puf3_inst/BR64_inst

deselectAll
selectInst puf3_inst/BR128_inst
#sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst BR32_inst
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {vccd1 vssd1} -allowLayerChange 1 -blockPin useLef -inst puf3_inst/BR128_inst





deselectAll
selectInst puf4_inst/BR32_inst
#sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst BR32_inst
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {vccd1 vssd1} -allowLayerChange 1 -blockPin useLef -inst puf4_inst/BR32_inst

deselectAll
selectInst puf4_inst/BR64_inst
#sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst BR32_inst
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {vccd1 vssd1} -allowLayerChange 1 -blockPin useLef -inst puf4_inst/BR64_inst

deselectAll
selectInst puf4_inst/BR128_inst
#sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -inst BR32_inst
sroute -connect {blockPin} -layerChangeRange {met1 met5} -blockPinTarget { nearestTarget } -nets {vccd1 vssd1} -allowLayerChange 1 -blockPin useLef -inst puf4_inst/BR128_inst

