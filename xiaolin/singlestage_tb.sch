v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -70 -10 -10 -10 { lab=left_in1}
N -70 40 -70 100 { lab=left_in2}
N -70 100 -20 100 { lab=left_in2}
N -50 60 -20 60 { lab=reset}
N -50 -110 -50 60 { lab=reset}
N -50 -50 -20 -50 { lab=reset}
N 100 -30 140 -30 { lab=right_in1}
N 140 -30 140 -10 { lab=right_in1}
N 140 30 140 80 { lab=right_in2}
N 100 80 140 80 { lab=right_in2}
N -100 100 -100 140 { lab=#net1}
N 180 60 180 140 { lab=#net1}
N -100 140 180 140 { lab=#net1}
N -80 170 -60 170 { lab=#net1}
N -60 140 -60 170 { lab=#net1}
N -110 90 -110 130 { lab=select}
N -110 130 170 130 { lab=select}
N 170 60 170 130 { lab=select}
N -160 120 -160 170 { lab=select}
N -160 120 -110 120 { lab=select}
N -100 -90 -100 -60 { lab=#net2}
N -100 -90 180 -90 { lab=#net2}
N 180 -90 180 -40 { lab=#net2}
N -110 -80 160 -80 { lab=GND}
N 160 -80 170 -80 { lab=GND}
N 170 -80 170 -40 { lab=GND}
N -180 20 -140 20 { lab=in}
N -190 170 -160 170 { lab=select}
N 20 -130 20 -80 { lab=GND}
N 90 -130 90 -90 { lab=#net2}
N 160 70 170 70 { lab=select}
N -120 90 -110 90 { lab=select}
N 160 -50 170 -50 { lab=GND}
N -110 -80 -110 -40 { lab=GND}
N 80 -130 90 -130 { lab=#net2}
N 170 -160 170 -140 { lab=GND}
N 80 -220 80 -130 { lab=#net2}
N 80 -220 170 -220 { lab=#net2}
N -250 230 -250 250 { lab=GND}
N -250 170 -190 170 { lab=select}
N -240 80 -240 100 { lab=GND}
N -240 20 -180 20 { lab=in}
N -190 -250 -50 -250 { lab=reset}
N -50 -250 -50 -110 { lab=reset}
N 20 -130 40 -130 { lab=GND}
N 170 -160 170 -140 { lab=GND}
N -190 -190 -190 -170 { lab=GND}
N -190 -190 -190 -170 { lab=GND}
N 210 -0 250 -0 { lab=out1}
N 320 -330 320 -310 { lab=GND}
N 320 -330 320 -310 { lab=GND}
N 320 -430 320 -390 { lab=VDD}
C {sky130_stdcells/nor2_1.sym} 40 -30 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 40 80 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {demux2-1.sym} -60 20 0 0 {name=x3}
C {mux2-1.sym} 200 10 0 0 {name=x4}
C {sky130_stdcells/inv_1.sym} -120 170 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 40 -130 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 170 -190 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 170 -140 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -250 200 0 0 {name=V2 value=0}
C {devices/gnd.sym} -250 250 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -240 50 0 0 {name=V3 value=0}
C {devices/gnd.sym} -240 100 0 0 {name=l4 lab=GND}
C {devices/code.sym} -580 -270 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
*.lib "/farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice" mc
.lib ~/372puf/ee372/sky130A/libs.tech/ngspice/sky130.lib.spice mc
.include /farmshare/home/classes/ee/372/PDKs/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice


"
spice_ignore=false}
C {devices/code_shown.sym} -380 -420 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
save all
tran 10n 100n
.endc
"}
C {devices/gnd.sym} 170 -140 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -190 -170 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -190 -170 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -190 -220 0 0 {name=V4 value="PULSE(1.8 0 10ns 10ps 10ps 40ns 50ns)"}
C {devices/lab_pin.sym} 240 0 0 0 {name=l6 sig_type=std_logic lab=out1}
C {devices/vsource.sym} 320 -360 0 0 {name=V5 value=1.8}
C {devices/gnd.sym} 320 -310 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 320 -310 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 320 -410 0 0 {name=l11 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -90 -250 0 0 {name=l13 sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} -180 20 0 0 {name=l12 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} -190 170 0 0 {name=l14 sig_type=std_logic lab=select}
C {devices/lab_pin.sym} -40 -10 0 0 {name=l15 sig_type=std_logic lab=left_in1}
C {devices/lab_pin.sym} -50 100 0 0 {name=l17 sig_type=std_logic lab=left_in2}
C {devices/lab_pin.sym} 120 -30 0 0 {name=l19 sig_type=std_logic lab=right_in1
}
C {devices/lab_pin.sym} 120 80 0 0 {name=l20 sig_type=std_logic lab=right_in2}
