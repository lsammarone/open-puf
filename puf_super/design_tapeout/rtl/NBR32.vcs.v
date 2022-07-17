//-----------------------------------------------------------------------------
// BR32 - Bistable Ring PUF 32-bit 
//-----------------------------------------------------------------------------
// dump-vcd: False
// verilator-xinit: zeros
module NBR32 
(
  input wire RESET,
  input wire [31:0] C,
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
  assign OUT = RESET;
  
endmodule
