; test.s
section .data
msg db "Hello", 0x0a

section .text
global _start

_start:
  ; write(1, msg, 6)
  xor rax, rax
  mov rax, 1
  mov rdi, 1
  mov rsi, msg
  mov rdx, 6
  syscall

  ; exit(0)
  mov rax, 60
  mov rdi, 0
  syscall
