.data
    count: .long 12
    nap: .asciz "madamimadam"
    
.globl _start
.text
_start:
    mov $0, %EBX
    mov $0, %EDX
    while:
        cmpb $0, nap(%EBX)
        je endwhile
        inc %EBX
        jmp while
    endwhile:
        dec %EBX
        mov $1, %ECX
        check:
            cmp %EBX, %EDX
            jge elo
            mov nap(%EDX), %AL
            mov nap(%EBX), %AH
            inc %EDX
            dec %EBX
            cmp %AL, %AH
            je check
            jne notpalin
    notpalin:
        mov $0, %ECX
        elo:
        nop