module jump_control(clk,alu_op,func,jumpcontrol);

input clk;
input[1:0] alu_op;
input[3:0] func;

output jumpcontrol;

assign jumpcontrol = ({alu_op,func} == 6'b001000) ? 1'b1 : 1'b0;

endmodule
