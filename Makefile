all:
	nasm -f elf64 lifegame.s
	ld -o lifegame_asm lifegame.o
	gcc -o lifegame_c lifegame.c
clean:
	rm lifegame.o
	rm lifegame_c lifegame_asm

remake: clean all
