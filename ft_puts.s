; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/06/01 18:37:35 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/06/01 18:37:40 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; int	ft_puts(const char *s)

; 10 = 0x0a
; db = define bytes, 8 bits

section .data
nlstr 	db 0x0a
nullstr db "(null)", 10


section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
		cmp rdi, 0
		je 	.endnull
		call _ft_strlen
		mov rdx, rax
		mov rcx, rdi
		mov rax, 0x2000004
		mov rdi, 1
		lea rsi, [rcx]
		syscall

		mov rdx, 1
		mov rax, 0x2000004
		lea rsi, [rel nlstr]
		syscall

		ret

	.endnull:
		mov rdi, 1
		lea rsi, [rel nullstr]
		mov rdx, 7
		mov rax, 0x2000004
		syscall

		ret