v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -30 10 -30 90 { lab=IN1}
N -30 190 -30 270 { lab=IN2}
N 0 310 0 340 { lab=S}
N 30 10 60 10 { lab=OUT}
N 60 10 60 190 { lab=OUT}
N 30 190 60 190 { lab=OUT}
N 0 310 0 340 { lab=S}
N 30 190 30 270 { lab=OUT}
N 0 130 -0 150 { lab=Sbar}
N 0 -70 0 -30 { lab=S}
N 30 10 30 90 { lab=OUT}
N -60 50 -30 50 { lab=IN1}
N -60 230 -30 230 { lab=IN2}
N -40 140 0 140 { lab=Sbar}
N -20 -50 -0 -50 { lab=S}
N -0 -50 90 -50 { lab=S}
N 90 -50 90 320 { lab=S}
N 0 320 90 320 { lab=S}
N 60 120 140 120 { lab=OUT}
N 0 10 0 30 { lab=VSS}
N 0 30 140 30 { lab=VSS}
N 0 70 0 90 { lab=VDD}
N 0 70 140 70 { lab=VDD}
N 0 190 -0 220 { lab=VSS}
N 0 220 100 220 { lab=VSS}
N 100 30 100 220 { lab=VSS}
N 0 250 0 270 { lab=VDD}
N 0 250 120 250 { lab=VDD}
N 120 70 120 250 { lab=VDD}
C {devices/ipin.sym} -50 50 0 0 {name=p1 lab=IN1
}
C {sky130_fd_pr/nfet_01v8.sym} 0 -10 3 1 {name=M2
L=0.15
W=0.65
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 0 170 3 1 {name=M1
L=0.15
W=0.65
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 0 290 1 1 {name=M3
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 0 110 1 1 {name=M4
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 0 290 1 1 {name=M5
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
C {devices/ipin.sym} -50 230 0 0 {name=p3 lab=IN2
}
C {devices/ipin.sym} -30 140 0 0 {name=p4 lab=Sbar
}
C {devices/ipin.sym} -10 -50 0 0 {name=p5 lab=S}
C {devices/opin.sym} 130 120 0 0 {name=p6 lab=OUT
}
C {devices/iopin.sym} 130 30 0 0 {name=p2 lab=VSS
}
C {devices/iopin.sym} 130 70 0 0 {name=p7 lab=VDD
}
