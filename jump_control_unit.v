module jump_control(clk,alu_op,func,jumpcontrol);

input clk;
input[1:0] alu_op;
input[3:0] func;

output jumpcontrol;

if({alu_op,func}==6'b001000)
begin
  assign jumpcontrol = 1;
end
else
begin
  assign jumpcontrol = 0;
end

endmodule
