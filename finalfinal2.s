main:
lw $all_registers[1], $main_memory[1] //A00
lw $all_registers[2], $main_memory[2] //A01
lw $all_registers[3], $main_memory[3] //A10
lw $all_registers[4], $main_memory[4] //A11


lw $all_registers[5], $main_memory[5] //B00
lw $all_registers[6], $main_memory[6] //B01
lw $all_registers[7], $main_memory[7] //B10
lw $all_registers[8], $main_memory[8] //B11

//C00
mult $all_registers[31], $all_registers[1], $all_registers[5]
mult $all_registers[30], $all_registers[2], $all_registers[7]
add $all_registers[28], $all_registers[31], $all_registers[30]
sw main_memory[9], $all_registers[28]

//C01
mult $all_registers[31], $all_registers[1], $all_registers[6]
mult $all_registers[30], $all_registers[2], $all_registers[8]
add $all_registers[28], $all_registers[31], $all_registers[30]
sw main_memory[10], $all_registers[28]

//C10
mult $all_registers[31], $all_registers[3], $all_registers[5]
mult $all_registers[30], $all_registers[4], $all_registers[7]
add $all_registers[28], $all_registers[31], $all_registers[30]
sw main_memory[11], $all_registers[28]

//C11
mult $all_registers[31], $all_registers[3], $all_registers[6]
mult $all_registers[30], $all_registers[4], $all_registers[8]
add $all_registers[28], $all_registers[31], $all_registers[30]
sw main_memory[12], $all_registers[28]
