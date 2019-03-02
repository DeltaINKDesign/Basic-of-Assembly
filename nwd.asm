
.globl _start
.text
_start:
nwd:
while:
        cmp %EAX, %EBX
        jz end_while
        jg else
        sub %EBX, %EAX
        jmp while
else:
        sub %EAX,%EBX
end_if:
        jmp while
end_while:
        ret
        _start:
        mov $14,%EAX
        mov $28,%EBX
        call nwd
        nop