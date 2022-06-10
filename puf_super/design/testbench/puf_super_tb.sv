`define CLK_PERIOD 10
`define ASSIGNMENT_DELAY 1
`define FINISH_TIME 2000000
`define NUM_TEST_VECTORS 100

module puf_super_tb;
  
  localparam ADDR_WIDTH = $clog2(`NUM_TEST_VECTORS);
 
  reg clk;
  reg reset;
  reg [1:0] length;
  reg out;
  reg si;
  reg rstn;
  reg so;
  reg [1:0] puf_sel;
  supply0 vssd1;
  supply1 vccd1;


  reg [16 + 16 + 16 - 1 : 0] test_vectors [`NUM_TEST_VECTORS - 1 : 0];

  always #(`CLK_PERIOD/2) clk = ~clk;
  always #(`CLK_PERIOD/2) reset = ~reset;
  
  puf_super puf_super_inst
  (
    .reset(reset),
    .clk(clk),
    .si(si),
    .rstn(rstn),
    .puf_sel(puf_sel),
    .length(length),
    .out(out),
    .so(so)
    `ifdef USE_POWER_PINS
    ,
    .vccd1(vccd1),	// User area 1 1.8V supply
    .vssd1(vssd1),	// User area 1 digital ground
    `endif
  );

  initial begin
    $readmemh("inputs/test_vectors.txt", test_vectors);
    clk <= 0;
    rstn <= 0;
    si <= 0;
    puf_sel <= 0;
    reset <= 1;
    length <= 1;
    #(`CLK_PERIOD);
    rstn <= 1;
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    length <= 1;

    @(posedge clk);
    @(posedge clk);
    length <= 2;

    @(posedge clk);
    @(posedge clk);
    length <= 3;

    @(posedge clk);
    @(posedge clk);
    length <= 4;

    @(posedge clk);
    @(posedge clk);
    length <= 0;


    @(posedge clk);
    @(posedge clk);
    puf_sel <= 1;

    @(posedge clk);
    @(posedge clk);
    puf_sel <= 2;

    @(posedge clk);
    @(posedge clk);
    puf_sel <= 3;

    @(posedge clk);
    @(posedge clk);
    puf_sel <= 0;

    @(posedge clk);
    @(posedge clk);
    puf_sel <= 1;


  end


  initial begin
    $dumpfile("run.vcd");
    $dumpvars(0, puf_super_tb);
    #(`FINISH_TIME);
    $finish(2);
  end

  `ifdef GL
  initial begin
    $sdf_annotate("inputs/design.sdf", puf_super_inst);
  end
  `endif

endmodule 
