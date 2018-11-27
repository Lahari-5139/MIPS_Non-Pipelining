module alu_control_unit(clk,func,alu_op,alu_control);

input clk;
input[5:0] func;
input[1:0] alu_op;
output[3:0] alu_control;

reg[3:0] alu_control;

always @(posedge clk)
begin
  case(alu_op)
    2'b00 : 
        //For LW and SW
        alu_control = 4'b0010; 
    2'b01 : 
        //For BEQ
        alu_control = 4'b0011; 
    2'b10 : // For R-type instructions
        begin
        if(func == 6'b100000) 
        begin
            //For ADD
            alu_control = 4'b0010;
        end
        else if(func == 6'b100001) 
        begin
            //For MULT
            alu_control = 4'b0100;
        end
        end
  endcase
end

endmodule
