module alu_control_unit(clk,func,alu_op,alu_control);

input clk;
input[5:0] func;
input[1:0] alu_op;
output[3:0] alu_control;

// wire[3:0] alu_control;
reg[3:0] alu_control;

always @(alu_op,posedge clk)
begin
  case(alu_op)
    2'b00 : 
        alu_control = 4'b0010;
    2'b01 : 
        alu_control = 4'b0011;
    2'b10 :
        begin
        if(func == 6'b100000)
        begin
            alu_control = 4'b0010;
        end
        else if(func == 6'b100100)
        begin
           alu_control = 4'b0000;
        end
        else if(func == 6'b100101)
        begin
            alu_control = 4'b0001;
        end 
        end
  endcase
//   alu_control = _control;
end

endmodule