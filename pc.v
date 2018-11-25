module pc(clk,reset,extended,branch,zero_flag,pc,pc_nxt);

input clk;
input reset;
input[31:0]extended;
input branch,zero_flag;
input[31:0] pc;
output[31:0] pc_nxt;

wire[31:0] adder1;
wire[31:0] adder2;
wire[31:0] nxt;



always @(posedge clk)
begin
    if(reset)
        pc_nxt <= 32'd0;
    else
        adder1 = pc+1;
        extended = extended << 2;
        adder2 = adder1+extended;
        wire sel;
        sel = branch & zero_flag;
        pc = sel ? adder2 : adder1;
        pc_nxt <= pc;
        
end
endmodule

 
