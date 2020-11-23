section .data
colleen:
	.str db "section .data%3$ccolleen:%3$c%4$c.str db %2$c%1$s%2$c,0%3$c%4$c; data%3$csection .text%3$c%4$cglobal main%3$c%4$cextern printf%3$cmain:%3$c%4$cpush rbp%3$c%4$cmov rbp, rsp%3$c%4$clea rdi, [rel colleen.str]%3$c%4$clea rsi, [rel colleen.str]%3$c%4$cmov rdx, 34%3$c%4$cmov rcx, 10%3$c%4$cmov r8, 9%3$c%4$ccall printf wrt ..plt%3$c%4$c; Commentaire%3$c%4$cmov rax, 0%3$c%4$cleave%3$c%4$cret",0
	; data
section .text
	global main
	extern printf 
main:
	push rbp
	mov rbp, rsp
	lea rdi, [rel colleen.str]
	lea rsi, [rel colleen.str]
	mov rdx, 34
	mov rcx, 10
	mov r8, 9
	call printf wrt ..plt
	; Commentaire
	mov rax, 0
	leave
	ret