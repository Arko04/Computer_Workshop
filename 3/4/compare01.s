.global main
.func main

.data
num1:   .word 5        @ First number stored in RAM
num2:   .word 3        @ Second number stored in RAM

main:
    ldr r1, =num1      @ Load the address of the first number into r1
    ldr r1, [r1]       @ Load the value of the first number into r1

    ldr r2, =num2      @ Load the address of the second number into r2
    ldr r2, [r2]       @ Load the value of the second number into r2

    cmp r1, r2         @ Compare the values of the two numbers
    movgt r0, #1       @ If r1 > r2, move 1 into r0 (first number is bigger)
    movle r0, #2       @ If r1 <= r2, move 2 into r0 (second number is bigger)
    bx lr              @ Return from the function

