.text
.globl _start
_start:
    mov $1, %EAX
    mov $1, %EBX
    mov $5, %ECX
while:
    cmp $1,%ECX
    jle end_while
    add %EAX, %EBX
    xchg %EAX, %EBX
    dec %ECX
    jmp while
end_while:
    nop
    mov $0, %EBX
    mov $1, %EAX
    int $0x80
