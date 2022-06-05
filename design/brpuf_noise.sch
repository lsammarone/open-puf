v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -380 -160 -380 -20 { lab=VDD}
N -240 -160 80 -160 { lab=VDD}
N -380 40 -380 90 { lab=GND}
N -240 90 80 90 { lab=GND}
N -380 90 -240 90 { lab=GND}
N -380 -160 -240 -160 { lab=VDD}
N -260 50 -260 90 { lab=GND}
N 170 90 170 110 { lab=GND}
N 90 0 140 0 { lab=GND}
N 170 90 350 90 { lab=GND}
N 350 0 350 90 { lab=GND}
N 310 0 350 0 { lab=GND}
N 310 -20 350 -20 { lab=out}
N 310 -40 350 -40 { lab=VDD}
N 350 -20 440 -20 { lab=out}
N 90 -20 140 -20 { lab=in}
N 110 -40 140 -40 { lab=GND}
N 50 -40 50 90 { lab=GND}
N 50 -40 110 -40 { lab=GND}
N 90 0 90 90 { lab=GND}
N 440 -20 500 -20 { lab=out}
N 670 -20 780 -20 { lab=#net1}
N 350 90 710 90 { lab=GND}
N 710 0 710 90 { lab=GND}
N 670 0 710 0 { lab=GND}
N 470 0 500 0 { lab=GND}
N 470 0 470 90 { lab=GND}
N 470 -40 500 -40 { lab=GND}
N 470 -40 470 0 { lab=GND}
N 670 -40 720 -40 { lab=VDD}
N 710 90 780 90 { lab=GND}
N 780 70 780 90 { lab=GND}
N 780 -20 780 10 { lab=#net1}
N 80 90 170 90 { lab=GND}
N -260 -20 90 -20 { lab=in}
N -260 -20 -260 -10 { lab=in}
N 415 70 415 90 { lab=GND}
N 415 -20 415 10 { lab=out}
C {devices/lab_pin.sym} -10 -160 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/code.sym} 310 -510 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt_mm
.include \\\\$::SKYWATER_STDCELLS\\\\/sky130_fd_sc_hd.spice

"
spice_ignore=false}
C {devices/code_shown.sym} 500 -530 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
op
print v(in), v(out)
noise v(out) V4 dec 10 100 1e15
setplot noise2
*plot v(onoise_spectrum)
print v(onoise_total)
*print v(inoise_total)
write noise.raw
** plot in out

save all
.endc
"}
C {devices/lab_pin.sym} -70 -20 0 0 {name=l4 sig_type=std_logic lab=in}
C {devices/vsource.sym} -380 10 0 0 {name=V3 value=1.8}
C {devices/vsource.sym} -260 20 0 0 {name=V4 value="DC=0.77 AC=1"
}
C {devices/gnd.sym} 170 110 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 780 40 0 0 {name=C2
m=1
value=2f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 385 -20 0 0 {name=l7 sig_type=std_logic lab=out}
C {design/singlestage.sym} 290 -20 0 0 {name=x1}
C {design/singlestage.sym} 650 -20 0 0 {name=x4}
C {devices/lab_pin.sym} 710 -40 0 1 {name=l8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 350 -40 0 1 {name=l9 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 415 40 0 0 {name=C1
m=1
value=2f
footprint=1206
device="ceramic capacitor"}
