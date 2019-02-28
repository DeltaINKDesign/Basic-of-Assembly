.equ max, 40
.bss
tab: .space max
etab:
.text
.globl _start
.text
_start:
    mov $0, %EBX
while:
    cmp $(etab-tab)/4,%EBX
    jge endwhile
    mov %EBX, %EAX
    mul %EAX
    mov %EAX, tab(,%EBX,4)
    inc %EBX
    jmp while
endwhile:
    nop