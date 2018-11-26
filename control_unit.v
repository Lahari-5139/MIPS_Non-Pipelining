module control_unit(clk,opcode,reg_dst,memto_reg,alu_op,jump,branch,mem_read,mem_write,alu_src,reg_write);  
 
input clk;
input [5:0] opcode;

output reg[1:0] alu_op;
output reg memto_reg,reg_dst,jump, branch, mem_read, mem_write, alu_src, reg_write;

always @(posedge clk)  
begin 

//Default control signals
reg_dst = 1'b0;  
memto_reg = 1'b0;  
alu_op = 2'b00;  
jump = 1'b0;  
branch = 1'b0;  
mem_read = 1'b0;  
mem_write = 1'b0;  
alu_src = 1'b0;  
reg_write = 1'b0;    

    case(opcode)   
    6'b000000:  begin  //control lines for add/mult instruction  
                reg_dst = 1'b1;  
                memto_reg = 1'b0;  
                alu_op = 2'b00;  
                jump = 1'b0;  
                branch = 1'b0;  
                mem_read = 1'b0;  
                mem_write = 1'b0;  
                alu_src = 1'b0;  
                reg_write = 1'b1;  
                end  
        
    6'b000010:  begin //control lines for j instruction  
                reg_dst = 1'b0;  
                memto_reg = 1'b0;  
                alu_op = 2'b00;  
                jump = 1'b1;  
                branch = 1'b0;  
                mem_read = 1'b0;  
                mem_write = 1'b0;  
                alu_src = 1'b0;  
                reg_write = 1'b0;   
                end
    6'b100011:  begin //control lines for lw instruction 
                reg_dst = 1'b0;  
                memto_reg = 1'b1;  
                alu_op = 2'b11;  
                jump = 1'b0;  
                branch = 1'b0;  
                mem_read = 1'b1;  
                mem_write = 1'b0;  
                alu_src = 1'b1;  
                reg_write = 1'b1;  
                end  
    6'b101011:  begin //control lines for sw instruction 
                reg_dst = 1'b0;  
                memto_reg = 1'b0;  
                alu_op = 2'b11;  
                jump = 1'b0;  
                branch = 1'b0;  
                mem_read = 1'b0;  
                mem_write = 1'b1;  
                alu_src = 1'b1;  
                reg_write = 1'b0;
                end  
    6'b000100:  begin //control lines for beq instruction  
                reg_dst = 1'b0;  
                memto_reg = 1'b0;  
                alu_op = 2'b01;  
                jump = 1'b0;  
                branch = 1'b1;  
                mem_read = 1'b0;  
                mem_write = 1'b0;  
                alu_src = 1'b0;  
                reg_write = 1'b0;   
                end
    endcase  
end    
 
endmodule  

