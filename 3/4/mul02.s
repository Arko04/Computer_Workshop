.global main
.func main

main:
    mov r0, #5     @ Load number 5 into r0

    lsl r3, r0, #3 @ Shift the value in r0 3 bits to the left, and store the result in r3

    mov r7, #0     @ Set exit code to 0
    bx lr          @ Return from main


