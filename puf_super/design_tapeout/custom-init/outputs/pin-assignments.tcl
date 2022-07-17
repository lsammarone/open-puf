# Placing pins clockwise starting from top left

# Pins on the top side, going left to right


# Pins on the right side, going top to bottom

#set pins_right {\
  {out} \
  {so} \
}

# Pins on the bottom side, going right to left


# Pins on the left side, going bottom to top

set pins_left {\
  {reset} \
  {out} \
  {so} \
  {puf_sel0} \ 
  {puf_sel1} \
  {clk} \
  {si} \
  {rstn} \
  {length0} \
  {length1} \
}

#editPin -layer met3 -pin $pins_right  -side RIGHT  -spreadType SIDE
editPin -layer met3 -pin $pins_left   -side LEFT   -spreadType SIDE
