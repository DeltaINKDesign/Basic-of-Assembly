# ŚREDNIA WARTOŚCI ELEMENTÓW TABLICY
# Wynik w EAX

.section .data
    tab:    .long 2, 2, 4, 4, 5
    end_tab:
    
.section .text
    .globl _start
    
    average:
        mov %EAX, %ECX          # Kopiuję adres początku do ECX, bo w EAX ma być wynik
        mov $0, %EAX            # Wynik
        mov $0, %ESI            # Licznik elementów tablicy
        
        while:
            cmp %EBX, %ECX      # Sprawdzam czy to koniec tablicy
            je end_while
            
            add (%ECX), %EAX    # Dodaję do EAX wartość spod adresu w ECX
            add $4, %ECX        # Zwiększam adres w ECX o 4 bajty
            inc %ESI            # Zwiększam licznik elementów tablicy
            jmp while
        end_while:
            div %ESI            # Dzielę sumę w EAX przez ESI (liczbę elementów)
    return:
        ret 
        
    
    _start:
        mov $tab, %EAX          # Kopiuję adres początku tablicy
        mov $end_tab, %EBX      # Kopiuję adres końca tablicy
        call average
nop
