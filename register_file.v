module register_file(clk,read_reg1,read_reg2,write_reg,write_data,reg_write,read_data1,read_data2);

input clk;
input[4:0] read_reg1;
input[4:0] read_reg2;
input[4:0] write_reg;
input[15:0] write_data;
input reg_write;
output[15:0] read_data1;
output[15:0] read_data2;

wire[4:0] read_reg1;
wire[4:0] read_reg2;
wire[4:0] write_reg;
reg[15:0] write_data;
reg[15:0] read_data1;
reg[15:0] read_data2;

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

reg[31:0] all_registers[0:31]; //32 registers each of 32 bit(i.e 32 32bit regs)

//loop for initialising the all the registers
integer i;
initial 
begin  
  for(i = 0 ;i < 32 ;i = i + 1) 
        all_registers[i] <= 32'd0;  
end 

always @(posedge clk)
begin
  if (reg_write == 1) 
  begin
  all_registers[write_reg] <= write_data;
  end
  else
  begin
  read_data1 <= all_registers[read_reg1];
  read_data2 <= all_registers[read_reg2];
  end
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
