
; 48*48のライフゲーム
; よって、配列の長さは、50*50
; bssで配列を二つ定義

; まずは、それで、初期化。
; インクリメントは2**64か、最低でも2**32までできる。
; 数字として、配列にインクリメントし続けたら、2**8 bitしか入らない。(resbの場合)

; rbxを、カウンターとする。

section .data
on     db "0"

section .bss
; 10*10の配列だとする。
prev_val resb 2500
next_val resb 2500

section .text
global _start

zero_func:
    mov [prev_val + rbx], 0
    jmp end_init_this_num

_start:
    xor rbx, rbx
init_val:
    cmp rbx, 2500
    jg after_init_val

    ; mov     r8, ;i
    ; mov     r9, ;j
    ; cmp     rax, rbx
    ; jge     false

    ; rbxが、49以下の時
    ; rbxが、2450以上の時。

    ; if( rbx <= 49 )
    cmp rbx, 49
    jle zero_func

    ; if( rbx >= 2450 )
    cmp rbx, 2450
    jge zero_func

    mov rax, rbx
    mov r8, 50
    div r8

    ; if( rbx % 50 == 0 )
    cmp rax, 0
    je  zero_func

    ; if( rbx % 50 == 49 )
    cmp rax, 49
    je  zero_func

    mov [prev_val + rbx], 1
    ; jmp end_init_this_num

end_init_this_num:

    inc rbx
    jmp init_val


after_init_val:
    nop





























exit:
    ; exit(0)
    mov rax, 60
    mov rdi, 0
    syscall






