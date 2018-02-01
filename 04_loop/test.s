

section .data
on     db "0" ;
off    db 0x2d; <- "-"
err    db "e"
return db 0x0a


section .text
global _start

_start:

; printf("-/n")
; for( i = 0; i < 63; i++ ){
;     printf("0\n")
; }


    ; -の表示
    ; write(1, string, 1)
    mov rax, 1
    mov rdi, 1
    mov rsi, off
    mov rdx, 1
    syscall

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

    ; rcx = 0
    ; xor rcx, rcx
    mov rcx, 0

forbun:

    ; if( rcx < 64 ) そのまま
    ; else           endfor
    cmp rcx, 64
    jge endfor



    ; 0の表示
    mov rax, 1
    mov rdi, 1
    mov rsi, on
    mov rdx, 1
    syscall

    ; 0の表示
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

    inc rcx
    jmp forbun

endfor:

    jmp exit

exit:

    mov rax, 1
    mov rdi, 1
    mov rsi, err
    mov rdx, 1
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, err
    mov rdx, 1
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, return
    mov rdx, 1
    syscall

    ; exit(0)
    mov rax, 60
    mov rdi, 0
    syscall























