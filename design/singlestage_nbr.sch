v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -70 -10 -10 -10 { lab=IN1}
N -70 100 -20 100 { lab=IN2}
N -50 60 -20 60 { lab=RESET}
N -50 -110 -50 60 { lab=RESET}
N -50 -50 -20 -50 { lab=RESET}
N 100 -30 140 -30 { lab=#net1}
N 100 80 140 80 { lab=#net2}
N -260 230 -230 230 { lab=Cb}
N 380 100 430 100 { lab=OUT2}
N -50 -140 -50 -110 { lab=RESET}
N -60 -140 -50 -140 { lab=RESET}
N -400 230 -360 230 { lab=C}
N -280 230 -260 230 { lab=Cb}
N 510 100 550 100 { lab=OUT2}
N 430 100 510 100 { lab=OUT2}
N 420 100 420 170 { lab=OUT2}
N 500 170 530 170 { lab=#net3}
N -230 230 -180 230 { lab=Cb}
N -100 230 -30 230 { lab=Cbb}
N 140 80 190 130 { lab=#net2}
N 190 130 250 130 { lab=#net2}
N 200 90 250 90 { lab=#net1}
N 140 -30 200 90 { lab=#net1}
N 280 170 280 230 { lab=Cbb}
N 270 170 280 170 { lab=Cbb}
N 290 160 290 230 { lab=Cb}
N 280 -10 280 50 { lab=VSS}
N 270 50 280 50 { lab=VSS}
N 290 -10 290 60 { lab=VDD}
N 280 -290 280 -230 { lab=Cbb}
N 270 -230 280 -230 { lab=Cbb}
N 290 -290 290 -220 { lab=Cb}
N 280 -110 280 -50 { lab=VSS}
N 270 -110 280 -110 { lab=VSS}
N 290 -120 290 -50 { lab=VDD}
N 140 -30 190 -190 { lab=#net1}
N 190 -190 250 -190 { lab=#net1}
N 230 -150 250 -150 { lab=#net2}
N 140 80 210 -150 { lab=#net2}
N 210 -150 230 -150 { lab=#net2}
N 320 -160 480 -160 { lab=OUT1}
N 320 100 380 100 { lab=OUT2}
N 480 -160 530 -160 { lab=OUT1}
N 530 -160 540 -160 { lab=OUT1}
N -140 100 -70 100 { lab=IN2}
N -140 -10 -70 -10 { lab=IN1}
N 400 -80 420 -80 { lab=OUT1}
N 400 -160 400 -80 { lab=OUT1}
N 500 -80 540 -80 { lab=#net4}
N 530 170 560 170 { lab=#net3}
C {sky130_stdcells/nor2_1.sym} 40 -30 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 40 80 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} -140 230 0 0 {name=x5 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -140 -10 0 0 {name=p1 lab=IN1
}
C {devices/ipin.sym} -390 230 0 0 {name=p2 lab=C
}
C {devices/ipin.sym} -50 -140 0 0 {name=p3 lab=RESET
}
C {devices/iopin.sym} -50 -250 0 0 {name=p4 lab=VSS
}
C {devices/iopin.sym} 30 -250 0 0 {name=p5 lab=VDD
}
C {devices/opin.sym} 540 100 0 0 {name=p6 lab=OUT2
}
C {sky130_stdcells/inv_1.sym} -320 230 0 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 460 170 0 0 {name=x7 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 530 -80 0 0 {name=p7 lab=buf_out}
C {mux2-1.sym} 310 110 0 0 {name=x3}
C {devices/lab_pin.sym} -220 230 0 0 {name=l1 sig_type=std_logic lab=Cb}
C {devices/lab_pin.sym} -50 230 0 0 {name=l2 sig_type=std_logic lab=Cbb}
C {devices/lab_pin.sym} 280 200 0 0 {name=l3 sig_type=std_logic lab=Cbb}
C {devices/lab_pin.sym} 290 220 0 0 {name=l4 sig_type=std_logic lab=Cb}
C {devices/lab_pin.sym} 280 20 0 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 290 0 0 0 {name=l6 sig_type=std_logic lab=VDD}
C {mux2-1.sym} 310 -170 2 1 {name=x4}
C {devices/lab_pin.sym} 280 -260 2 1 {name=l7 sig_type=std_logic lab=Cbb}
C {devices/lab_pin.sym} 290 -280 2 1 {name=l8 sig_type=std_logic lab=Cb}
C {devices/lab_pin.sym} 280 -80 2 1 {name=l9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 290 -60 2 1 {name=l10 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 540 -160 0 0 {name=p8 lab=OUT1
}
C {devices/ipin.sym} -140 100 0 0 {name=p9 lab=IN2
}
C {sky130_stdcells/buf_1.sym} 460 -80 0 0 {name=x8 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/noconn.sym} 550 170 0 0 {name=l11}
