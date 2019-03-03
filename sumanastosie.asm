.globl _start
.text
_start:
    pushl $7
    pushl $2
    pushl $3
    pushl $8
    pushl $4
    
    call suma
    add $5*4,%ESP
    add (%EBX),%EAX
suma:
    mov $1,%EBX
    mov 8(%ESP),%EAX
while:
    cmp %EBX,4(%ESP)
    je endwhile
    add 8(%ESP,%EBX,4),%EAX
    inc %EBX
    jmp while
endwhile:
    ret