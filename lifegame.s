
; 48*48のライフゲーム
; よって、配列の長さは、50*50
; bssで配列を二つ定義

; まずは、それで、初期化。
; インクリメントは2**64か、最低でも2**32までできる。
; 数字として、配列にインクリメントし続けたら、2**8 bitしか入らない。(resbの場合)

; rbxを、カウンターとする。

; システムコール番号はrax、引数はrdi, rsi, rdx, r10, r8, r9の順で与える
; rax以外にrcx, r11も書き換えられる可能性がある
; rbx カウンター 邪魔しちゃダメ。
; rdx あまりが入る
; r8  除数を入れておくためのもの。一時的
; r9  初期値であるflagを入れておくもの。一時的
; r15 print系において、配列の値を入れておくもの


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






print_off:
    ; write
    mov rax, 1
    mov rdi, 1
    mov rsi, off
    mov rdx, 1
    syscall

    jmp after_each_print
    ; ret

print_on:
    ; write
    mov rax, 1
    mov rdi, 1
    mov rsi, on
    mov rdx, 1
    syscall

    jmp after_each_print
    ; ret

print_func:
    ; 一回prev_valをprintする感じで。
    xor rbx, rbx
print_each:
    cmp rbx, 2500
    jge return_from_print

    ; if( rbx <= 49 )
    cmp rbx, 49
    jle after_each_print

    ; if( rbx >= 2450 )
    cmp rbx, 2450
    jge after_each_print

    mov rax, rbx
    mov r8, 50
    div r8

    ; if( rbx % 50 == 0 )
    cmp rdx, 0
    je  after_each_print

    ; if( rbx % 50 == 49 )
    cmp rdx, 49
    je  after_each_print

    xor r15, r15
    mov r15, byte ptr [prev_val + rbx]
    cmp r15, 0
    je print_off
    cmp r15, 1
    je print_on

; print系のcontinueと、次のループへはここ。
after_each_print:
    inc rbx
    jmp print_each


return_from_print:
    jmp after_first_print








zero_func:
    mov r9, 0
    mov [prev_val + rbx], r9
    jmp end_init_this_num

_start:
    xor rbx, rbx
init_val:
    cmp rbx, 2500
    jge after_init_val

    ; rbxが、49以下の時
    ; rbxが、2450以上の時
    ; 0の壁を入れる

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

    ; ここを本当はランダムにしなければならない
    mov r9, 1
    mov [prev_val + rbx], r9
    ; jmp end_init_this_num

end_init_this_num:
    inc rbx
    jmp init_val

after_init_val:
    nop
    jmp print_func

after_first_print:
    nop



























exit:
    ; exit(0)
    mov rax, 60
    mov rdi, 0
    syscall






