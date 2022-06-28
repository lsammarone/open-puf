

for {set x 31} {$x<=63} {set x [expr $x+1]} {

findlabel C\[$x\]
#erase label
port make

}

