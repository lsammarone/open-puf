v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -170 40 -170 90 { lab=GND}
N 80 90 80 110 { lab=GND}
N -0 0 50 0 { lab=GND}
N 80 90 260 90 { lab=GND}
N 260 -0 260 90 { lab=GND}
N 220 -0 260 -0 { lab=GND}
N -170 90 80 90 { lab=GND}
N -170 -90 -170 -20 { lab=VDD}
N 220 -20 260 -20 { lab=out}
N 220 -40 260 -40 { lab=VDD}
N 260 -20 350 -20 { lab=out}
N 340 -100 340 -20 { lab=out}
N -0 -100 340 -100 { lab=out}
N -0 -20 50 -20 { lab=out}
N 20 -40 50 -40 { lab=GND}
N -40 -40 -40 90 { lab=GND}
N 0 -100 -0 -20 { lab=out}
N -40 -40 20 -40 { lab=GND}
N 0 0 -0 90 { lab=GND}
N 350 -20 410 -20 { lab=out}
N 580 -20 690 -20 { lab=#net1}
N 260 90 620 90 { lab=GND}
N 620 0 620 90 { lab=GND}
N 580 -0 620 0 { lab=GND}
N 380 -0 410 0 { lab=GND}
N 380 -0 380 90 { lab=GND}
N 380 -40 410 -40 { lab=GND}
N 380 -40 380 -0 { lab=GND}
N 580 -40 630 -40 { lab=VDD}
N 620 90 690 90 { lab=GND}
N 690 70 690 90 { lab=GND}
N 690 -20 690 10 { lab=#net1}
C {devices/gnd.sym} 80 110 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 690 40 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -170 -60 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 320 -20 0 0 {name=l3 sig_type=std_logic lab=out}
C {devices/code.sym} 160 -380 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt_mm
.include \\\\$::SKYWATER_STDCELLS\\\\/sky130_fd_sc_hd.spice

"
spice_ignore=false}
C {devices/code_shown.sym} 410 -450 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
.option seed=random
let mc_runs=100
let run=1
dowhile run <= mc_runs
op
** plot in out
wrdata ~/open-puf/sims/brpuf_mm/brpuf_mm\{$&run\}.txt v(out)
reset
let run = run + 1
end

save all
.endc
"}
C {devices/vsource.sym} -170 10 0 0 {name=V3 value=1.8}
C {design/singlestage.sym} 200 -20 0 0 {name=x1}
C {design/singlestage.sym} 560 -20 0 0 {name=x2}
C {devices/lab_pin.sym} 620 -40 0 1 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 -40 0 1 {name=l4 sig_type=std_logic lab=VDD}
