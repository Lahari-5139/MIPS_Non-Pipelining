module data_memory_unit(clk,address,write_data,write_enable,read_enable,read_data);

input clk;
input[15:0] address;
input[15:0] write_data;
input write_enable, read_enable;

output[15:0] read_data;

  
reg[31:0] main_memory[511:0];  

wire[15:0] main_address = address[15:0];

//loop for initialising the main memory
integer i;
initial 
begin  
    main_memory[0] = 32'd1;
    main_memory[1] = 32'd2;
    main_memory[2] = 32'd3;
    main_memory[3] = 32'd1;
    main_memory[4] = 32'd2;
    main_memory[5] = 32'd3;
    main_memory[6] = 32'd1;
    main_memory[7] = 32'd2;
    main_memory[8] = 32'd3;
    main_memory[9] = 32'd1;
    main_memory[10] = 32'd2;
    main_memory[11] = 32'd3;
    main_memory[12] = 32'd1;
    main_memory[13] = 32'd2;
    main_memory[14] = 32'd3;
    main_memory[15] = 32'd1;
    main_memory[16] = 32'd2;
    main_memory[17] = 32'd3;
   
end  

//matrix A

//matrix B
  
always @(posedge clk) 
begin  
  if(write_enable)
  begin  
    main_memory[main_address] <= write_data;
  end  
end  

assign read_data = (read_enable == 1'b1) ? main_memory[main_address]:32'd0;

endmodule   
