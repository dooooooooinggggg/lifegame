
; 48*48のライフゲーム
; よって、配列の長さは、50*50
; bssで配列を二つ定義

; まずは、それで、初期化。
; インクリメントは2**64か、最低でも2**32までできる。
; 数字として、配列にインクリメントし続けたら、2**8 bitしか入らない。(resbの場合)

; rbxを、カウンターとする。


; rbx カウンター 邪魔しちゃダメ。
; r8  除数を入れておくためのもの。一時的
; r9  初期値であるflagを入れておくもの。一時的


section .data
    on     db "0"
    off    db 0x2d; <- "-"
    err    db "e"
    return db 0x0a


section .bss
    ; 10*10の配列だとする。
    prev_val resb 2500
    next_val resb 2500


section .text
    global _start

zero_func:
    mov r9, 0
    mov [prev_val + rbx], r9
    jmp end_init_this_num

_start:
    xor rbx, rbx
init_val:
    cmp rbx, 2500
    jg after_init_val

    ; rbxが、49以下の時
    ; rbxが、2450以上の時
    ; 0の壁を入れてみる

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
    cmp rdx, 0
    je  zero_func

    ; if( rbx % 50 == 49 )
    cmp rdx, 49
    je  zero_func

    mov r9, 1
    mov [prev_val + rbx], r9
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






