
      segment .data
data    dq      0xfedcba9876543210
sum     dq      0

        segment .text
        global  main
main:

        ; rbpの値をスタックに入れている。
        push    rbp

        ; rbp = rsp
        mov     rbp, rsp

        ; rsp - 16
        sub     rsp, 16

;   Register usage
;
;   rax : bits being examined
;   rbx : carry bit after bt, setc
;   rcx : loop counter, 0-63
;   rdx : sum of 1 bits
;

        ; rax = data
        mov     rax, [data]
        ; ebx = 0
        xor     ebx, ebx
        ; ecx = 0
        xor     ecx, ecx
        ; edx = 0
        xor     edx, edx

while:
        cmp     rcx, 64
        jnl     end_while; ここが分岐を抜ける条件。つまり、for文の0行目s
        bt      rax, 0; bt = ビット・テスト
        setc    bl;条件に適合する場合バイトを設定する blとは？
        add     edx, ebx; edx + ebx
        shr     rax, 1
        inc     rcx; i++
        jmp     while

end_while:
        mov     [sum], rdx
        xor     eax, eax
        leave
        ret

; sum = 0;
; i = 0;
; while ( i < 64 ) {
;     sum += data & 1;
;     data = data >> 1;
;     i++;
; }

