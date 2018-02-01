
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
    global _Start

_start:
; for( i = 0; i < 10; i++ ){
;     for( j = 0; j < 10; j++ ){
;     }
; }
; だとすると、10のループを二個。

; カウンタにはrbxを使う。

    xor rbx, rbx

for_i:

for_j:
    mov [aaaaa + rbx], rbx

    mov rax, rbx
    div 10

    inc rbx
    cmp 0, ah
    je  for_i
    jmp for_j




