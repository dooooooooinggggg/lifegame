
section .data
on     db "0" ;
off    db 0x2d; <- "-"
err    db "e"
return db 0x0a

section .text
global _start

_start:
    ; 1と6の意味は？
    ; ssize_t write(int fd , const void * buf , size_t count );
    ; でした。

    ; 0の表示
    ; write(1, string, 1)
    xor rax, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, on
    mov rdx, 1
    syscall

    ; \nの表示
    xor rax, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, return
    mov rdx, 1
    syscall

    ; 0の表示
    ; write(1, string, 1)
    xor rax, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, on
    mov rdx, 1
    syscall

    ; 0の表示
    ; write(1, string, 1)
    xor rax, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, on
    mov rdx, 1
    syscall

    ; \nの表示
    xor rax, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, return
    mov rdx, 1
    syscall

    ; 0の表示
    ; write(1, string, 1)
    xor rax, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, on
    mov rdx, 1
    syscall

    ; 0の表示
    ; write(1, string, 1)
    xor rax, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, on
    mov rdx, 1
    syscall

    ; 0の表示
    ; write(1, string, 1)
    xor rax, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, on
    mov rdx, 1
    syscall

    ; 0の表示
    ; write(1, string, 1)
    xor rax, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, on
    mov rdx, 1
    syscall

    ; \nの表示
    xor rax, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, return
    mov rdx, 1
    syscall


    ; exit(0)
    mov rax, 60
    mov rdi, 0
    syscall
