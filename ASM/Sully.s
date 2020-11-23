%define ACCESS 0x2000021
section .data
sully:
	.str db "%%define ACCESS 0x2000021%2$csection .data%2$csully:%2$c	.str db %3$c%1$s%3$c,0%2$c	.fd db %3$cSully_%%d.s%3$c,0%2$c	.exec db %3$cSully_%%d%3$c,0%2$c	.format db %3$cw%3$c,0%2$c	.nasm db %3$cnasm -f elf64 %%s%3$c,0%2$c	.gcc db %3$cgcc %%s.o -o %%s; ./%%s%3$c,0%2$csection .text%2$c	global main%2$c	extern fprintf, fopen, fclose, sprintf, system%2$cmain:%2$c	push rbp%2$c	mov rbp, rsp%2$c	mov r15, %4$d%2$c	cmp r15, 0%2$c	jle end%2$c	sub rsp, 16%2$c	lea rdi, [rel rsp]%2$c	lea rsi, [rel sully.fd]%2$c	mov rdx, r15%2$c	call sprintf wrt ..plt%2$c	%%ifdef NEW%2$c	add r15, 1%2$c	%%endif%2$c	dec r15%2$ctest:%2$c	sub rsp, 16%2$c	lea rdi, [rel rsp]%2$c	lea rsi, [rel sully.fd]%2$c	mov rdx, r15%2$c	call sprintf wrt ..plt%2$c	mov rdi, rsp%2$c	lea rsi, [rel sully.format]%2$c	call fopen wrt ..plt%2$c	push rax%2$c	mov rdi, rax%2$c	mov rax, 0%2$c	lea rsi, [rel sully.str]%2$c	lea rdx, [rel sully.str]%2$c	mov rcx, 10%2$c	mov r8, 34%2$c	mov r9, r15%2$c	call fprintf wrt ..plt%2$c	pop rdi%2$c	call fclose wrt ..plt%2$c	lea rdx, [rel rsp]%2$c	sub rsp, 16%2$c	lea rdi, [rel rsp]%2$c	lea rsi, [rel sully.nasm]%2$c	call sprintf wrt ..plt%2$c	lea rdi, [rel rsp]%2$c	call system wrt ..plt%2$c	sub rsp, 16%2$c	lea rdi, [rel rsp]%2$c	lea rsi, [rel sully.exec]%2$c	mov rdx, r15%2$c	call sprintf wrt ..plt%2$c	lea rdx, [rel rsp]%2$c	sub rsp, 32%2$c	lea rdi, [rel rsp]%2$c	lea rsi, [rel sully.gcc]%2$c	lea rcx, [rel rsp + 32]%2$c	lea r8, [rel rsp + 32]%2$c	call sprintf wrt ..plt%2$c	lea rdi, [rel rsp]%2$c	call system wrt ..plt%2$cend:%2$c	leave%2$c	mov rax, 0%2$c	ret",0
	.fd db "Sully_%d.s",0
	.exec db "Sully_%d",0
	.format db "w",0
	.nasm db "nasm -f elf64 %s",0
	.gcc db "gcc %s.o -o %s; ./%s",0
section .text
	global main
	extern fprintf, fopen, fclose, sprintf, system
main:
	push rbp
	mov rbp, rsp
	mov r15, 5
	cmp r15, 0
	jle end
	sub rsp, 16
	lea rdi, [rel rsp]
	lea rsi, [rel sully.fd]
	mov rdx, r15
	call sprintf wrt ..plt
	%ifdef NEW
	add r15, 1
	%endif
	dec r15
test:
	sub rsp, 16
	lea rdi, [rel rsp]
	lea rsi, [rel sully.fd]
	mov rdx, r15
	call sprintf wrt ..plt
	mov rdi, rsp
	lea rsi, [rel sully.format]
	call fopen wrt ..plt
	push rax
	mov rdi, rax
	mov rax, 0
	lea rsi, [rel sully.str]
	lea rdx, [rel sully.str]
	mov rcx, 10
	mov r8, 34
	mov r9, r15
	call fprintf wrt ..plt
	pop rdi
	call fclose wrt ..plt
	lea rdx, [rel rsp]
	sub rsp, 16
	lea rdi, [rel rsp]
	lea rsi, [rel sully.nasm]
	call sprintf wrt ..plt
	lea rdi, [rel rsp]
	call system wrt ..plt
	sub rsp, 16
	lea rdi, [rel rsp]
	lea rsi, [rel sully.exec]
	mov rdx, r15
	call sprintf wrt ..plt
	lea rdx, [rel rsp]
	sub rsp, 32
	lea rdi, [rel rsp]
	lea rsi, [rel sully.gcc]
	lea rcx, [rel rsp + 32]
	lea r8, [rel rsp + 32]
	call sprintf wrt ..plt
	lea rdi, [rel rsp]
	call system wrt ..plt
end:
	leave
	mov rax, 0
	ret