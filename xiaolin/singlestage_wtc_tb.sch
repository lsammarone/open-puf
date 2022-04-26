v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 30 280 30 { lab=left_in1}
N 220 80 220 140 { lab=left_in2}
N 220 140 270 140 { lab=left_in2}
N 240 100 270 100 { lab=reset}
N 240 -70 240 100 { lab=reset}
N 240 -10 270 -10 { lab=reset}
N 390 10 430 10 { lab=right_in1}
N 430 10 430 30 { lab=right_in1}
N 430 70 430 120 { lab=right_in2}
N 390 120 430 120 { lab=right_in2}
N 190 140 190 180 { lab=#net1}
N 470 100 470 180 { lab=#net1}
N 190 180 470 180 { lab=#net1}
N 210 210 230 210 { lab=#net1}
N 230 180 230 210 { lab=#net1}
N 180 130 180 170 { lab=select}
N 180 170 460 170 { lab=select}
N 460 100 460 170 { lab=select}
N 130 160 130 210 { lab=select}
N 130 160 180 160 { lab=select}
N 190 -50 190 -20 { lab=#net2}
N 190 -50 470 -50 { lab=#net2}
N 470 -50 470 0 { lab=#net2}
N 180 -40 450 -40 { lab=GND}
N 450 -40 460 -40 { lab=GND}
N 460 -40 460 0 { lab=GND}
N 100 210 130 210 { lab=select}
N 310 -90 310 -40 { lab=GND}
N 380 -90 380 -50 { lab=#net2}
N 450 110 460 110 { lab=select}
N 170 130 180 130 { lab=select}
N 450 -10 460 -10 { lab=GND}
N 180 -40 180 0 { lab=GND}
N 370 -90 380 -90 { lab=#net2}
N 460 -120 460 -100 { lab=GND}
N 370 -180 370 -90 { lab=#net2}
N 370 -180 460 -180 { lab=#net2}
N 40 270 40 290 { lab=GND}
N 40 210 100 210 { lab=select}
N 100 -210 240 -210 { lab=reset}
N 240 -210 240 -70 { lab=reset}
N 310 -90 330 -90 { lab=GND}
N 460 -120 460 -100 { lab=GND}
N 100 -150 100 -130 { lab=GND}
N 100 -150 100 -130 { lab=GND}
N 500 40 540 40 { lab=out_int}
N 320 -330 320 -310 { lab=GND}
N 320 -330 320 -310 { lab=GND}
N 320 -430 320 -390 { lab=VDD}
N -70 10 -20 10 { lab=#net3}
N -20 -240 -20 10 { lab=#net3}
N -20 -240 590 -240 { lab=#net3}
N -250 40 -140 40 { lab=#net4}
N -200 0 -200 40 { lab=#net4}
N -200 -120 -200 -60 { lab=#net5}
N -360 40 -310 40 { lab=in}
N 630 -240 630 0 { lab=#net3}
N 590 -240 630 -240 { lab=#net3}
N 540 40 630 40 { lab=out_int}
N -140 -80 -140 -60 { lab=GND}
N -140 -80 -110 -80 { lab=GND}
N -110 -80 -110 -30 { lab=GND}
N -100 -110 -100 -40 { lab=VDD}
N 690 -110 690 -90 { lab=GND}
N 690 -110 690 -90 { lab=GND}
N 650 -110 690 -110 { lab=GND}
N 650 -110 650 -40 { lab=GND}
N 650 -40 660 -40 { lab=GND}
N 670 -80 670 -30 { lab=VDD}
N -350 290 -350 310 { lab=GND}
N -350 230 -290 230 { lab=C2}
N -210 230 -170 230 { lab=C2b}
N 700 10 750 10 { lab=out}
N -160 110 -110 110 { lab=C2}
N -100 120 -100 150 { lab=C2b}
N -280 -30 -280 0 { lab=C2}
N -240 -30 -240 0 { lab=C2b}
N 630 80 660 80 { lab=C2}
N 670 70 670 110 { lab=C2b}
N -400 100 -400 120 { lab=GND}
N -400 100 -400 120 { lab=GND}
N -400 40 -350 40 { lab=in}
N -70 60 150 60 { lab=#net6}
N -200 -30 -170 -30 { lab=GND}
N -170 -80 -170 -30 { lab=GND}
N -170 -80 -130 -80 { lab=GND}
N -280 40 -280 70 { lab=#net4}
N -280 70 -240 70 { lab=#net4}
N -240 40 -240 70 { lab=#net4}
C {sky130_stdcells/nor2_1.sym} 330 10 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 330 120 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {demux2-1.sym} 230 60 0 0 {name=x3}
C {mux2-1.sym} 490 50 0 0 {name=x4}
C {sky130_stdcells/inv_1.sym} 170 210 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 330 -90 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 460 -150 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 460 -100 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 40 240 0 0 {name=V2 value=0}
C {devices/gnd.sym} 40 290 0 0 {name=l3 lab=GND}
C {devices/code.sym} -580 -270 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
*.lib "/farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice" tt
.lib ~/372puf/ee372/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice


"
spice_ignore=false}
C {devices/code_shown.sym} -380 -420 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
save all
tran 0.1p 6n
.endc
"}
C {devices/gnd.sym} 460 -100 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 100 -130 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 100 -130 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 100 -180 0 0 {name=V4 value=0}
C {devices/lab_pin.sym} 530 40 0 0 {name=l6 sig_type=std_logic lab=out_int}
C {devices/vsource.sym} 320 -360 0 0 {name=V5 value=1.8}
C {devices/gnd.sym} 320 -310 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 320 -310 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 320 -410 0 0 {name=l11 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 200 -210 0 0 {name=l13 sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 100 210 0 0 {name=l14 sig_type=std_logic lab=select}
C {devices/lab_pin.sym} 250 30 0 0 {name=l15 sig_type=std_logic lab=left_in1}
C {devices/lab_pin.sym} 240 140 0 0 {name=l17 sig_type=std_logic lab=left_in2}
C {devices/lab_pin.sym} 410 10 0 0 {name=l19 sig_type=std_logic lab=right_in1
}
C {devices/lab_pin.sym} 410 120 0 0 {name=l20 sig_type=std_logic lab=right_in2}
C {demux2-1.sym} -60 40 0 0 {name=x6}
C {sky130_fd_pr/nfet_01v8.sym} -220 -30 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -280 20 3 1 {name=M2
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
C {mux2-1.sym} 690 20 0 0 {name=x7}
C {devices/gnd.sym} -140 -60 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} -100 -90 0 0 {name=l18 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 690 -90 0 0 {name=l21 lab=GND}
C {devices/gnd.sym} 690 -90 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 670 -60 0 0 {name=l23 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -350 310 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} -290 230 0 0 {name=l25 sig_type=std_logic lab=C2}
C {sky130_stdcells/inv_1.sym} -250 230 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -190 230 0 0 {name=l26 sig_type=std_logic lab=C2b}
C {devices/lab_pin.sym} -280 -20 0 0 {name=l27 sig_type=std_logic lab=C2}
C {devices/lab_pin.sym} -240 -20 0 0 {name=l28 sig_type=std_logic lab=C2b}
C {devices/lab_pin.sym} -140 110 0 0 {name=l29 sig_type=std_logic lab=C2}
C {devices/lab_pin.sym} -100 140 0 0 {name=l30 sig_type=std_logic lab=C2b}
C {devices/lab_pin.sym} 640 80 0 0 {name=l31 sig_type=std_logic lab=C2}
C {devices/lab_pin.sym} 670 100 0 0 {name=l32 sig_type=std_logic lab=C2b}
C {devices/lab_pin.sym} 730 10 0 0 {name=l33 sig_type=std_logic lab=out}
C {devices/vsource.sym} -400 70 0 0 {name=V7 value=PULSE"(1.8 0 3ns 10ps 10ps 3ns 6ns)"}
C {devices/gnd.sym} -400 120 0 0 {name=l35 lab=GND}
C {devices/gnd.sym} -400 120 0 0 {name=l36 lab=GND}
C {devices/lab_pin.sym} -340 40 0 0 {name=l4 sig_type=std_logic lab=in}
C {devices/vsource.sym} -350 260 0 0 {name=V3 value=PULSE"(1.8 0 1ns 10ps 10ps 5ns 6ns)"}
