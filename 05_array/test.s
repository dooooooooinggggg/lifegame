
; aは1要素がbyte長で100要素の配列先頭アドレス（）(1byte)
; bは1要素がdouble word長で100要素

; resbで、いい。01なので。

;     segment .bss
; a   resb    100
; b   resd    100
;     align   8
; c   resq    100
;     segment .text
;     global  main        ; let the linker know about main
; main:
;     push    rbp
;     mov     rbp, rsp
;     sub     rsp, 16
;     leave
;     ret


section .bss

; 10*10の配列だとする。
aaaaa    resb 100

section .text
    global _start

_start:
; for( i = 0; i < 10; i++ ){
;     for( j = 0; j < 10; j++ ){
;     }
; }
; だとすると、10のループを二個。

; カウンタにはrbxを使う。

    xor rbx, rbx

for_i:
    nop
for_j:
    ; この時raxには、カウンタの値が入っている。

    ; if(rax >= 100){抜ける}
    ; else 継続
    cmp rbx, 100
    ; 100に達していたら抜け、そうでなくても、10の倍数だったら、jから抜ける。
    jge end_for

    ; aaaaa[i][j] = i
    mov [aaaaa + rbx], rbx

    mov rax, rbx
    mov r8,  10
    div r8

; inc
; CFの状態を変えないで格納先オペランドから1を足します
; 格納先オペランドには、レジスタまたはメモリアドレスを使用できます
; この命令では、CFの状態を変えることなくループカウンタを更新することができます
; (CFを更新するにはADD命令で値1のオペランドを指定します)
; LOCKプリフィクスとINC命令を使用することで、アトミックな(割り込みをはさまないで命令を完了できる)命令として
; 使用できます
    inc rbx

    cmp rax, 0
    je  for_i

    jmp for_j

end_for:

    ; exit(0)
    mov rax, 60
    mov rdi, 0
    syscall










