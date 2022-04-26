proc shift_to_center {} {
	set res1 [box size]
	move [expr {-[lindex $res1 0] / 2}]i [expr {-[lindex $res1 1] / 2}]i
	return $res1
}

proc place_sky130_fd_pr__res_xhigh_po_2p85 {x_center y_center width length nx val index} {
	select clear
	puts "\n%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	puts "index: $index"
	puts "inst_name: sky130_fd_pr__res_xhigh_po"
	puts "x_center: $x_center"
	puts "y_center: $y_center"
	box [expr $x_center]um [expr $y_center]um [expr $x_center]um [expr $y_center]um  
	set params [sky130::sky130_fd_pr__res_xhigh_po_2p85_defaults]
	dict set params term 19.188 
	dict set params w $width
	dict set params l $length
	dict set params nx $nx
	dict set params val $val
	eval magic::gencell sky130::sky130_fd_pr__res_xhigh_po_2p85 [format "xm%d" $index] $params
	shift_to_center
}

proc place_inst {inst_name x_center y_center width length nf index params} {
	select clear
	puts "\n%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	puts "index: $index"
	puts "inst_name: $inst_name"
	puts "x_center: $x_center"
	puts "y_center: $y_center"
	box [expr $x_center]um [expr $y_center]um [expr $x_center]um [expr $y_center]um  
	# edit size(w,l) and finger number
    dict set params w $width
	dict set params l $length
	dict set params nf $nf
	# puts "cell_parameter: $params"
	eval magic::gencell sky130::$inst_name [format "xm%d" $index] w $width l $length nf $nf m 1 diffcov 300 polycov 60 poverlap 0 doverlap 1 topc 1 botc 1 guard 0 full_metal 1 viagate 40
	set box_size [shift_to_center]
	puts "\n whole instance size (width, length): \[$box_size\] \n"
	return $box_size
}


# set customized parameters that usually don't change in one element 
proc inst_param_customize {inst_name guard topc botc doverlap lmin wmin viagate} {
	append inst_name "_defaults"
	set params [sky130::$inst_name]
	dict set params guard $guard
	dict set params topc $topc
	dict set params botc $botc
	dict set params doverlap $doverlap
	dict set params lmin $lmin
	dict set params wmin $wmin
	dict set params viagate $viagate
	return $params
}
######################## Instance Placement Illustration #####################
#	inst_name guard topc botc lmin wmin viagate
#	inst_name x_center y_center width length nf index params
##############################################################################


### some simple test ###
load first_try
### PFET PLACEMENT ###
set params [inst_param_customize "sky130_fd_pr__pfet_01v8_lvt" 0 0 1 0 0.35 0.42 50]  
place_inst "sky130_fd_pr__pfet_01v8_lvt" 0 10 12.9 2 1 1 $params
# ### NFET PLACEMENT ###
set params [inst_param_customize "sky130_fd_pr__nfet_01v8_lvt" 0 0 1 0 0.15 0.42 50]  
place_inst "sky130_fd_pr__nfet_01v8_lvt" 0 -10 9 2 1 2 $params

#place_sky130_fd_pr__res_xhigh_po_2p85 0 0 2.850 31.52 17 22.132k 1
