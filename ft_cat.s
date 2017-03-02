; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/10/14 20:16:57 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/10/14 20:17:00 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;


; void	ft_cat(int fd)

; read 3
; write 4
; buff
; stdout 1



section .data
	buffer db 42
	buff_size equ $ - buffer

section .text
	global _ft_cat

_ft_cat:
		cmp 	rdi, 0
		jl 		.end 						; si < 0

	.read:
		push 	rdi							;read
		mov 	rax, 0x2000003
		lea 	rsi, [rel buffer]
		mov 	rdx, buff_size
		syscall

		jc 		.end
		cmp 	rax, 0
		je 		.end

		mov 	rax, 0x2000004				;write
		mov 	rdi, 1
		mov 	rdx, buff_size
		syscall
		pop 	rdi
		jmp 	.read

	.end:
		pop 	rdi
		ret