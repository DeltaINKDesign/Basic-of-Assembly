.equ max, 40
.bss
fib: .space max
efib:
.text
.globl _start
.text
_start:
    movl $0,fib
    movl $1,fib+4
    mov $fib+8,%EBX
while:
    cmp $efib,%EBX
    jge endwhile
    mov -8(%EBX),%EAX
    add -4(%EBX),%EAX
    mov %EAX,(%EBX)
    add $4,%EBX
    jmp while
endwhile:
    nop