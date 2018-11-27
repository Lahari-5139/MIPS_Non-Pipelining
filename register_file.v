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
// reg[15:0] write_data;
// reg[15:0] read_data1;
// reg[15:0] read_data2;

// reg[31:0] s0;
// reg[31:0] s1;
// reg[31:0] s2;
// reg[31:0] s3;
// reg[31:0] s4;
// reg[31:0] s5;
// reg[31:0] s6;
// reg[31:0] s7;

// reg[31:0] t0;
// reg[31:0] t1;
// reg[31:0] t2;
// reg[31:0] t3;
// reg[31:0] t4;
// reg[31:0] t5;
// reg[31:0] t6;
// reg[31:0] t7;

// reg[31:0] z0;
// reg[31:0] z1;
// reg[31:0] z2;
// reg[31:0] z3;
// reg[31:0] z4;
// reg[31:0] z5;
// reg[31:0] z6;
// reg[31:0] z7;

reg[31:0] all_registers[0:128]; //32 registers each of 32 bit(i.e 32 32bit regs)

//loop for initialising the all the registers
integer i;
initial 
begin  
  for(i = 0 ;i < 128 ;i = i + 1) 
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

//$display("%d %d",all_registers[0],all_registers[1]);

always @(*)
begin
// $display("reg 0 %d",all_registers[0]);
$display("\n");
$display("reg 1 %d",all_registers[1]);
$display("reg 2 %d",all_registers[2]);
$display("reg 3 %d",all_registers[3]);
$display("reg 4 %d",all_registers[4]);
$display("reg 5 %d",all_registers[5]);
$display("reg 6 %d",all_registers[6]);
$display("reg 7 %d",all_registers[7]);
$display("reg 8 %d",all_registers[8]);
// $display("reg 9 %d",all_registers[9]);
// $display("reg 10 %d",all_registers[10]);
// $display("reg 11 %d",all_registers[11]);
// $display("reg 12 %d",all_registers[12]);
// $display("reg 13 %d",all_registers[13]);
// $display("reg 14 %d",all_registers[14]);
// $display("reg 15 %d",all_registers[15]);
// $display("reg 16 %d",all_registers[16]);
// $display("reg 17 %d",all_registers[17]);

$display("\n");
$display("reg 20 %d",all_registers[20]);
$display("reg 21 %d",all_registers[21]);
$display("reg 22 %d",all_registers[22]);
$display("reg 23 %d",all_registers[23]);

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
