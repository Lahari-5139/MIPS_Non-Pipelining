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
  for(i = 0 ;i < 512 ;i = i + 1) 
        main_memory[i] <= 32'd0;  
end  

always @(posedge clk) 
begin  
  if(write_enable)
  begin  
    main_memory[main_address] <= write_data;
  end  
end  

assign read_data = (read_enable == 1'b1) ? main_memory[main_address]:32'd0;

endmodule   
