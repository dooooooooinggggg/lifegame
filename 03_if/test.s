
section .data
on     db "0" ;
off    db 0x2d; <- "-"
; err    db "e"
return db 0x0a



section .text
global _start

_start:

; if (a < b) {
;     a = b;
; }

; a = 3
; b = 2
; だとすると

    mov     rax, 3;a
    mov     rbx, 2;b
    cmp     rax, rbx
    jge     false
    mov     rbx, rax

    ; 0の表示
    ; write(1, string, 1)
    mov rax, 1
    mov rdi, 1
    mov rsi, on
    mov rdx, 1
    syscall
    ; \nの表示
    mov rax, 1
    mov rdi, 1
    mov rsi, return
    mov rdx, 1
    syscall


    ; exit(0)
    mov rax, 60
    mov rdi, 0
    syscall

false:

    ; -の表示
    ; write(1, string, 1)
    mov rax, 1
    mov rdi, 1
    mov rsi, off
    mov rdx, 1
    syscall
    ; \nの表示
    mov rax, 1
    mov rdi, 1
    mov rsi, return
    mov rdx, 1
    syscall

    ; exit(0)
    mov rax, 60
    mov rdi, 0
    syscall

