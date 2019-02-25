
.globl _start
.text
_start:
    mov $4, %ECX
    mov $2, %EDX
    sub %ECX, %EDX   #sub ustawia flagi wiec juz nie trzeba cmp
    jg godown
    neg %EDX
    godown:
    mov %EDX, %EBX
    nop
