set llx 1034
set lly -6149
set urx 1062
set ury -5684
set i 95
set x 0
set delta 944
#box [expr $llx-$x] [expr $lly] [expr $urx-$x] [expr $ury]

for {set x 0} {$x<=$delta*31} {set x [expr $x+$delta]} {
box [expr $llx+$x] [expr $lly] [expr $urx+$x] [expr $ury]
#box [expr $llx] [expr $lly-$x] [expr $urx] [expr $ury-$x]
paint met2
label C\[$i\] FreeSans 100
set i [expr $i - 1]
}
