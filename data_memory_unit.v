module data_memory_unit(clk,address,write_data,write_enable,read_enable,read_data);

input clk;
input[31:0] address;
input[31:0] write_data;
input write_enable, read_enable;

output[31:0] read_data;

  
reg[31:0] main_memory[511:0];  

wire[31:0] main_address = address[31:0];

//loop for initialising the main memory
// integer i;
initial 
begin  
  // for(i = 0 ;i < 512 ;i = i + 1) 
  //       main_memory[i] <= 32'd0;  
  //matrix A
main_memory[0] = 32'd1;
main_memory[1] = 32'd2;
main_memory[2] = 32'd3;
main_memory[3] = 32'd4;
main_memory[4] = 32'd5;
main_memory[5] = 32'd6;
main_memory[6] = 32'd7;
main_memory[7] = 32'd8;
main_memory[8] = 32'd3;

//matrix B
main_memory[9] = 32'd1;
main_memory[10] = 32'd2;
main_memory[11] = 32'd3;
main_memory[12] = 32'd1;
main_memory[13] = 32'd2;
main_memory[14] = 32'd3;
main_memory[15] = 32'd1;
main_memory[16] = 32'd2;
main_memory[17] = 32'd3;

//matrix C
main_memory[18] = 32'd0;
main_memory[19] = 32'd0;
main_memory[20] = 32'd0;
main_memory[21] = 32'd0;
main_memory[22] = 32'd0;
main_memory[23] = 32'd0;
main_memory[24] = 32'd0;
main_memory[25] = 32'd0;
main_memory[26] = 32'd0;

// main_memory[32] = 32'd32;
end  

always @(posedge clk)
begin
// $display("mem 18 %d",main_memory[18]);
// $display("mem 19 %d",main_memory[19]);
// $display("mem 20 %d",main_memory[20]);
// $display("mem 21 %d",main_memory[21]);
// $display("mem 22 %d",main_memory[22]);
// $display("mem 23 %d",main_memory[23]);
// $display("mem 24 %d",main_memory[24]);
// $display("mem 25 %d",main_memory[25]);
// $display("mem 26 %d",main_memory[26]);
end

// always @(posedge clk)
// begin
// $display("c00: %d",main_memory[18]);
// $display("c01: %d",main_memory[19]);
// $display("c02: %d",main_memory[20]);
// $display("c10: %d",main_memory[21]);
// $display("c11: %d",main_memory[22]);
// $display("c12: %d",main_memory[23]);
// $display("c20: %d",main_memory[24]);
// $display("c21: %d",main_memory[25]);
// $display("c22: %d",main_memory[26]);
// end
//matrix A
// main_memory[0] = 32'd1;
// main_memory[1] = 32'd2;
// main_memory[2] = 32'd3;
// main_memory[3] = 32'd1;
// main_memory[4] = 32'd2;
// main_memory[5] = 32'd3;
// main_memory[6] = 32'd1;
// main_memory[7] = 32'd2;
// main_memory[8] = 32'd3;

// //matrix B
// main_memory[9] = 32'd1;
// main_memory[10] = 32'd2;
// main_memory[11] = 32'd3;
// main_memory[12] = 32'd1;
// main_memory[13] = 32'd2;
// main_memory[14] = 32'd3;
// main_memory[15] = 32'd1;
// main_memory[16] = 32'd2;
// main_memory[17] = 32'd3;


always @(*) 
begin  
  if(write_enable)
  begin  
    main_memory[main_address] = write_data;
  end  
end  

assign read_data = (read_enable == 1'b1) ? main_memory[main_address]:32'd0;

endmodule   
