v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -380 -160 -380 -20 { lab=VDD}
N -380 40 -380 90 { lab=GND}
N -240 90 80 90 { lab=GND}
N -380 90 -240 90 { lab=GND}
N -380 -160 -240 -160 { lab=VDD}
N -260 50 -260 90 { lab=GND}
N 360 90 360 110 { lab=GND}
N 280 0 330 0 { lab=GND}
N 360 90 540 90 { lab=GND}
N 540 0 540 90 { lab=GND}
N 500 0 540 0 { lab=GND}
N 110 90 360 90 { lab=GND}
N 500 -20 540 -20 { lab=out}
N 500 -40 540 -40 { lab=VDD}
N 540 -20 630 -20 { lab=out}
N 280 -20 330 -20 { lab=in}
N 300 -40 330 -40 { lab=GND}
N 240 -40 240 90 { lab=GND}
N 240 -40 300 -40 { lab=GND}
N 280 0 280 90 { lab=GND}
N 630 -20 690 -20 { lab=out}
N 860 -20 970 -20 { lab=#net1}
N 540 90 900 90 { lab=GND}
N 900 0 900 90 { lab=GND}
N 860 0 900 0 { lab=GND}
N 660 0 690 0 { lab=GND}
N 660 0 660 90 { lab=GND}
N 660 -40 690 -40 { lab=GND}
N 660 -40 660 0 { lab=GND}
N 860 -40 910 -40 { lab=VDD}
N 900 90 970 90 { lab=GND}
N 970 70 970 90 { lab=GND}
N 970 -20 970 10 { lab=#net1}
N 80 90 110 90 { lab=GND}
N 170 -20 280 -20 { lab=in}
N 170 -40 210 -40 { lab=VDD}
N 170 0 200 0 { lab=GND}
N 200 0 200 90 { lab=GND}
N -40 -40 0 -40 { lab=GND}
N -40 -40 -40 90 { lab=GND}
N -20 0 0 0 { lab=GND}
N -20 0 -20 90 { lab=GND}
N -260 -20 0 -20 { lab=#net2}
N -260 -20 -260 -10 { lab=#net2}
C {devices/code.sym} -20 -370 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt_mm
.include \\\\$::SKYWATER_STDCELLS\\\\/sky130_fd_sc_hd.spice

"
spice_ignore=false}
C {devices/code_shown.sym} 210 -440 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
.option seed=random
let mc_runs=1000
let run=1
dowhile run <= mc_runs
tran 1p 3n
** plot in out
wrdata ~/open-puf/sims/brpuf_delay/brpuf_delay\{$&run\}.raw v(in) v(out)
*write brpuf_delay.raw
reset
let run = run + 1
end

save all
.endc
"}
C {devices/lab_pin.sym} 290 -20 0 0 {name=l4 sig_type=std_logic lab=in}
C {devices/vsource.sym} -380 10 0 0 {name=V3 value=1.8}
C {devices/vsource.sym} -260 20 0 0 {name=V4 value=PULSE"(1.8 0 50ps 10ps 10ps 2ns 4ns)"
}
C {devices/gnd.sym} 360 110 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 970 40 0 0 {name=C2
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 600 -20 0 0 {name=l7 sig_type=std_logic lab=out}
C {design/singlestage.sym} 480 -20 0 0 {name=x4}
C {design/singlestage.sym} 840 -20 0 0 {name=x5}
C {devices/lab_pin.sym} 900 -40 0 1 {name=l8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 540 -40 0 1 {name=l9 sig_type=std_logic lab=VDD}
C {design/singlestage.sym} 150 -20 0 0 {name=x1}
C {devices/lab_pin.sym} 180 -40 0 1 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -250 -160 0 1 {name=l3 sig_type=std_logic lab=VDD}
