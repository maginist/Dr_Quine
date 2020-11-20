%define GRACE "%%define GRACE %4$c%1s%4$c%2$c%%define MAIN global main%2$c%%define PROG main:%2$csection .data%2$cgrace:%2$c%3$c.str db GRACE,0%2$c%3$c.fd db %4$cGrace_kid.s%4$c,0%2$c%3$c.f db %4$cw%4$c,0%2$csection .text%2$c%3$cMAIN%2$c%3$cextern fprintf, fopen, fclose%2$cPROG%2$c%3$cpush rbp%2$c%3$cmov rbp, rsp%2$c%3$clea rdi, [rel grace.fd]%2$c%3$clea rsi, [rel grace.f]%2$c%3$ccall fopen%2$c%3$cpush rax%2$c%3$cmov rdi, rax%2$c%3$cmov rax, 0%2$c%3$clea rsi, [rel grace.str]%2$c%3$clea rdx, [rel grace.str]%2$c%3$cmov rcx, 10%2$c%3$cmov r8, 9%2$c%3$cmov r9, 34%2$c%3$ccall fprintf%2$c%3$cpop rdi%2$c%3$ccall fclose%2$c%3$cmov rax, 0%2$c%3$cleave%2$c%3$cret%2$c%3$c; Commentaire"
%define MAIN global main
%define PROG main:
section .data
grace:
	.str db GRACE,0
	.fd db "Grace_kid.s",0
	.f db "w",0
section .text
	MAIN
	extern fprintf, fopen, fclose
PROG
	push rbp
	mov rbp, rsp
	lea rdi, [rel grace.fd]
	lea rsi, [rel grace.f]
	call fopen
	push rax
	mov rdi, rax
	mov rax, 0
	lea rsi, [rel grace.str]
	lea rdx, [rel grace.str]
	mov rcx, 10
	mov r8, 9
	mov r9, 34
	call fprintf
	pop rdi
	call fclose
	mov rax, 0
	leave
	ret
	; Commentaire