.section .data
  message:
    .ascii "hello,gas!\n"

.section .text
  .global _start
  _start:
    //システムコール4番(write)をコールしたい。
    movl  $4,%eax
    //引数1:出力先fd - この場合は標準出力だよね?1が何を示すか不明。
    //ToDo :後で調べる
    movl  $1,%ebx
    //引数2:出力先に対して書き込みたいバッファ
    movl  $message,%ecx
    //NULL文字を入れて12文字
    movl  $12,%edx
    int   $0x80

  _exit:
    //システムコール1番(exit)
    movl  $1,%eax
    //引数1:終了ステータス
    movl  $0,%ebx
    int   $0x80