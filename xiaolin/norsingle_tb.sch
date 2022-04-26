v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -280 -60 -280 -40 { lab=GND}
N -230 -20 -230 -10 { lab=GND}
N -230 -80 -200 -80 { lab=#net1}
N -280 -120 -200 -120 { lab=#net2}
N -290 140 -290 160 { lab=GND}
N -240 180 -240 190 { lab=GND}
N -240 120 -210 120 { lab=B}
N -290 80 -210 80 { lab=A}
N -80 -100 140 -100 { lab=#net3}
N -90 100 140 100 { lab=C}
N -110 210 -110 220 { lab=GND}
N -110 150 -80 150 { lab=VDD}
C {sky130_stdcells/nor2_1.sym} -140 -100 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/vsource.sym} -280 -90 0 0 {name=V1 value="PULSE(1.8 0 0ns 10ps 10ps 2ns 5ns)"}
C {devices/vsource.sym} -230 -50 0 0 {name=V2 value=0}
C {devices/gnd.sym} -280 -40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -230 -10 0 0 {name=l2 lab=GND}
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
tran 1n 10n
plot net2 net1 net5
.endc
"}
C {sky130_stdcells/nor2_1.sym} -150 100 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/vsource.sym} -290 110 0 0 {name=V5 value=0}
C {devices/vsource.sym} -240 150 0 0 {name=V6 value=0}
C {devices/gnd.sym} -290 160 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} -240 190 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -110 180 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} -110 220 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -90 150 0 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -240 80 0 0 {name=l6 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -220 120 0 0 {name=l8 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 20 100 0 0 {name=l12 sig_type=std_logic lab=C}
