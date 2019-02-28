.data
    n1: .ascii "Hi!\n"
    end_n1:

.globl _start
.text
_start:
    mov $4,%EAX
    mov $1,%EBX
    mov $n1,%ECX
    mov $endn1-n1,%EDX
    int $0x80
    mov $1,%EAX
    mov $0,%EBX
    int $0x80