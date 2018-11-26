/*MAIN MODULE*/
module mips(clk,reset,pc_nxt,result);

input clk;
input reset;

output[31:0] result;
output[31:0] pc_nxt;

reg[31:0] result;
reg[31:0] pc;
reg[31:0] extended;
reg[31:0] adder1;
reg[31:0] adder2;
reg sel;
reg[31:0] pc_nxt;


/*PROGRAM COUNTER*/
always @(posedge clk)
begin
    if(reset)
    begin
        pc_nxt = 31'd0;
    end
    else
    begin
        adder1 = pc+1;
        extended = extended << 2;
        adder2 = adder1+extended;
        sel = branch & zero;
        pc = sel ? adder2 : adder1;
        pc_nxt <= pc;
    end
    pc = pc_nxt;
end




/*INSTRUCTION MEMORY*/
wire[31:0] instruction;
instruction_memory IM(clk,pc,instruction);
// always @(posedge clk)
// begin
// $display("iam the instruction:");
// $display("%d",instruction);
// end


/*CONTROL UNIT*/
//Wires required
wire reg_dst, memto_reg, jump, branch, mem_read, mem_write, alu_src, reg_write;
wire[1:0] alu_op;
//Module
control_unit Control(clk,instruction[31:26],reg_dst,memto_reg,alu_op,jump,branch,mem_read,mem_write,alu_src,reg_write);  


/*REGISTER FILE*/
//Wires required
wire[4:0] write_reg;
wire[31:0] write_data,read_data1,read_data2;
//Mux for destination register
assign write_reg = (reg_dst == 1) ? instruction[15:11]:instruction[20:16];  
//Module 
register_file Registers(clk,instruction[25:21],instruction[20:16],write_reg,write_data,reg_write,read_data1,read_data2);


/*ALU CONTROL*/
//Wires required
wire[3:0] alu_control;
//Module
alu_control_unit ALU_control(clk,instruction[5:0],alu_op,alu_control);


/*ALU*/
//Wires required
wire[31:0] data_2;
wire[31:0] alu_result;
wire zero;
//Sign extender
always @(posedge clk)
begin
    extended[31:0] <= {{8{instruction[15]}},instruction[15:0]};
end
//Mux for ALU input
assign data_2 = (alu_src == 1) ? extended:read_data2; 
//Module
alu ALU(clk,read_data1,data_2,alu_control,alu_result,zero);


/*DATA MEMORY*/
//Wires required
wire[31:0] read_data;
//Module
data_memory_unit Data_memory(clk,alu_result,read_data2,mem_write,mem_read,read_data);


//Mux for writing back to the register file
assign write_data = (memto_reg == 1) ? read_data:alu_result;


initial begin
assign result = alu_result;
end

endmodule



