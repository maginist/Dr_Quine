%define ACCESS 0x2000021
section .data
sully:
	.str db "%%define ACCESS 0x2000021%2$csection .data%2$csully:%2$c%3$c.str db %4$cprog%4$c,0%2$c%3$c.fd db %4$cSully_%%d.s%4$c,0%2$c%3$c.exec db %4$cSully_%%d%4$c,0%2$c%3$c.format db %4$cw%4$c,0%2$c%3$c.nasm db %4$cnasm -f elf64 %%s%4$c,0%2$c%3$c.gcc db %4$cgcc %%s.o -o %%s%4$c,0%2$csection .text%2$c%3$cglobal main%2$c%3$cextern fprintf, fopen, fclose, sprintf, system%2$cmain:%2$c%3$cpush rbp%2$c%3$cmov rbp, rsp%2$c%3$cmov r15, 5%2$c%3$ccmp r15, 0%2$c%3$cjle end%2$c%3$csub rsp, 16%2$c%3$clea rdi, [rel rsp]%2$c%3$clea rsi, [rel sully.fd]%2$c%3$cmov rdx, r15%2$c%3$ccall sprintf%2$c%3$cmov rax, ACCESS%2$c%3$ccmp rax, 0x0%2$c%3$cjnz test%2$c%3$cdec r15%2$ctest:%2$c%3$cmov rdi, rsp%2$c%3$clea rsi, [rel sully.format]%2$c%3$ccall fopen%2$c%3$c%2$c%3$cpush rax%2$c%3$cmov rdi, rax%2$c%3$cmov rax, 0%2$c%3$clea rsi, [rel sully.str]%2$c%3$clea rdx, [rel sully.str]%2$c%3$cmov rcx, 10%2$c%3$cmov r8, 9%2$c%3$cmov r9, 34%2$c%3$cmov r10, r15%2$c%3$ccall fprintf%2$c%3$cpop rdi%2$c%3$ccall fclose%2$cend:%2$c%3$cleave%2$c%3$cmov rax, 0%2$c%3$cret",0
	.fd db "Sully_%d.s",0
	.exec db "Sully_%d",0
	.format db "w",0
	.nasm db "nasm -f elf64 %s",0
	.gcc db "gcc %s.o -o %s",0

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
	call sprintf
	mov rax, ACCESS
	cmp rax, 0x0
	jnz test
	dec r15
test:
	mov rdi, rsp
	lea rsi, [rel sully.format]
	call fopen
	push rax
	mov rdi, rax
	mov rax, 0
	lea rsi, [rel sully.str]
	lea rdx, [rel sully.str]
	mov rcx, 10
	mov r8, 9
	mov r9, 34
	mov r10, r15
	call fprintf
	pop rdi
	call fclose
end:
	leave
	mov rax, 0
	ret