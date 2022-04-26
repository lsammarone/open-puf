v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1330 -1310 1330 -1280 { lab=GND}
N 1330 -1390 1330 -1370 { lab=#net1}
N 1330 -1390 1410 -1390 { lab=#net1}
N 1980 -1440 2110 -1440 { lab=VDD}
N 2110 -1440 2110 -1410 { lab=VDD}
N 2110 -1350 2110 -1320 { lab=GND}
N 1430 -1430 1450 -1430 { lab=#net1}
N 1430 -1430 1430 -1340 { lab=#net1}
N 1430 -1340 1450 -1340 { lab=#net1}
N 1410 -1390 1430 -1390 { lab=#net1}
N 1490 -1400 1490 -1370 { lab=out}
N 1490 -1500 1490 -1460 { lab=VDD}
N 1490 -1310 1490 -1280 { lab=GND}
N 1490 -1390 1680 -1390 { lab=out}
N 1760 -1390 1790 -1390 { lab=#net2}
N 1870 -1390 1920 -1390 { lab=#net3}
N 1490 -1290 1520 -1290 { lab=GND}
N 1520 -1290 1920 -1290 { lab=GND}
N 1920 -1310 1920 -1290 { lab=GND}
N 1920 -1390 1920 -1370 { lab=#net3}
N 1490 -1340 1530 -1340 { lab=GND}
N 1530 -1340 1530 -1290 { lab=GND}
N 1490 -1430 1520 -1430 { lab=VDD}
N 1520 -1480 1520 -1430 { lab=VDD}
N 1490 -1480 1520 -1480 { lab=VDD}
C {devices/vsource.sym} 2110 -1380 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 2110 -1320 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1330 -1340 0 0 {name=V2 value=PULSE"(0 1.8 1ns 10ps 10ps 1ns 2ns)"}
C {devices/gnd.sym} 1330 -1280 0 0 {name=l3 lab=GND}
C {devices/code.sym} 1160 -1490 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="

.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm
.include /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

"
spice_ignore=false}
C {devices/code_shown.sym} 1290 -1820 0 0 {name=NGSPICE
only_toplevel=true
value="
.option seed=random

.control
let mc_runs=300
let run=1
dowhile run <= mc_runs
tran 0.1p 2n
wrdata ~/372puf/ee372/inverter_data_collect/inverter_fall\{$&run\}.txt v(out)
reset
let run = run + 1
end

*plot all.v(out)
*plot tran1.v(out) tran2.v(out) tran3.v(out) tran4.v(out) tran5.v(out) tran6.v(out) tran7.v(out) tran8.v(out) tran9.v(out) tran10.v(out)

save all
.endc
"}
C {sky130_stdcells/inv_1.sym} 1830 -1390 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 2050 -1440 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {sky130_stdcells/inv_1.sym} 1720 -1390 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_fd_pr/nfet_01v8.sym} 1470 -1340 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 1470 -1430 0 0 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1490 -1480 0 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 1490 -1280 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 1920 -1340 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1610 -1390 0 0 {name=l6 sig_type=std_logic lab=out}
