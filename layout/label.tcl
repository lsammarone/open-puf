set llx 30417.5
set lly -1205
set urx 30653.5
set ury -1174.5
set i 63
set x 0
set delta 71
#box [expr $llx-$x] [expr $lly] [expr $urx-$x] [expr $ury]

for {set x 0} {$x<=$delta*15} {set x [expr $x+$delta]} {
#box [expr $llx-$x] [expr $lly] [expr $urx-$x] [expr $ury]
box [expr $llx] [expr $lly-$x] [expr $urx] [expr $ury-$x]
paint met1
label C\[$i\] FreeSans 50
set i [expr $i - 1]
}
