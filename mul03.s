.global main
.func main
main:
    mov r0, #5     @ Load number 5 into r0

    mov r4, #0     @ Initialize r4 as 0
    ldr r5, =8     @ Load number 8 into r5

    loop:
        add r4, r4, r0    @ Add r0 to r4, accumulating the result
        subs r5, r5, #1   @ Decrement r5 by 1
        cmp r5, #0        @ Compare r5 with 0
        bne loop          @ Branch to loop if r5 is not equal to 0

    mov r7, #0     @ Set exit code to 0
    bx lr          @ Return from main
