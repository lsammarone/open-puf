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
N 530 -510 530 -460 { lab=VPWR}
N 310 420 310 460 { lab=VGND}
N 530 90 650 90 { lab=VGND}
N 530 -80 640 -80 { lab=VPWR}
N 640 -80 650 -80 { lab=VPWR}
N 260 30 320 30 { lab=IN}
N 530 10 770 10 { lab=VCAP}
N 810 220 810 270 { lab=VGND}
N 170 30 170 70 { lab=IN}
N 170 30 260 30 { lab=IN}
N 170 130 170 180 { lab=VGND}
N -70 120 -70 160 { lab=VGND}
N -70 10 -70 60 { lab=VPWR}
N -240 120 -240 150 { lab=GND}
N -240 20 -240 60 { lab=VGND}
N 320 -430 490 -430 { lab=#net3}
N 530 -400 530 -360 { lab=#net4}
N 280 -400 280 -370 { lab=#net3}
N 280 -510 280 -460 { lab=VPWR}
N 280 -310 280 -260 { lab=VGND}
N 530 -430 590 -430 { lab=VPWR}
N 590 -460 590 -430 { lab=VPWR}
N 590 -480 590 -460 { lab=VPWR}
N 530 -480 590 -480 { lab=VPWR}
N 230 -430 280 -430 { lab=VPWR}
N 230 -480 230 -430 { lab=VPWR}
N 230 -480 280 -480 { lab=VPWR}
N 350 390 490 390 { lab=#net5}
N 310 300 310 360 { lab=#net5}
N 310 180 310 240 { lab=VPWR}
N 310 330 360 330 { lab=#net5}
N 360 330 380 330 { lab=#net5}
N 380 330 380 390 { lab=#net5}
N 530 420 530 460 { lab=VGND}
N 590 390 590 440 { lab=VGND}
N 530 440 590 440 { lab=VGND}
N 270 390 270 430 { lab=VGND}
N 270 430 310 430 { lab=VGND}
N 270 390 310 390 { lab=VGND}
N 530 390 590 390 { lab=VGND}
N 280 -380 320 -380 { lab=#net3}
N 320 -380 350 -380 { lab=#net3}
N 350 -430 350 -380 { lab=#net3}
N 530 270 530 360 { lab=#net6}
N 530 120 530 210 { lab=#net7}
N 810 120 810 160 { lab=#net8}
N 810 10 810 60 { lab=VCAP}
N 770 10 810 10 { lab=VCAP}
N 530 -220 530 -150 { lab=#net1}
N 530 -360 530 -280 { lab=#net4}
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
C {devices/code.sym} -180 -430 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
.include \\\\$::SKYWATER_STDCELLS\\\\/sky130_fd_sc_hd.spice

"
spice_ignore=false}
C {devices/code_shown.sym} -340 -430 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
save all
tran 0.01n 100n
*op
.ic V(VCAP)= 0
plot vcap in
write duty_detect.raw
.endc
"}
C {sky130_stdcells/buf_2.sym} 360 30 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/isource.sym} 280 -340 0 0 {name=I0 value=150u}
C {devices/isource.sym} 310 270 0 0 {name=I1 value=150u}
C {devices/lab_pin.sym} 530 -490 0 0 {name=l1 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 530 -490 0 0 {name=l2 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 640 -80 0 0 {name=l3 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 650 90 0 0 {name=l4 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 310 440 0 0 {name=l5 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 810 190 0 0 {name=C1 model=cap_mim_m3_1 W=33 L=30 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 810 250 0 0 {name=l6 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 740 10 0 0 {name=l7 sig_type=std_logic lab=VCAP}
C {devices/vsource.sym} -70 90 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 170 100 0 0 {name=V2 value=PULSE"(1.8 0 0ns 10ps 10ps 1ns 2ns) DC=0.8"}
C {devices/lab_pin.sym} 170 160 0 0 {name=l8 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 260 30 0 0 {name=l9 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} -70 150 0 0 {name=l10 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} -70 30 0 0 {name=l11 sig_type=std_logic lab=VPWR}
C {devices/vsource.sym} -240 90 0 0 {name=V3 value=0}
C {devices/lab_pin.sym} -70 150 0 0 {name=l13 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} -240 30 0 0 {name=l14 sig_type=std_logic lab=VGND}
C {devices/gnd.sym} -240 150 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 280 -490 0 0 {name=l16 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 280 -490 0 0 {name=l17 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 280 -290 0 0 {name=l19 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 510 390 0 0 {name=M5
L=2
W=4
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 330 390 0 1 {name=M6
L=2
W=4
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
C {devices/lab_pin.sym} 310 190 0 0 {name=l18 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 530 450 0 0 {name=l20 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 510 -430 0 0 {name=M2
L=0.35
W=4
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 300 -430 0 1 {name=M3
L=0.35
W=4
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 510 -80 0 0 {name=M4
L=0.35
W=4
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
C {devices/ammeter.sym} 530 240 0 0 {name=Vmeas}
C {devices/ammeter.sym} 810 90 0 0 {name=Vmeas1}
C {devices/ammeter.sym} 530 -250 0 0 {name=Vmeas2}
