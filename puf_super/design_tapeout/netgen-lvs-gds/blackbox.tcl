# Set up SRAM instances as black-box cells
model {BR32 inputs/design_extracted.spice} blackbox
model {BR64 inputs/design_extracted.spice} blackbox
model {BR128 inputs/design_extracted.spice} blackbox
model {BR32 inputs/design.lvs.v} blackbox
model {BR64 inputs/design.lvs.v} blackbox
model {BR128 inputs/design.lvs.v} blackbox
