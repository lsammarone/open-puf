.subckt BR64 VDD VSS OUT
+ C[63] C[62] C[61] C[60] C[59] C[58] C[57] C[56] C[55] C[54] C[53] C[52] C[51] C[50] C[49] C[48] C[47] C[46] C[45] C[44] C[43] C[42] C[41] C[40] C[39] C[38] C[37] C[36] C[35] C[34] C[33] C[32] C[31] C[30] C[29] C[28] C[27] C[26] C[25] C[24] C[23] C[22] C[21] C[20] C[19] C[18] C[17] C[16] C[15] C[14] C[13] C[12] C[11] C[10] C[9] C[8] C[7] C[6] C[5] C[4] C[3] C[2] C[1] C[0] RESET
*.iopin VDD
*.iopin VSS
*.opin OUT
*.ipin
*+ C[63],C[62],C[61],C[60],C[59],C[58],C[57],C[56],C[55],C[54],C[53],C[52],C[51],C[50],C[49],C[48],C[47],C[46],C[45],C[44],C[43],C[42],C[41],C[40],C[39],C[38],C[37],C[36],C[35],C[34],C[33],C[32],C[31],C[30],C[29],C[28],C[27],C[26],C[25],C[24],C[23],C[22],C[21],C[20],C[19],C[18],C[17],C[16],C[15],C[14],C[13],C[12],C[11],C[10],C[9],C[8],C[7],C[6],C[5],C[4],C[3],C[2],C[1],C[0]
*.ipin RESET
x43 RESET VSS VSS VDD VDD net4 sky130_fd_sc_hd__inv_4
x47 net1 VSS VSS VDD VDD r6 sky130_fd_sc_hd__inv_16
x48 net1 VSS VSS VDD VDD r5 sky130_fd_sc_hd__inv_16
x4 net1 VSS VSS VDD VDD r5 sky130_fd_sc_hd__inv_16
x5 net1 VSS VSS VDD VDD r6 sky130_fd_sc_hd__inv_16
x6 net1 VSS VSS VDD VDD r4 sky130_fd_sc_hd__inv_16
x7 net1 VSS VSS VDD VDD r3 sky130_fd_sc_hd__inv_16
x8 net1 VSS VSS VDD VDD r3 sky130_fd_sc_hd__inv_16
x10 net1 VSS VSS VDD VDD r4 sky130_fd_sc_hd__inv_16
x11 net2 VSS VSS VDD VDD net1 sky130_fd_sc_hd__inv_16
x12 net2 VSS VSS VDD VDD net1 sky130_fd_sc_hd__inv_16
x13 net3 VSS VSS VDD VDD r2 sky130_fd_sc_hd__inv_16
x14 net3 VSS VSS VDD VDD r1 sky130_fd_sc_hd__inv_16
x15 net3 VSS VSS VDD VDD r1 sky130_fd_sc_hd__inv_16
x16 net3 VSS VSS VDD VDD r2 sky130_fd_sc_hd__inv_16
x17 net3 VSS VSS VDD VDD r8 sky130_fd_sc_hd__inv_16
x18 net3 VSS VSS VDD VDD r7 sky130_fd_sc_hd__inv_16
x19 net3 VSS VSS VDD VDD r7 sky130_fd_sc_hd__inv_16
x20 net3 VSS VSS VDD VDD r8 sky130_fd_sc_hd__inv_16
x21 net2 VSS VSS VDD VDD net3 sky130_fd_sc_hd__inv_16
x22 net2 VSS VSS VDD VDD net3 sky130_fd_sc_hd__inv_16
x23 net4 VSS VSS VDD VDD net2 sky130_fd_sc_hd__inv_16
x3[7] r1 VDD VSS out[8] out[7] net5[7] C[7] singlestage
x3[6] r1 VDD VSS out[7] out[6] net5[6] C[6] singlestage
x3[5] r1 VDD VSS out[6] out[5] net5[5] C[5] singlestage
x3[4] r1 VDD VSS out[5] out[4] net5[4] C[4] singlestage
x3[3] r1 VDD VSS out[4] out[3] net5[3] C[3] singlestage
x3[2] r1 VDD VSS out[3] out[2] net5[2] C[2] singlestage
x3[1] r1 VDD VSS out[2] out[1] net5[1] C[1] singlestage
x3[0] r1 VDD VSS out[1] out[0] net5[0] C[0] singlestage
x1[15] r2 VDD VSS out[16] out[15] net6[7] C[15] singlestage
x1[14] r2 VDD VSS out[15] out[14] net6[6] C[14] singlestage
x1[13] r2 VDD VSS out[14] out[13] net6[5] C[13] singlestage
x1[12] r2 VDD VSS out[13] out[12] net6[4] C[12] singlestage
x1[11] r2 VDD VSS out[12] out[11] net6[3] C[11] singlestage
x1[10] r2 VDD VSS out[11] out[10] net6[2] C[10] singlestage
x1[9] r2 VDD VSS out[10] out[9] net6[1] C[9] singlestage
x1[8] r2 VDD VSS out[9] out[8] net6[0] C[8] singlestage
x2[23] r3 VDD VSS out[24] out[23] net7[7] C[23] singlestage
x2[22] r3 VDD VSS out[23] out[22] net7[6] C[22] singlestage
x2[21] r3 VDD VSS out[22] out[21] net7[5] C[21] singlestage
x2[20] r3 VDD VSS out[21] out[20] net7[4] C[20] singlestage
x2[19] r3 VDD VSS out[20] out[19] net7[3] C[19] singlestage
x2[18] r3 VDD VSS out[19] out[18] net7[2] C[18] singlestage
x2[17] r3 VDD VSS out[18] out[17] net7[1] C[17] singlestage
x2[16] r3 VDD VSS out[17] out[16] net7[0] C[16] singlestage
x4[31] r4 VDD VSS out[32] out[31] net8[7] C[31] singlestage
x4[30] r4 VDD VSS out[31] out[30] net8[6] C[30] singlestage
x4[29] r4 VDD VSS out[30] out[29] net8[5] C[29] singlestage
x4[28] r4 VDD VSS out[29] out[28] net8[4] C[28] singlestage
x4[27] r4 VDD VSS out[28] out[27] net8[3] C[27] singlestage
x4[26] r4 VDD VSS out[27] out[26] net8[2] C[26] singlestage
x4[25] r4 VDD VSS out[26] out[25] net8[1] C[25] singlestage
x4[24] r4 VDD VSS out[25] out[24] net8[0] C[24] singlestage
x5[63] r8 VDD VSS out[0] out[63] OUT C[63] singlestage
x5[62] r8 VDD VSS out[63] out[62] buf_out[6] C[62] singlestage
x5[61] r8 VDD VSS out[62] out[61] buf_out[5] C[61] singlestage
x5[60] r8 VDD VSS out[61] out[60] buf_out[4] C[60] singlestage
x5[59] r8 VDD VSS out[60] out[59] buf_out[3] C[59] singlestage
x5[58] r8 VDD VSS out[59] out[58] buf_out[2] C[58] singlestage
x5[57] r8 VDD VSS out[58] out[57] buf_out[1] C[57] singlestage
x5[56] r8 VDD VSS out[57] out[56] buf_out[0] C[56] singlestage
x6[55] r7 VDD VSS out[56] out[55] net9[7] C[55] singlestage
x6[54] r7 VDD VSS out[55] out[54] net9[6] C[54] singlestage
x6[53] r7 VDD VSS out[54] out[53] net9[5] C[53] singlestage
x6[52] r7 VDD VSS out[53] out[52] net9[4] C[52] singlestage
x6[51] r7 VDD VSS out[52] out[51] net9[3] C[51] singlestage
x6[50] r7 VDD VSS out[51] out[50] net9[2] C[50] singlestage
x6[49] r7 VDD VSS out[50] out[49] net9[1] C[49] singlestage
x6[48] r7 VDD VSS out[49] out[48] net9[0] C[48] singlestage
x7[47] r6 VDD VSS out[48] out[47] net10[7] C[47] singlestage
x7[46] r6 VDD VSS out[47] out[46] net10[6] C[46] singlestage
x7[45] r6 VDD VSS out[46] out[45] net10[5] C[45] singlestage
x7[44] r6 VDD VSS out[45] out[44] net10[4] C[44] singlestage
x7[43] r6 VDD VSS out[44] out[43] net10[3] C[43] singlestage
x7[42] r6 VDD VSS out[43] out[42] net10[2] C[42] singlestage
x7[41] r6 VDD VSS out[42] out[41] net10[1] C[41] singlestage
x7[40] r6 VDD VSS out[41] out[40] net10[0] C[40] singlestage
x8[39] r5 VDD VSS out[40] out[39] net11[7] C[39] singlestage
x8[38] r5 VDD VSS out[39] out[38] net11[6] C[38] singlestage
x8[37] r5 VDD VSS out[38] out[37] net11[5] C[37] singlestage
x8[36] r5 VDD VSS out[37] out[36] net11[4] C[36] singlestage
x8[35] r5 VDD VSS out[36] out[35] net11[3] C[35] singlestage
x8[34] r5 VDD VSS out[35] out[34] net11[2] C[34] singlestage
x8[33] r5 VDD VSS out[34] out[33] net11[1] C[33] singlestage
x8[32] r5 VDD VSS out[33] out[32] net11[0] C[32] singlestage
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

