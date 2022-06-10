

set x 95
for {set x 95} {$x>=64} {set x [expr $x-1]} {

findlabel C\[$x\]
#erase label
port make

}

