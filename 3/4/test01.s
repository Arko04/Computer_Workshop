/* -- test01.s */
/* This is a comment */

.arch arm          /* Specify ARM architecture */

.global main       /* 'main' is our entry point and must be global */
.func main         /* 'main' is a function */

main:              /* This is main */
    mov r0, #2     /* Put a 2 inside the register r0 */
    mov r7, #0     /* Set exit code to 0 */
    bx lr          /* Return from main */
