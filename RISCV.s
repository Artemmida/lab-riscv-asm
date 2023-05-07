.data
N:
.word 4
M:
.word 4
matrix:
.word 100 100 100 100
.word 200 200 200 200
.word 300 300 300 300
.word 400 400 400 400
line:
.word 0
sum:
.word 0

.text

main:
la a2,N
la a3,M
la a4,matrix
la a5,line
la a6,sum
call process
call print
call exit

print:
lw a1 0(a6)
addi a0,x0,1
ecall

exit:
addi a0,x0,10
ecall

process:
lw t1 0(a2) #N
lw t3 0(a5) #line
addi t4,x0,0 #sum

addi t5,x0,0
loop1:
bge t6,t3,exit1
addi t5,t5,16
addi t6,t6,1
j loop1
exit1:

add a4,a4,t5
addi t6,x0,0
addi,t2,x0,0

loop2:
bge t6,t1,exit2
lw t2 0(a4)
add t4,t4,t2
addi a4,a4,4
addi t6,t6,1
j loop2
exit2:

sw t4 0(a6)
ret

