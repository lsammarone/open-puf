v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 530 -150 530 -110 { lab=#net1}
N 530 -50 530 60 { lab=VCAP}
N 460 -80 490 -80 { lab=#net2}
N 460 -80 460 90 { lab=#net2}
N 460 90 490 90 { lab=#net2}
N 400 30 460 30 { lab=#net2}
N 530 -260 530 -210 { lab=VPWR}
N 530 120 530 160 { lab=#net3}
N 530 220 530 260 { lab=VGND}
N 530 90 650 90 { lab=VGND}
N 530 -80 640 -80 { lab=VPWR}
N 640 -80 650 -80 { lab=VPWR}
N 260 30 320 30 { lab=IN}
N 530 10 770 10 { lab=VCAP}
N 770 10 770 80 { lab=VCAP}
N 770 140 770 190 { lab=VGND}
N 170 30 170 70 { lab=IN}
N 170 30 260 30 { lab=IN}
N 170 130 170 180 { lab=VGND}
N -70 120 -70 160 { lab=VGND}
N -70 10 -70 60 { lab=VPWR}
N -240 120 -240 150 { lab=GND}
N -240 20 -240 60 { lab=VGND}
N 770 60 900 60 { lab=VCAP}
N 1010 140 1010 190 { lab=VGND}
N 1010 60 1010 80 { lab=#net4}
N 960 60 1010 60 { lab=#net4}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 510 90 0 0 {name=M1
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code.sym} 140 -340 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
*.lib sky130.lib.spice tt_mm
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

"
spice_ignore=false}
C {devices/code_shown.sym} -340 -430 0 0 {name=NGSPICE
only_toplevel=true
value="
* vvss vss 0 dc 0
* vvcc vcc 0 pwl 0 0 10n 0 10.1n 1.8 20n 1.8 20.1n 0

.control
save all
tran 0.01n 30n
plot \\"z[2]\\" \\"z[3]\\" \\"z[4]\\"
plot \\"y[2]\\" \\"y[3]\\" \\"y[4]\\"
write untitled.raw
.endc
"}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 510 -80 0 0 {name=M2
L=0.35
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_stdcells/buf_2.sym} 360 30 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/isource.sym} 530 -180 0 0 {name=I0 value=150u}
C {devices/isource.sym} 530 190 0 0 {name=I1 value=150u}
C {devices/lab_pin.sym} 530 -240 0 0 {name=l1 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 530 -240 0 0 {name=l2 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 640 -80 0 0 {name=l3 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 650 90 0 0 {name=l4 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 530 240 0 0 {name=l5 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 770 110 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 770 170 0 0 {name=l6 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 740 10 0 0 {name=l7 sig_type=std_logic lab=VCAP}
C {devices/vsource.sym} -70 90 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 170 100 0 0 {name=V2 value=PULSE"(1.8 0 0ns 10ps 10ps 600ps 1ns)"}
C {devices/lab_pin.sym} 170 160 0 0 {name=l8 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 260 30 0 0 {name=l9 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} -70 150 0 0 {name=l10 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} -70 30 0 0 {name=l11 sig_type=std_logic lab=VPWR}
C {devices/vsource.sym} -240 90 0 0 {name=V3 value=0}
C {devices/lab_pin.sym} -70 150 0 0 {name=l13 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} -240 30 0 0 {name=l14 sig_type=std_logic lab=VGND}
C {devices/gnd.sym} -240 150 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 1010 110 0 0 {name=V4 value=0.7}
C {devices/lab_pin.sym} 1010 170 0 0 {name=l15 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/diode.sym} 930 60 3 0 {name=D2
model=diode_pw2nd_05v5
area=1e12
}
