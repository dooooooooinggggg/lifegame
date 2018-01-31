

section .data
; on     db "0" ;
; off    db 0x2d; <- "-"
; err    db "e"
; return db 0x0a

section .text
global _start

; sum = 0;
; i = 0;
; while ( i < 64 ) {
;     sum += data & 1;
;     data = data >> 1;
;     i++;
; }

_start:


