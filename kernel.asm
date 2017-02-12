; This file is kind of empty right now...
; And this OS doesnt have a name...
; Well at least you can make code here for putting into the release (master) branch...

; +=========================+
; |   KERNEL.ASM V0.1       |
; | BLEEDING-EDGE VERSION   |
; +=========================+

use32
org 0x1000

        jmp 0x0000:maink16
        
        kernel_v        db "Kernel.asm V0.01 (From February 12 2017)"
        newline         db 10,0
        
        align 16
        stack16:        rb 3072
        
; maink16
; "16-bit stub before kernel"

maink16:
        cli
        cld
        mov ax, 0
        mov es, ax
