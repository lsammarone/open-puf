v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -170 -340 -100 -340 { lab=VDD}
N -170 -290 -100 -290 { lab=VSS}
N 310 -550 390 -550 { lab=RESET1}
N 310 -470 390 -470 { lab=RESET2}
N 470 -550 520 -550 { lab=r1}
N 470 -470 510 -470 { lab=r2}
N 470 -620 490 -620 { lab=r1}
N 490 -620 490 -550 { lab=r1}
N 370 -620 390 -620 { lab=RESET1}
N 370 -620 370 -550 { lab=RESET1}
N 520 -550 550 -550 { lab=r1}
N 550 -550 560 -550 { lab=r1}
N 510 -470 560 -470 { lab=r2}
N 370 -410 390 -410 { lab=RESET2}
N 370 -470 370 -410 { lab=RESET2}
N 470 -410 490 -410 { lab=r2}
N 490 -470 490 -410 { lab=r2}
N 550 -70 620 -70 { lab=out[8:15]}
N 550 -90 590 -90 { lab=VDD}
N 590 -130 590 -90 { lab=VDD}
N 550 -50 590 -50 { lab=VSS}
N 590 -50 590 -20 { lab=VSS}
N 470 -30 500 -30 { lab=buf_out[8:14],OUT}
N 500 -30 500 10 { lab=buf_out[8:14],OUT}
N 340 -90 380 -90 { lab=r2}
N 340 -70 380 -70 { lab=out[7:14]}
N 340 -50 380 -50 { lab=#net1}
N 590 -160 590 -130 { lab=VDD}
N 590 -20 590 0 { lab=VSS}
N 620 -70 660 -70 { lab=out[8:15]}
N 300 -70 340 -70 { lab=out[7:14]}
N 340 -50 340 -10 { lab=#net1}
N 340 -130 340 -90 { lab=r2}
N 140 -70 210 -70 { lab=out[0:7]}
N 140 -90 180 -90 { lab=VDD}
N 180 -130 180 -90 { lab=VDD}
N 140 -50 180 -50 { lab=VSS}
N 180 -50 180 -20 { lab=VSS}
N 60 -30 90 -30 { lab=#net2}
N 90 -30 90 10 { lab=#net2}
N -70 -90 -30 -90 { lab=r1}
N -70 -70 -30 -70 { lab=IN,out[0:6]}
N -70 -50 -30 -50 { lab=#net3}
N 180 -160 180 -130 { lab=VDD}
N 180 -20 180 0 { lab=VSS}
N 210 -70 250 -70 { lab=out[0:7]}
N -110 -70 -70 -70 { lab=IN,out[0:6]}
N -70 -50 -70 -10 { lab=#net3}
N -70 -130 -70 -90 { lab=r1}
N 500 10 500 30 { lab=buf_out[8:14],OUT}
C {devices/iopin.sym} -110 -340 0 0 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -140 -340 0 0 {name=l23 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -110 -290 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} -140 -290 0 0 {name=l27 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 410 -300 0 0 {name=p3 lab=OUT}
C {sky130_stdcells/inv_16.sym} 430 -470 0 0 {name=x47 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_16.sym} 430 -550 0 0 {name=x48 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 550 -550 0 0 {name=l3 sig_type=std_logic lab=r1}
C {devices/lab_pin.sym} 550 -470 0 0 {name=l4 sig_type=std_logic lab=r2}
C {devices/ipin.sym} 320 -550 0 0 {name=p28 lab=RESET1}
C {sky130_stdcells/inv_16.sym} 430 -620 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_16.sym} 430 -410 0 0 {name=x5 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {singlestage.sym} 530 -70 0 0 {name=x2[8:15]}
C {devices/lab_pin.sym} 590 -150 0 0 {name=l21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 590 -10 0 0 {name=l22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 650 -70 0 0 {name=l24 sig_type=std_logic lab=out[8:15]}
C {devices/lab_pin.sym} 360 -70 0 0 {name=l25 sig_type=std_logic lab=out[7:14]}
C {devices/lab_pin.sym} 340 -120 0 0 {name=l28 sig_type=std_logic lab=r2}
C {singlestage.sym} 120 -70 0 0 {name=x4[0:7]}
C {devices/lab_pin.sym} 180 -150 0 0 {name=l29 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -10 0 0 {name=l30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -70 0 0 {name=l31 sig_type=std_logic lab=out[0:7]}
C {devices/lab_pin.sym} -50 -70 0 0 {name=l32 sig_type=std_logic lab=IN,out[0:6]}
C {devices/lab_pin.sym} -70 -120 0 0 {name=l34 sig_type=std_logic lab=r1}
C {devices/ipin.sym} 320 -470 0 0 {name=p4 lab=RESET2}
C {devices/lab_pin.sym} 500 10 0 0 {name=l1 sig_type=std_logic lab=buf_out[8:14],OUT}
C {devices/ipin.sym} 310 -250 0 0 {name=p6 lab=IN}
