

set x 127
for {set x 127} {$x>=0} {set x [expr $x-1]} {

findlabel C\[$x\]
port make

}

