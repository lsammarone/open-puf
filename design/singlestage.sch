v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -70 -10 -10 -10 { lab=#net1}
N -70 40 -70 100 { lab=#net2}
N -70 100 -20 100 { lab=#net2}
N -50 60 -20 60 { lab=RESET}
N -50 -110 -50 60 { lab=RESET}
N -50 -50 -20 -50 { lab=RESET}
N 100 -30 140 -30 { lab=#net3}
N 140 -30 140 -10 { lab=#net3}
N 140 30 140 80 { lab=#net4}
N 100 80 140 80 { lab=#net4}
N -100 100 -100 140 { lab=#net5}
N 180 60 180 140 { lab=#net5}
N -100 140 180 140 { lab=#net5}
N -110 90 -110 130 { lab=#net6}
N -110 130 170 130 { lab=#net6}
N 170 60 170 130 { lab=#net6}
N -100 -90 -100 -60 { lab=VDD}
N -100 -90 180 -90 { lab=VDD}
N 180 -90 180 -40 { lab=VDD}
N -110 -80 160 -80 { lab=VSS}
N 160 -80 170 -80 { lab=VSS}
N 170 -80 170 -40 { lab=VSS}
N -180 20 -140 20 { lab=IN}
N -260 170 -230 170 { lab=#net5}
N 210 0 260 0 { lab=OUT}
N -50 -140 -50 -110 { lab=RESET}
N -60 -140 -50 -140 { lab=RESET}
N 20 -130 20 -80 { lab=VSS}
N 90 -130 90 -90 { lab=VDD}
N 160 70 170 70 { lab=#net6}
N -120 90 -110 90 { lab=#net6}
N 160 -50 170 -50 { lab=VSS}
N -110 -80 -110 -40 { lab=VSS}
N 10 -130 20 -130 { lab=VSS}
N 80 -130 90 -130 { lab=VDD}
N -90 190 -90 220 { lab=VDD}
N -20 250 0 250 { lab=#net5}
N -20 140 -20 250 { lab=#net5}
N -90 250 -70 250 { lab=VDD}
N -70 200 -70 250 { lab=VDD}
N -90 200 -70 200 { lab=VDD}
N 40 200 60 200 { lab=VDD}
N 60 200 60 250 { lab=VDD}
N 40 250 60 250 { lab=VDD}
N -90 280 -90 310 { lab=#net1}
N -90 310 -40 310 { lab=#net1}
N -40 -10 -40 310 { lab=#net1}
N 40 280 40 310 { lab=#net2}
N 40 310 80 310 { lab=#net2}
N 80 120 80 310 { lab=#net2}
N -30 120 80 120 { lab=#net2}
N -30 100 -30 120 { lab=#net2}
N -70 200 40 200 { lab=VDD}
N 40 200 40 220 { lab=VDD}
N -400 170 -360 170 { lab=C}
N -280 170 -260 170 { lab=#net5}
N -150 130 -110 130 { lab=#net6}
N -150 130 -150 170 { lab=#net6}
N -150 170 -150 250 { lab=#net6}
N -150 250 -130 250 { lab=#net6}
N -250 140 -100 140 { lab=#net5}
N -250 140 -250 170 { lab=#net5}
C {sky130_stdcells/nor2_1.sym} 40 -30 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 40 80 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {demux2-1.sym} -60 20 0 0 {name=x3}
C {mux2-1.sym} 200 10 0 0 {name=x4}
C {sky130_stdcells/inv_1.sym} -190 170 0 0 {name=x5 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -170 20 0 0 {name=p1 lab=IN
}
C {devices/ipin.sym} -390 170 0 0 {name=p2 lab=C
}
C {devices/ipin.sym} -50 -140 0 0 {name=p3 lab=RESET
}
C {devices/iopin.sym} 10 -130 0 0 {name=p4 lab=VSS
}
C {devices/iopin.sym} 80 -130 0 0 {name=p5 lab=VDD
}
C {devices/opin.sym} 260 0 0 0 {name=p6 lab=OUT
}
C {devices/lab_pin.sym} 140 -90 0 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -90 200 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8_hvt.sym} -110 250 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 20 250 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_stdcells/inv_1.sym} -320 170 0 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
