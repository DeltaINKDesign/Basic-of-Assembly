# WYPEŁNIANIE TABLICY CIĄGIEM FIBONACCIEGO

.section .bss
    tab:    .space 40               # 10 elementów x 4 bajty
    end_tab:
    
.section .text
    .globl _start
    
    /*
       if n=0 then return 0
       if n=1 then return 1
       f1 ← 0
       f2  ← 1
       for i ← 2 to n
         do
           m  ← f2 + f1
           f1 ← f2
           f2  ← m
         end
       return f2
   */
    
    fibonacci:
        mov 4(%ESP), %EBX           # Kopiuję ze stosu adres końca tablicy
        mov 8(%ESP), %EAX           # Kopiuję ze stosu adres początku tablicy
        mov $0, %ECX                # F1
        mov $1, %EDX                # F2
        mov $0, %EDI                # M
        mov $0, %ESI                # N
        
        while:
            cmp %EBX, %EAX
            je endwhile
            
            cmp $0, %ESI            # if n=0 then return 0
            movl $0, (%EAX)
            je jump
            
            cmp $1, %ESI            # if n=1 then return 1
            movl $1, (%EAX)
            je jump
            
            mov %EDX, %EDI
            add %ECX, %EDI          # m  ← f2 + f1
            mov %EDX, %ECX          # f1 ← f2
            mov %EDI, %EDX          # f2  ← m
            mov %EDX, (%EAX)        # return f2
            
            jump:
                add $4, %EAX        # Zwiększam adres o 4 bajty
                inc %ESI            # Zwiększam N
                jmp while
        endwhile:
    return:
        ret $8                      # Zwalniam 8-bajtów ze stosu
    
    _start:
        push $tab                   # Odkładam na stos adres początku tablicy
        push $end_tab               # Odkładam na stos adres końca tablicy
        call fibonacci
nop
