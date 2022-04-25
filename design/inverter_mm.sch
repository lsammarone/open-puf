v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -60 80 0 { lab=out}
N 10 -90 40 -90 { lab=out}
N 10 -90 10 30 { lab=out}
N 10 30 40 30 { lab=out}
N 80 60 80 110 { lab=GND}
N 80 -160 80 -120 { lab=VDD}
N -380 -160 -380 -20 { lab=VDD}
N -240 -160 80 -160 { lab=VDD}
N -380 40 -380 90 { lab=GND}
N -240 90 80 90 { lab=GND}
N 430 -40 430 -10 { lab=#net1}
N 430 50 430 70 { lab=GND}
N 80 80 250 80 { lab=GND}
N 140 -160 140 -90 { lab=VDD}
N 80 -160 140 -160 { lab=VDD}
N 80 30 130 30 { lab=GND}
N 130 30 130 80 { lab=GND}
N -380 90 -240 90 { lab=GND}
N -380 -160 -240 -160 { lab=VDD}
N 80 -90 140 -90 { lab=VDD}
N 80 -40 180 -40 { lab=out}
N 250 80 430 80 { lab=GND}
N 430 70 430 80 { lab=GND}
N 260 -40 310 -40 { lab=#net2}
N 390 -40 430 -40 { lab=#net1}
N 10 -20 80 -20 { lab=out}
C {devices/gnd.sym} 80 110 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 430 20 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -10 -160 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 140 -40 0 0 {name=l3 sig_type=std_logic lab=out}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 60 30 0 0 {name=M1
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code.sym} 160 -380 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt_mm
.include \\\\$::SKYWATER_STDCELLS\\\\/sky130_fd_sc_hd.spice

"
spice_ignore=false}
C {devices/code_shown.sym} 350 -400 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
.option seed=random
let mc_runs=100
let run=1
dowhile run <= mc_runs
op
** plot in out
wrdata ~/open-puf/sims/inverter_mm\{$&run\}.txt v(out)
reset
let run = run + 1
end

save all
.endc
"}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 60 -90 0 0 {name=M2
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
C {devices/vsource.sym} -380 10 0 0 {name=V3 value=1.8}
C {sky130_stdcells/inv_1.sym} 220 -40 0 0 {name=x2 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 350 -40 0 0 {name=x3 VGND=0 VNB=0 VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
