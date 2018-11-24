//Main module
module mips(clk, reset,result);

input clk;
input reset;

output result;

//Program Counter
reg[15:0] pc;
wire[15:0] pc_next;

always @(posedge clk or posedge reset)
begin
    if(reset)
        pc <= 16'd0;
    else
        pc <= pc_next;
end

wire[31:0] instruction;
instruction_memory IM(clk,pc,instruction);

wire 
control_unit Control(clk,instruction[31:26],reg_dst,memto_reg,alu_op,jump,branch,mem_read,mem_write,alu_src,reg_write,sign_or_zero);  





endmodule



