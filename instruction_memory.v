module instruction_memory(clk,pc, instruction);

input clk;
input[31:0] pc;

output[31:0] instruction;
reg[31:0] instruction;

//256 registers of 32-bits each
reg[31:0] instr_memory[255:0]; 


//MIPS assembly program in binary format
initial 
begin
    instr_memory[0] <= 32'b10001100000000010000000000100000;
    instr_memory[1] <= 32'b10001100000000100000000000100000;
    instr_memory[2] <= 32'b10001100000000100000000000100000;
    //instr_memory[2] <= 
    // instr_memory[3] <= 
    // instr_memory[4] <= 
    // instr_memory[5] <= 
    // instr_memory[6] <= 
    // instr_memory[7] <= 
    // instr_memory[8] <= 
    // instr_memory[9] <= 
    // instr_memory[10] <= 
    // instr_memory[11] <= 
    // instr_memory[12] <= 
    // instr_memory[13] <= 
    // instr_memory[14] <= 
    // instr_memory[15] <= 
    // instr_memory[16] <= 
    // instr_memory[17] <= 
    // instr_memory[18] <= 
    // instr_memory[19] <= 
    // instr_memory[20] <= 
    // instr_memory[21] <= 
    // instr_memory[22] <= 
    // instr_memory[23] <= 
    // instr_memory[24] <= 
    // instr_memory[25] <= 
    // instr_memory[26] <= 
    // instr_memory[27] <= 
    // instr_memory[28] <= 
    // instr_memory[29] <= 
    // instr_memory[30] <= 
    // instr_memory[31] <= 
    // instr_memory[32] <= 
    // instr_memory[33] <= 
    // instr_memory[34] <= 
    // instr_memory[35] <= 
    // instr_memory[36] <= 
    // instr_memory[37] <= 
    // instr_memory[38] <= 
    // instr_memory[39] <= 
    // instr_memory[40] <= 
end

always @(posedge clk)
begin
    instruction = instr_memory[pc];
end

endmodule

