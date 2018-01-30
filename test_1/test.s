; test.s
; data セクション(メモリ上でデータを格納する場所)を定義し、そこに "Hello" という文字と、改行コードである 0x0a を記述する。
section .data
msg db "Hello", 0x0a
; dbが代入をしている？


section .text
global _start


;
;
; システムコール番号はrax、引数はrdi, rsi, rdx, r10, r8, r9の順で与える
; 戻り値がある場合は、rax以外にrcx, r11も書き換えられる可能性がある
;
;

_start:

  ; write(1, msg, 6)
  ; のセクション

  ; xorは、レジスタの値をクリアするのによく使用される。
  xor rax, rax ;rax = 0

  ; 第一オペランドに第二オペランドの値を格納する。
  ; ここが、システムコールの番号
  ; writeを実行するには、引数として、rax + 1,msg,6を、上の順番で用意する!!!!!!!!!!!


  ; よって、ここから
  mov rax, 1 ;rax = 1
  mov rdi, 1 ;rdi = 1
  mov rsi, msg ;rsi = msg
  mov rdx, 6 ;rsi  = 6
  ; ここまで
  ; システムコールをする準備

  ; syscall 命令は、システムコールを実行する命令である。
  ; syscallは、raxに格納されているやつを実行する。
  syscall






  ; exit(0)
  ; のセクション

  mov rax, 60 ;rax = 60
  mov rdi, 0 ; rdi = 0

  syscall

; 出てきているのは
; rax
; rdi
; rdx
; rsi
