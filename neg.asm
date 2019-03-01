
.globl _start
.text
_start:
        mov $4, %EBX
        mov $3, %ECX
        mov $1, %EAX
while:
        cmp $0, %EBX
        je end_while
        mul %EBX
        dec %EBX
        jmp while
end_while:
        nop
