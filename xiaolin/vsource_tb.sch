v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -150 -60 -150 -30 { lab=GND}
N -150 -170 -150 -120 { lab=out}
C {devices/code_shown.sym} -140 -360 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
save all
tran 1n 100n
plot out
.endc
"}
C {devices/vsource.sym} -150 -90 0 0 {name=V2 value="PULSE(1.8 0 10ns 10ps 1ps 40ns 50ns)"}
C {devices/gnd.sym} -150 -30 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -150 -150 0 0 {name=l5 sig_type=std_logic lab=out}
