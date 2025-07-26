; bootloader.asm - Prints "Hello, how are you?" using BIOS interrupts
[BITS 16]
[ORG 0x7C00]

start:
    mov si, message

print_loop:
    mov al, [si]
    cmp al, 0
    je done
    mov ah, 0x0E
    int 0x10
    inc si
    jmp print_loop

done:
    hlt
    jmp $

message db "Hello, how are you?", 0

TIMES 510 - ($ - $$) db 0
DW 0xAA55
