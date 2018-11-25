module main_tb;

reg clk;
reg reset;

mips uut
(
    .clk(clk),
    .reset(reset)
);

initial
begin
  $dumpfile("out.vcd");
  $dumpvars(0,main_tb);
  
  clk =0;
  #5;
  reset = 1;
  clk= 1;
  #5;

  reset = 0;
  clk = 0;
  #5;
  clk = 1;
  #5;
  
end
