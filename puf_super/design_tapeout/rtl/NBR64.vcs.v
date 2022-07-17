//-----------------------------------------------------------------------------
// BR64 - Bistable Ring PUF 64-bit 
//-----------------------------------------------------------------------------
// dump-vcd: False
// verilator-xinit: zeros
module NBR64 
(
  input wire RESET,
  input wire [63:0] C,
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

  initial begin
    int1 <= 0;
  end

  always @ (posedge RESET) begin
    int1 <= ~int1;
  end

  assign OUT = int1;
  
endmodule
