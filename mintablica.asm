.data
tab: .long 3,6,7,2,4,1
end_tab:
.equ tab_bytes, end_tab-tab

.globl _start
.text
_start:
    mov tab, %EAX
    mov $4, %EBX
while:
    cmp $tab_bytes, %EBX
    jge end_while
    cmp tab(%EBX), %EAX
    jle end_if
    mov tab(%EBX),%EAX
end_if:
    add $4, %EBX
    jmp while
end_while:
    nop