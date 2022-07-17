.subckt BR32 VDD VSS RESET OUT
+ C[31] C[30] C[29] C[28] C[27] C[26] C[25] C[24] C[23] C[22] C[21] C[20] C[19] C[18] C[17] C[16] C[15] C[14] C[13] C[12] C[11] C[10] C[9] C[8] C[7] C[6] C[5] C[4] C[3] C[2] C[1] C[0]
*.iopin VDD
*.iopin VSS
*.ipin RESET
*.opin OUT
*.ipin
*+ C[31],C[30],C[29],C[28],C[27],C[26],C[25],C[24],C[23],C[22],C[21],C[20],C[19],C[18],C[17],C[16],C[15],C[14],C[13],C[12],C[11],C[10],C[9],C[8],C[7],C[6],C[5],C[4],C[3],C[2],C[1],C[0]
x47 net3 VSS VSS VDD VDD r2 sky130_fd_sc_hd__inv_16
x48 net3 VSS VSS VDD VDD r1 sky130_fd_sc_hd__inv_16
x50 net4 VSS VSS VDD VDD r4 sky130_fd_sc_hd__inv_16
x51 net4 VSS VSS VDD VDD r3 sky130_fd_sc_hd__inv_16
x9 net3 VSS VSS VDD VDD r1 sky130_fd_sc_hd__inv_16
x10 net2 VSS VSS VDD VDD net3 sky130_fd_sc_hd__inv_16
x11 net2 VSS VSS VDD VDD net4 sky130_fd_sc_hd__inv_16
x12 net3 VSS VSS VDD VDD r2 sky130_fd_sc_hd__inv_16
x29 net4 VSS VSS VDD VDD r3 sky130_fd_sc_hd__inv_16
x30 net4 VSS VSS VDD VDD r4 sky130_fd_sc_hd__inv_16
x31 RESET VSS VSS VDD VDD net1 sky130_fd_sc_hd__inv_2
x32 net1 VSS VSS VDD VDD net2 sky130_fd_sc_hd__inv_8
x41[6] r1 VDD VSS int_out[6] int_out[5] buf_out[6] C[6] singlestage
x41[5] r1 VDD VSS int_out[5] int_out[4] buf_out[5] C[5] singlestage
x41[4] r1 VDD VSS int_out[4] int_out[3] buf_out[4] C[4] singlestage
x41[3] r1 VDD VSS int_out[3] int_out[2] buf_out[3] C[3] singlestage
x41[2] r1 VDD VSS int_out[2] int_out[1] buf_out[2] C[2] singlestage
x41[1] r1 VDD VSS int_out[1] int_out[0] buf_out[1] C[1] singlestage
x41[0] r1 VDD VSS int_out[0] int_out[31] buf_out[0] C[0] singlestage
x1[7] r4 VDD VSS int_out[14] int_out[13] buf_out[14] C[14] singlestage
x1[6] r4 VDD VSS int_out[13] int_out[12] buf_out[13] C[13] singlestage
x1[5] r4 VDD VSS int_out[12] int_out[11] buf_out[12] C[12] singlestage
x1[4] r4 VDD VSS int_out[11] int_out[10] buf_out[11] C[11] singlestage
x1[3] r4 VDD VSS int_out[10] int_out[9] buf_out[10] C[10] singlestage
x1[2] r4 VDD VSS int_out[9] int_out[8] buf_out[9] C[9] singlestage
x1[1] r4 VDD VSS int_out[8] int_out[7] buf_out[8] C[8] singlestage
x1[0] r4 VDD VSS int_out[7] int_out[6] buf_out[7] C[7] singlestage
x2[8] r3 VDD VSS int_out[23] int_out[22] buf_out[23] C[23] singlestage
x2[7] r3 VDD VSS int_out[22] int_out[21] buf_out[22] C[22] singlestage
x2[6] r3 VDD VSS int_out[21] int_out[20] buf_out[21] C[21] singlestage
x2[5] r3 VDD VSS int_out[20] int_out[19] buf_out[20] C[20] singlestage
x2[4] r3 VDD VSS int_out[19] int_out[18] buf_out[19] C[19] singlestage
x2[3] r3 VDD VSS int_out[18] int_out[17] buf_out[18] C[18] singlestage
x2[2] r3 VDD VSS int_out[17] int_out[16] buf_out[17] C[17] singlestage
x2[1] r3 VDD VSS int_out[16] int_out[15] buf_out[16] C[16] singlestage
x2[0] r3 VDD VSS int_out[15] int_out[14] buf_out[15] C[15] singlestage
x3[7] r2 VDD VSS int_out[31] int_out[30] OUT C[31] singlestage
x3[6] r2 VDD VSS int_out[30] int_out[29] buf_out[30] C[30] singlestage
x3[5] r2 VDD VSS int_out[29] int_out[28] buf_out[29] C[29] singlestage
x3[4] r2 VDD VSS int_out[28] int_out[27] buf_out[28] C[28] singlestage
x3[3] r2 VDD VSS int_out[27] int_out[26] buf_out[27] C[27] singlestage
x3[2] r2 VDD VSS int_out[26] int_out[25] buf_out[26] C[26] singlestage
x3[1] r2 VDD VSS int_out[25] int_out[24] buf_out[25] C[25] singlestage
x3[0] r2 VDD VSS int_out[24] int_out[23] buf_out[24] C[24] singlestage
.ends

* expanding   symbol:  singlestage.sym # of pins=7
* sym_path: /home/users/lsammaro/open-puf/design/singlestage.sym
* sch_path: /home/users/lsammaro/open-puf/design/singlestage.sch
.subckt singlestage  RESET VDD VSS OUT IN buf_out C
*.ipin IN
*.ipin C
*.ipin RESET
*.iopin VSS
*.iopin VDD
*.opin OUT
*.opin buf_out
x1 RESET net1 VSS VSS VDD VDD net3 sky130_fd_sc_hd__nor2_1
x2 RESET net2 VSS VSS VDD VDD net4 sky130_fd_sc_hd__nor2_1
x3 net6 VSS net1 VDD IN net5 net2 demux2-1
x4 net6 VSS net3 VDD OUT net5 net4 mux2-1
x5 net5 VSS VSS VDD VDD net6 sky130_fd_sc_hd__inv_1
XM1 net1 net6 VDD VDD sky130_fd_pr__pfet_01v8_hvt L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
XM2 net2 net5 VDD VDD sky130_fd_pr__pfet_01v8_hvt L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
x6 C VSS VSS VDD VDD net5 sky130_fd_sc_hd__inv_1
x7 OUT VSS VSS VDD VDD buf_out sky130_fd_sc_hd__buf_1
.ends


* expanding   symbol:  demux2-1.sym # of pins=7
* sym_path: /home/users/lsammaro/open-puf/design/demux2-1.sym
* sch_path: /home/users/lsammaro/open-puf/design/demux2-1.sch
.subckt demux2-1  S VSS OUT1 VDD IN Sbar OUT2
*.ipin Sbar
*.ipin S
*.iopin VSS
*.iopin VDD
*.opin OUT1
*.opin OUT2
*.ipin IN
XM2 IN S OUT1 VSS sky130_fd_pr__nfet_01v8 L=0.15 W=0.65 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
XM1 IN Sbar OUT2 VSS sky130_fd_pr__nfet_01v8 L=0.15 W=0.65 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
XM4 IN Sbar OUT1 VDD sky130_fd_pr__pfet_01v8_hvt L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
XM5 IN S OUT2 VDD sky130_fd_pr__pfet_01v8_hvt L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
.ends


* expanding   symbol:  mux2-1.sym # of pins=7
* sym_path: /home/users/lsammaro/open-puf/design/mux2-1.sym
* sch_path: /home/users/lsammaro/open-puf/design/mux2-1.sch
.subckt mux2-1  S VSS IN1 VDD OUT Sbar IN2
*.ipin IN1
*.ipin IN2
*.ipin Sbar
*.ipin S
*.opin OUT
*.iopin VSS
*.iopin VDD
XM2 IN1 S OUT VSS sky130_fd_pr__nfet_01v8 L=0.15 W=0.65 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
XM1 IN2 Sbar OUT VSS sky130_fd_pr__nfet_01v8 L=0.15 W=0.65 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
XM4 IN1 Sbar OUT VDD sky130_fd_pr__pfet_01v8_hvt L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
XM5 IN2 S OUT VDD sky130_fd_pr__pfet_01v8_hvt L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
.ends

** flattened .save nodes

