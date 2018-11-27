module alu(clk,data_1,data_2,alu_cntrl,alu_out,zero);
    input[3:0]alu_cntrl;
    input clk;
    input[31:0]data_1, data_2;
    output reg[31:0] alu_out;
    output reg zero;

    always@(*)
    begin
        zero = 0;
        case(alu_cntrl)
            4'b0000: alu_out = data_1 & data_2;
            4'b0001: alu_out = data_1 | data_2;
            4'b0010: alu_out = data_1 + data_2;
            4'b0011: alu_out = data_1 - data_2;
            4'b0100: alu_out = data_1 * data_2;
        endcase
        if(alu_cntrl == 0100)
        begin
         $display("alu out: %d",alu_out);
        end
        if(alu_out == 0)
            zero = 1;
    end
endmodule