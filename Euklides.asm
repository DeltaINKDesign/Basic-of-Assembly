.text
.globl _start
_start:
    mov $14, %EAX
    mov $21, %EBX
while:
    cmp %EAX, %EBX
    jz end_while
    jg else
    sub %EBX, %EAX
    jmp end_if
else:
    sub %EAX, %EBX
end_if:
    jmp while
end_while:
    mov $0, %EBX
    mov $1, %EAX
    int $0x80
