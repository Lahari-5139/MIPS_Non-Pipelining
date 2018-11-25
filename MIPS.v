/*MAIN MODULE*/
module mips(clk, reset,result);

input clk;
input reset;

output result;

/*PROGRAM COUNTER*/
reg[15:0] pc;
wire[15:0] pc_next;

always @(posedge clk or posedge reset)
begin
    if(reset)
        pc <= 16'd0;
    else
        pc <= pc_next;
end

/*INSTRUCTION MEMORY*/
wire[31:0] instruction;
instruction_memory IM(clk,pc,instruction);


/*CONTROL UNIT*/
//Wires required
wire reg_dst, memto_reg, jump, branch, mem_read, mem_write, alu_src, reg_write, sign_or_zero;
wire[1:0] alu_op;
//Module
control_unit Control(clk,instruction[31:26],reg_dst,memto_reg,alu_op,jump,branch,mem_read,mem_write,alu_src,reg_write,sign_or_zero);  


/*REGISTER FILE*/
//Wires required
wire[4:0] write_reg;
wire[15:0] write_data,read_data1,read_data2;
wire reg_write;
//Mux for destination register
assign write_reg = (reg_dst == 1) ? instruction[15:11]:instruction[20:16];  
//Module 
register_file Registers(clk,instruction[25:21],instruction[20:16],write_reg,write_data,reg_write,read_data1,read_data2);


/*ALU CONTROL*/
//Wires required
wire[1:0] alu_op;
wire[3:0] alu_control;
//Module
alu_control_unit ALU_control(clk,instruction[5:0],alu_op,alu_control);


/*ALU*/
//Wires required
wire[31:0] data_2,extended;
wire[31:0] alu_result;
wire zero;
//Sign extender
assign extended[31:0] = {{8{instruction[15]}},instruction[15:0]};
//Mux for ALU input
assign data_2 = (alu_src == 1) ? extended:read_data2; 
//Module
alu ALU(clk,read_data1,data_2,alu_control,alu_result,zero);


/*DATA MEMORY*/
//Wires required
wire[15:0] read_data;
//Module
data_memory_unit Data_memory(clk,alu_result,read_data2,mem_write,mem_read,read_data);

//Mux for writing back to the register file
assign write_data = (memto_reg == 1) ? read_data:alu_result;

endmodule



