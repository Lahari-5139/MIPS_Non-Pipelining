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

  clk = 1;
  reset = 1;

  #80
  reset = 0;

  #2000
  $finish;
end

always
    #10 clk = ~clk;

endmodule
