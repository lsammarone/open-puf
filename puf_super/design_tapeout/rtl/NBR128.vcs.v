//-----------------------------------------------------------------------------
// BR128 - Bistable Ring PUF 128-bit 
//-----------------------------------------------------------------------------
// dump-vcd: False
// verilator-xinit: zeros
module NBR128 
(
  input wire RESET,
  input wire [127:0] C,
  output wire OUT
  `ifdef USE_POWER_PINS
  ,
  inout VSS,
  inout VDD
  `endif
);
  supply1 VDD;
  supply0 VSS;
  // empty module
  // see lib file
  reg int1;
  reg int2;

  initial begin
    int1 <= 0;
    int2 <= 0;
  end

  always @ (posedge RESET) begin
    int1 <= ~int1;
  end

  always @ (posedge int1) begin
    int2 <= ~int2;
  end

  assign OUT = int2;
  
endmodule
