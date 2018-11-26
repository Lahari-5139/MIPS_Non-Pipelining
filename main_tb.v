module main_tb;

reg clk;
reg reset;
wire[31:0] result;
wire[31:0] pc_nxt;

mips uut
(
    .clk(clk),
    .reset(reset),
    .result(result),
    .pc_nxt(pc_nxt)
);

initial
begin
  $dumpfile("out.vcd");
  $dumpvars(0,main_tb);
  
  clk =0;
  #5;
  reset = 1;
  clk= 1;
//   $display("%d",result);
//   $display("%d",pc_nxt);
  #5;

  reset = 0;
  clk = 0;
  #5;
  clk = 1;
//   $display("%d",result);
//   $display("%d",pc_nxt);
  #5;
  
  reset = 0;
  clk = 0;
  #5;
  clk = 1;
//   $display("%d",result);
//   $display("%d",pc_nxt);
  #5;

  reset = 0;
  clk = 0;
  #5;
  clk = 1;
//   $display("%d",result);
//   $display("%d",pc_nxt);
  #5;

  reset = 0;
  clk = 0;
  #5;
  clk = 1;
//   $display("%d",result);
//   $display("%d",pc_nxt);
  #5;

  reset = 0;
  clk = 0;
  #5;
  clk = 1;
//   $display("%d",result);
//   $display("%d",pc_nxt);
  #5;
end

endmodule
