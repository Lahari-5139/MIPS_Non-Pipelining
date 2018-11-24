.data
A00: .word 1
A01: .word 2
A02: .word 3
A10: .word 4
A11: .word 5
A12: .word 6
A20: .word 7
A21: .word 8
A22: .word 9

B00: .word 1
B01: .word 2
B02: .word 3
B10: .word 4
B11: .word 5
B12: .word 6
B20: .word 7
B21: .word 8
B22: .word 9

numrow: .word 3
numcolumn: .word 3

C00: .space 4
C01: .space 4
C02: .space 4
C10: .space 4
C11: .space 4
C12: .space 4
C20: .space 4
C21: .space 4
C22: .space 4
.text
.glbl

main:
lw $s0, A00
lw $s1, A01
lw $s2, A02
lw $s3, A10
lw $s4, A11
lw $s5, A12
lw $s6, A20
lw $s7, A21
lw $t0, A22

lw $t1, B00
lw $t2, B01
lw $t3, B02
lw $t4, B10
lw $t5, B11
lw $t6, B12
lw $t7, B20
lw $a0, B21
lw $a1, B22

lw $a2, numrow
lw $a3, numcolumn
li $z0, 0 #i
li $z1, 0 #j
li $z2, 0 #k
j LOOP1


LOOP1:
bge $z0, $a2, END
addi $z0, $z0, 1
j LOOP2

LOOP2:
bge $z1, $a3, END
add $z1, $z1, 1
j LOOP3

LOOP3:
bge $z2, 2, END
add $z2, $z2, 1

END:
