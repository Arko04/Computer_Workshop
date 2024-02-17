.global main 
.func main 

main:          
    mov r0, #5     @ Load number 5 into r0
    mov r1, #8     @ Load number 8 into r1
    
    mul r2, r0, r1 @ Multiply r0 and r1, and store the result in r2

    mov r7, #0     @ Set exit code to 0
    bx lr          @ Return from main
