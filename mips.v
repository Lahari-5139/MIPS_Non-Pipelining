module mips(clk, reset);

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

