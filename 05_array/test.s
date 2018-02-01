
section .data
on     db "0" ;

; aは1要素がbyte長で100要素の配列先頭アドレス（）(1byte)
; bは1要素がdouble word長で100要素
; resbでいい。01なので。
section .bss
; 10*10の配列だとする。
aaaaa    resb 1000

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

    inc rbx

    cmp rax, 0
    je  for_i

    mov rax, 1
    mov rdi, 1
    mov rsi, on
    mov rdx, 1
    syscall

    jmp for_j

end_for:
    ; exit(0)
    mov rax, 60
    mov rdi, 0
    syscall










