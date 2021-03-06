v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1480 410 -1410 410 { lab=VDD}
N -1480 460 -1410 460 { lab=VSS}
N -1090 190 -1010 190 { lab=#net1}
N -930 110 -930 190 { lab=#net2}
N -930 240 -930 300 { lab=#net2}
N -930 300 -840 300 { lab=#net2}
N -760 -50 -760 10 { lab=#net3}
N -760 -50 -680 -50 { lab=#net3}
N -760 10 -760 30 { lab=#net3}
N -760 30 -680 30 { lab=#net3}
N -760 260 -760 300 { lab=#net4}
N -760 260 -680 260 { lab=#net4}
N -760 300 -760 340 { lab=#net4}
N -760 340 -680 340 { lab=#net4}
N -600 -50 -550 -50 { lab=r1}
N -600 30 -560 30 { lab=r2}
N -600 260 -560 260 { lab=r3}
N -600 340 -550 340 { lab=r4}
N -1230 190 -1170 190 { lab=RESET}
N -1250 -30 -1190 -30 { lab=RESET}
N -1190 -30 -1090 -30 { lab=RESET}
N -710 -120 -680 -120 { lab=#net3}
N -760 -120 -760 -50 { lab=#net3}
N -600 -120 -560 -120 { lab=r1}
N -560 -120 -560 -50 { lab=r1}
N -760 -120 -710 -120 { lab=#net3}
N -760 210 -760 260 { lab=#net4}
N -760 210 -680 210 { lab=#net4}
N -600 210 -560 210 { lab=r3}
N -560 210 -560 260 { lab=r3}
N -760 340 -760 410 { lab=#net4}
N -760 410 -680 410 { lab=#net4}
N -600 410 -550 410 { lab=r4}
N -550 340 -550 410 { lab=r4}
N -760 30 -760 100 { lab=#net3}
N -760 100 -670 100 { lab=#net3}
N -560 30 -560 100 { lab=r2}
N -600 100 -560 100 { lab=r2}
N -930 190 -930 240 { lab=#net2}
N -930 10 -930 110 { lab=#net2}
N -930 10 -840 10 { lab=#net2}
N -150 80 -120 80 { lab=r1}
N -150 100 -120 100 { lab=int_out[5:0],int_out[31]}
N -150 120 -120 120 { lab=C[6:0]}
N 50 80 90 80 { lab=VDD}
N 50 100 90 100 { lab=int_out[6:0]}
N 50 120 90 120 { lab=VSS}
N -30 140 10 140 { lab=buf_out[6:0]}
N 90 80 120 80 { lab=VDD}
N 90 100 170 100 { lab=int_out[6:0]}
N 120 80 180 80 { lab=VDD}
N 90 120 170 120 { lab=VSS}
N 10 140 10 230 { lab=buf_out[6:0]}
N 450 90 480 90 { lab=r4}
N 450 110 480 110 { lab=int_out[13:6]}
N 450 130 480 130 { lab=C[14:7]}
N 650 90 690 90 { lab=VDD}
N 650 110 690 110 { lab=int_out[14:7]}
N 650 130 690 130 { lab=VSS}
N 570 150 610 150 { lab=buf_out[14:7]}
N 690 90 720 90 { lab=VDD}
N 690 110 770 110 { lab=int_out[14:7]}
N 720 90 780 90 { lab=VDD}
N 690 130 770 130 { lab=VSS}
N 610 150 610 240 { lab=buf_out[14:7]}
N 1050 110 1080 110 { lab=r3}
N 1050 130 1080 130 { lab=int_out[22:14]}
N 1050 150 1080 150 { lab=C[23:15]}
N 1250 110 1290 110 { lab=VDD}
N 1250 130 1290 130 { lab=int_out[23:15]}
N 1250 150 1290 150 { lab=VSS}
N 1170 170 1210 170 { lab=buf_out[23:15]}
N 1290 110 1320 110 { lab=VDD}
N 1290 130 1370 130 { lab=int_out[23:15]}
N 1320 110 1380 110 { lab=VDD}
N 1290 150 1370 150 { lab=VSS}
N 1210 170 1210 260 { lab=buf_out[23:15]}
N 1630 130 1660 130 { lab=r2}
N 1630 150 1660 150 { lab=int_out[30:23]}
N 1630 170 1660 170 { lab=C[31:24]}
N 1830 130 1870 130 { lab=VDD}
N 1830 150 1870 150 { lab=int_out[31:24]}
N 1830 170 1870 170 { lab=VSS}
N 1750 190 1790 190 { lab=OUT,buf_out[30:24]}
N 1870 130 1900 130 { lab=VDD}
N 1870 150 1950 150 { lab=int_out[31:24]}
N 1900 130 1960 130 { lab=VDD}
N 1870 170 1950 170 { lab=VSS}
N 1790 190 1790 280 { lab=OUT,buf_out[30:24]}
N -1460 540 -1360 540 { lab=OUT}
N -230 260 -160 260 { lab=C[31:0]}
N -290 260 -230 260 { lab=C[31:0]}
C {devices/iopin.sym} -1420 410 0 0 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -1450 410 0 0 {name=l23 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -1420 460 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} -1450 460 0 0 {name=l27 sig_type=std_logic lab=VSS}
C {sky130_stdcells/inv_16.sym} -640 30 0 0 {name=x47 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_16.sym} -640 -50 0 0 {name=x48 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_16.sym} -640 340 0 0 {name=x50 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_16.sym} -640 260 0 0 {name=x51 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -1220 190 0 0 {name=l2 sig_type=std_logic lab=RESET}
C {devices/ipin.sym} -1240 -30 0 0 {name=p36 lab=RESET}
C {devices/lab_pin.sym} -1150 -30 0 0 {name=l79 sig_type=std_logic lab=RESET}
C {devices/lab_pin.sym} -560 -50 0 0 {name=l3 sig_type=std_logic lab=r1}
C {sky130_stdcells/inv_16.sym} -640 -120 0 0 {name=x9 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_16.sym} -800 10 0 0 {name=x10 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_16.sym} -800 300 0 0 {name=x11 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_16.sym} -640 100 0 0 {name=x12 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_16.sym} -640 210 0 0 {name=x29 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_16.sym} -640 410 0 0 {name=x30 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} -1130 190 0 0 {name=x31 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_8.sym} -970 190 0 0 {name=x32 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {singlestage.sym} 30 100 0 0 {name=x41[6:0]}
C {devices/lab_pin.sym} -150 120 0 0 {name=l81 sig_type=std_logic lab=C[6:0]
}
C {devices/lab_pin.sym} 170 100 0 0 {name=l82 sig_type=std_logic lab=int_out[6:0]
}
C {devices/lab_pin.sym} 10 200 0 0 {name=l83 sig_type=std_logic lab=buf_out[6:0]
}
C {devices/lab_pin.sym} -140 100 0 0 {name=l84 sig_type=std_logic lab=int_out[5:0],int_out[31]
}
C {singlestage.sym} 630 110 0 0 {name=x1[7:0]}
C {devices/lab_pin.sym} 460 130 0 0 {name=l85 sig_type=std_logic lab=C[14:7]
}
C {devices/lab_pin.sym} 770 110 0 0 {name=l86 sig_type=std_logic lab=int_out[14:7]
}
C {devices/lab_pin.sym} 610 210 0 0 {name=l87 sig_type=std_logic lab=buf_out[14:7]
}
C {devices/lab_pin.sym} 460 110 0 0 {name=l88 sig_type=std_logic lab=int_out[13:6]
}
C {singlestage.sym} 1230 130 0 0 {name=x2[8:0]}
C {devices/lab_pin.sym} 1060 150 0 0 {name=l89 sig_type=std_logic lab=C[23:15]
}
C {devices/lab_pin.sym} 1370 130 0 0 {name=l90 sig_type=std_logic lab=int_out[23:15]
}
C {devices/lab_pin.sym} 1210 230 0 0 {name=l91 sig_type=std_logic lab=buf_out[23:15]
}
C {devices/lab_pin.sym} 1060 130 0 0 {name=l92 sig_type=std_logic lab=int_out[22:14]
}
C {singlestage.sym} 1810 150 0 0 {name=x3[7:0]}
C {devices/lab_pin.sym} 1640 170 0 0 {name=l93 sig_type=std_logic lab=C[31:24]
}
C {devices/lab_pin.sym} 1950 150 0 0 {name=l94 sig_type=std_logic lab=int_out[31:24]
}
C {devices/lab_pin.sym} 1790 250 0 0 {name=l95 sig_type=std_logic lab=OUT,buf_out[30:24]
}
C {devices/lab_pin.sym} 1640 150 0 0 {name=l96 sig_type=std_logic lab=int_out[30:23]
}
C {devices/lab_pin.sym} 140 80 0 0 {name=l97 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 720 90 0 0 {name=l98 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1330 110 0 0 {name=l99 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1900 130 0 0 {name=l100 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1900 170 0 0 {name=l102 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1320 150 0 0 {name=l103 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 720 130 0 0 {name=l104 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 120 120 0 0 {name=l105 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -140 80 0 0 {name=l106 sig_type=std_logic lab=r1
}
C {devices/lab_pin.sym} 460 90 0 0 {name=l107 sig_type=std_logic lab=r4
}
C {devices/lab_pin.sym} 1060 110 0 0 {name=l108 sig_type=std_logic lab=r3
}
C {devices/lab_pin.sym} 1650 130 0 0 {name=l109 sig_type=std_logic lab=r2}
C {devices/opin.sym} -1370 540 0 0 {name=p3 lab=OUT}
C {devices/lab_pin.sym} -1410 540 0 0 {name=l1 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} -190 260 0 0 {name=l5 sig_type=std_logic lab=C[31:0]
}
C {devices/ipin.sym} -280 260 0 0 {name=p37 lab=C[31:0]}
C {devices/lab_pin.sym} -570 30 0 0 {name=l4 sig_type=std_logic lab=r2}
C {devices/lab_pin.sym} -570 210 0 0 {name=l6 sig_type=std_logic lab=r3}
C {devices/lab_pin.sym} -560 340 0 0 {name=l7 sig_type=std_logic lab=r4}
