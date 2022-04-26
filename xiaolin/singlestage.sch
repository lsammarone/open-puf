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
N -80 170 -60 170 { lab=#net5}
N -60 140 -60 170 { lab=#net5}
N -110 90 -110 130 { lab=C}
N -110 130 170 130 { lab=C}
N 170 60 170 130 { lab=C}
N -160 120 -160 170 { lab=C}
N -160 120 -110 120 { lab=C}
N -100 -90 -100 -60 { lab=VDD}
N -100 -90 180 -90 { lab=VDD}
N 180 -90 180 -40 { lab=VDD}
N -110 -80 160 -80 { lab=VSS}
N 160 -80 170 -80 { lab=VSS}
N 170 -80 170 -40 { lab=VSS}
N -180 20 -140 20 { lab=IN}
N -190 170 -160 170 { lab=C}
N 210 0 260 0 { lab=OUT}
N -50 -140 -50 -110 { lab=RESET}
N -60 -140 -50 -140 { lab=RESET}
N 20 -130 20 -80 { lab=VSS}
N 90 -130 90 -90 { lab=VDD}
N 160 70 170 70 { lab=C}
N -120 90 -110 90 { lab=C}
N 160 -50 170 -50 { lab=VSS}
N -110 -80 -110 -40 { lab=VSS}
N 10 -130 20 -130 { lab=VSS}
N 80 -130 90 -130 { lab=VDD}
C {sky130_stdcells/nor2_1.sym} 40 -30 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 40 80 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {demux2-1.sym} -60 20 0 0 {name=x3}
C {mux2-1.sym} 200 10 0 0 {name=x4}
C {sky130_stdcells/inv_1.sym} -120 170 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -170 20 0 0 {name=p1 lab=IN
}
C {devices/ipin.sym} -180 170 0 0 {name=p2 lab=C
}
C {devices/ipin.sym} -50 -140 0 0 {name=p3 lab=RESET
}
C {devices/iopin.sym} 10 -130 0 0 {name=p4 lab=VSS
}
C {devices/iopin.sym} 80 -130 0 0 {name=p5 lab=VDD
}
C {devices/opin.sym} 260 0 0 0 {name=p6 lab=OUT
}
