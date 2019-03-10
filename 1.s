# SUMA WARTOŚCI ELEMENTÓW TABLICY
# Wynik w EAX

.section .data
    tab:    .long 1, 2, 3, 4, 5
    end_tab:
    
.section .text
    .globl _start
    
    sum:
        mov %EAX, %ECX          # Kopiuję adres początku do ECX, bo w EAX ma być wynik
        mov $0, %EAX            # Wynik
        
        while:
            cmp $end_tab, %ECX  # Sprawdzam czy to koniec tablicy
            je endwhile
            
            add (%ECX), %EAX    # Dodaję do EAX wartość spod adresu w ECX
            add $4, %ECX        # Zwiększam adres w ECX o 4 bajty
            jmp while
        endwhile:
    return:
        ret
        
    
    _start:
        mov $tab, %EAX          # Kopiuję adres początku tablicy
        mov $end_tab, %EBX      # Kopiuję adres końca tablicy
        call sum
nop
