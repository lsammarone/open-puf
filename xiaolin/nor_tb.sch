v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 140 -130 140 -50 { lab=IN1}
N 200 -130 200 -50 { lab=out}
N 140 70 140 150 { lab=IN2}
N 200 70 200 150 { lab=out}
N 170 -10 170 30 { lab=#net1}
N 170 -210 170 -170 { lab=#net2}
N 170 -190 250 -190 { lab=#net2}
N 250 -190 250 200 { lab=#net2}
N 170 200 250 200 { lab=#net2}
N 200 -90 230 -90 { lab=out}
N 200 110 230 110 { lab=out}
N 230 -90 230 110 { lab=out}
N 380 90 380 110 { lab=GND}
N 170 -130 170 -110 { lab=GND}
N 170 -110 300 -110 { lab=GND}
N 170 70 170 90 { lab=GND}
N 170 90 280 90 { lab=GND}
N 280 -110 280 90 { lab=GND}
N 170 -70 170 -50 { lab=#net3}
N 170 -70 380 -70 { lab=#net3}
N 380 -70 380 30 { lab=#net3}
N 170 130 170 150 { lab=#net3}
N 170 130 340 130 { lab=#net3}
N 340 -70 340 130 { lab=#net3}
N -20 200 -20 250 { lab=#net2}
N -20 250 170 250 { lab=#net2}
N 170 190 170 200 { lab=#net2}
N 170 200 170 250 { lab=#net2}
N 80 10 80 200 { lab=#net1}
N 80 10 170 10 { lab=#net1}
N -80 260 -80 280 { lab=GND}
N -80 200 -20 200 { lab=#net2}
N -20 200 -0 200 { lab=#net2}
N -80 -100 140 -100 { lab=IN1}
N -90 100 140 100 { lab=IN2}
N -520 30 -520 50 { lab=GND}
N -520 -30 -470 -30 { lab=VDD}
N -90 110 -90 120 { lab=IN2}
N -90 100 -90 110 { lab=IN2}
N -90 180 -90 200 { lab=GND}
N -120 -100 -80 -100 { lab=IN1}
N -240 -80 -240 -60 { lab=GND}
N -290 -60 -290 -40 { lab=GND}
N -290 -120 -240 -120 { lab=#net4}
C {devices/code.sym} -470 -240 0 0 {name=TT_MODELS
only_toplevel=true
formal="tcleval( @value )"
value="
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.include /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

"
spice_ignore=false}
C {devices/code_shown.sym} -310 -280 0 0 {name=NGSPICE
only_toplevel=true
value=" 

.control
save all
tran 10n 30n
.endc
"}
C {sky130_fd_pr/nfet_01v8.sym} 170 -150 3 1 {name=M1
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 170 -30 1 1 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 170 50 3 1 {name=M3
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 170 170 1 1 {name=M4
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
C {devices/lab_pin.sym} 230 20 0 0 {name=l4 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 140 -90 0 0 {name=l5 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 140 110 0 0 {name=l6 sig_type=std_logic lab=IN2}
C {devices/vsource.sym} 380 60 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} 380 110 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 300 -110 0 0 {name=l7 lab=GND}
C {sky130_stdcells/inv_1.sym} 40 200 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/vsource.sym} -80 230 0 0 {name=V4 value=1.8}
C {devices/gnd.sym} -80 280 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -520 0 0 0 {name=V9 value=1.8
}
C {devices/gnd.sym} -520 50 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} -490 -30 0 0 {name=l15 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -90 150 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -90 200 0 0 {name=l2 lab=GND}
C {sky130_stdcells/nor2_1.sym} -180 -100 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} -240 -60 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -290 -90 0 0 {name=V1 value=PULSE"(1.8 0 0ns 10ps 10ps 10ns 30ns)"
}
C {devices/gnd.sym} -290 -40 0 0 {name=l10 lab=GND}
