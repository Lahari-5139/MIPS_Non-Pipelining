main:
lw $all_registers[0], $main_memory[0]
lw $all_registers[1], $main_memory[1]
lw $all_registers[2], $main_memory[2]
lw $all_registers[3], $main_memory[3]
lw $all_registers[4], $main_memory[4]
lw $all_registers[5], $main_memory[5]
lw $all_registers[6], $main_memory[6]
lw $all_registers[7], $main_memory[7]
lw $all_registers[8], $main_memory[8]

lw $all_registers[9], $main_memory[9]
lw $all_registers[10], $main_memory[10]
lw $all_registers[11], $main_memory[11]
lw $all_registers[12], $main_memory[12]
lw $all_registers[13], $main_memory[13]
lw $all_registers[14], $main_memory[14]
lw $all_registers[15], $main_memory[15]
lw $all_registers[16], $main_memory[16]
lw $all_registers[17], $main_memory[17]

//C00
mult $all_registers[31], $all_registers[0], $all_registers[9]
mult $all_registers[30], $all_registers[1], $all_registers[12]
mult $all_registers[29], $all_registers[2], $all_registers[15]
add $all_registers[28], $all_registers[31], $all_registers[30]
add $all_registers[27], $all_registers[28], $all_registers[29]
sw main_memory[18], $all_registers[27]

//C01
mult $all_registers[31], $all_registers[0], $all_registers[10]
mult $all_registers[30], $all_registers[1], $all_registers[13]
mult $all_registers[29], $all_registers[2], $all_registers[16]
add $all_registers[28], $all_registers[31], $all_registers[30]
add $all_registers[27], $all_registers[28], $all_registers[29]
sw main_memory[19], $all_registers[27]

//C02
mult $all_registers[31], $all_registers[0], $all_registers[11]
mult $all_registers[30], $all_registers[1], $all_registers[14]
mult $all_registers[29], $all_registers[2], $all_registers[17]
add $all_registers[28], $all_registers[31], $all_registers[30]
add $all_registers[27], $all_registers[28], $all_registers[29]
sw main_memory[20], $all_registers[27]

//C10
mult $all_registers[31], $all_registers[3], $all_registers[9]
mult $all_registers[30], $all_registers[4], $all_registers[12]
mult $all_registers[29], $all_registers[5], $all_registers[15]
add $all_registers[28], $all_registers[31], $all_registers[30]
add $all_registers[27], $all_registers[28], $all_registers[29]
sw main_memory[21], $all_registers[27]

//C11
mult $all_registers[31], $all_registers[3], $all_registers[10]
mult $all_registers[30], $all_registers[4], $all_registers[13]
mult $all_registers[29], $all_registers[5], $all_registers[16]
add $all_registers[28], $all_registers[31], $all_registers[30]
add $all_registers[27], $all_registers[28], $all_registers[29]
sw main_memory[22], $all_registers[27]

//C12
mult $all_registers[31], $all_registers[3], $all_registers[11]
mult $all_registers[30], $all_registers[4], $all_registers[14]
mult $all_registers[29], $all_registers[5], $all_registers[17]
add $all_registers[28], $all_registers[31], $all_registers[30]
add $all_registers[27], $all_registers[28], $all_registers[29]
sw main_memory[23], $all_registers[27]

//C20
mult $all_registers[31], $all_registers[6], $all_registers[9]
mult $all_registers[30], $all_registers[7], $all_registers[12]
mult $all_registers[29], $all_registers[8], $all_registers[15]
add $all_registers[28], $all_registers[31], $all_registers[30]
add $all_registers[27], $all_registers[28], $all_registers[29]
sw main_memory[24], $all_registers[27]

//C21
mult $all_registers[31], $all_registers[6], $all_registers[10]
mult $all_registers[30], $all_registers[7], $all_registers[13]
mult $all_registers[29], $all_registers[8], $all_registers[16]
add $all_registers[28], $all_registers[31], $all_registers[30]
add $all_registers[27], $all_registers[28], $all_registers[29]
sw main_memory[25], $all_registers[27]

//C22
mult $all_registers[31], $all_registers[6], $all_registers[11]
mult $all_registers[30], $all_registers[7], $all_registers[14]
mult $all_registers[29], $all_registers[8], $all_registers[17]
add $all_registers[28], $all_registers[31], $all_registers[30]
add $all_registers[27], $all_registers[28], $all_registers[29]
sw main_memory[26], $all_registers[27]
