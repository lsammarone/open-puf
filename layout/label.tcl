set llx -481
set lly -221
set urx -458.5
set ury 352
set i 31
set x 0
set delta 944
#set delta 71
#box [expr $llx-$x] [expr $lly] [expr $urx-$x] [expr $ury]

for {set x 0} {$x<=$delta*31} {set x [expr $x+$delta]} {
box [expr $llx+$x] [expr $lly] [expr $urx+$x] [expr $ury]
#box [expr $llx] [expr $lly+$x] [expr $urx] [expr $ury+$x]
paint met2
label C\[$i\] FreeSans 100
set i [expr $i + 1]
}
