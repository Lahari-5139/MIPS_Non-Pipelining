.data
A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9
B: .word 1, 2, 3, 4, 5, 6, 7, 8, 9
C: .space 36
A_numrow: .word 3
A_numcolumn: .word 3
B_numrow: .word 3
B_numcolumn: .word 3
.text

main:
la $s0, A
la $s1, B
la $s2, C
lw $t0, A_numrow
lw $t1, A_numcolumn
lw $t2, B_numrow
lw $t3, B_numcolumn
li $s3, 0 #i
li $s4, 0 #j
li $s5, 0 #k
j LOOP1


LOOP1:
bge $s3, $t1, END
j LOOP2
addi $s3, $s3, 1 # i++

LOOP2:
bge $s4, $t3, END
addi $s4, $s4, 1 # j++
j LOOP3

LOOP3:
bge $s5, 2, Show_C
addi $s5, $s5, 1 # k++
mul $s6, $t1, $s3 # s6 = A_numcolumn * i
add $s6, $s6, $s5 # s6 = s6 + k
mul $s6, $s6, 4 # s6 = s6 * 4
add $s6, $s6, $s0 # s6 = s6 + A
lw $t4, 0($s6) # load s6 to t4

mul $s7, $t3, $s5 # s7 = B_numcolumn * k
add $s7, $s7, $s4 # s7 = s7 + j
mul $s7, $s7, 4 # s7 = s7 * 4
add $s7, $s7, $s1 # s7 = s7 + B
lw $t5, 0($s7) # load s7 to t5

mul $s8, $t3, $s3 # s8 = B_numcolumn * i
add $s8, $s8, $s4 # s8 = s8 + j
mul $s8, $s8, 4 # s8 = s8 * 4
add $s8, $s8, $s2 # s8 = s8 + C
mul $t4, $t4, $t5 # t4 = t4 * t5
add $t6, $t4, $t6 # t6 = t4 + t6
sw $t6, 0($s8) # store s8 to t6
j LOOP3


Show_C: li $v0, 1
lw $s0, 0($s8)
syscall
j LOOP2

END: li $v0, 10
lw $s0, 0($s8)
syscall
