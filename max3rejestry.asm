
.globl _start
.text
_start:
    mov $4, %ECX
    mov $2, %EDX
    mov  $5, %EBX
    mov %ECX, %EAX
    cmp %EDX, %EAX
    jg end_if
    mov %EBX, %EAX
    jg end_if
end_if:
    cmp %
    nop
