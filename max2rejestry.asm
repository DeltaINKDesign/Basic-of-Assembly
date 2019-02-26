
.globl _start
.text
_start:

    mov $4, %ECX
    mov $2, %EDX
    mov %ECX, %EBX
    cmp %EDX, %EBX
    jg end_if
    mov %EDX, %EBX
end_if:
    nop
