module register_file(clk,read_reg1,read_reg2,write_reg,write_data,reg_write,read_data1,read_data2);

input clk;
input[4:0] read_reg1;
input[4:0] read_reg2;
input[4:0] write_reg;
input[31:0] write_data;
input reg_write;

output[31:0] read_data1;
output[31:0] read_data2;

reg[31:0] read_data1;
reg[31:0] read_data2;

wire[4:0] read_reg1;
wire[4:0] read_reg2;
wire[4:0] write_reg;

//32 registers of 32-bits each
reg[31:0] all_registers[0:31];



//Initialising all the register values to 0
integer i;
initial 
begin  
  for(i = 0 ;i < 32 ;i = i + 1) 
      all_registers[i] <= 32'd0;  
end 



always @(*)
begin
  begin
  read_data1 = all_registers[read_reg1];
  read_data2 = all_registers[read_reg2];
  end
  if (reg_write == 1) 
  begin
  all_registers[write_reg] = write_data;
  end
  
end



always @(*)
begin
/*Matrix A*/
$display("A");
$display("%d %d",all_registers[1],all_registers[2]);
$display("%d %d",all_registers[3],all_registers[4]);
/*$display("A00%d",all_registers[1]);
$display("A01%d",all_registers[2]);
$display("A10%d",all_registers[3]);
$display("A11%d",all_registers[4]);
*/

/*Matrix B*/
$display("B");
$display("%d %d",all_registers[5],all_registers[6]);
$display("%d %d",all_registers[7],all_registers[8]);
/*$display("B00%d",all_registers[5]);
$display("B01%d",all_registers[6]);
$display("B10%d",all_registers[7]);
$display("B11%d",all_registers[8]);
*/

/*Matrix C = A * B*/
$display("C");
$display("%d %d",all_registers[20],all_registers[21]);
$display("%d %d",all_registers[22],all_registers[23]);
/*$display("C00%d",all_registers[20]);
$display("C01%d",all_registers[21]);
$display("C10%d",all_registers[22]);
$display("C11%d",all_registers[23]);
*/
$display("-----------------------------------");
end
 endmodule




// module register_decoder(clk,register, out);
//     input[4:0] register;
//     input clk;
//     output reg[31:0] out;
//     always@(posedge clk)
//     begin
//         case(register[2:0])
//             3'b000: out = 11;
//             3'b001: out = 23;
//             3'b010: out = 35;
//             3'b011: out = 9;
//             3'b100: out = 43;
//             3'b101: out = 2;
//             3'b110: out = 50;
//         endcase
//     end
// endmodule
