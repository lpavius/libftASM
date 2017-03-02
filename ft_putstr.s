; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/10/13 19:55:37 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/10/13 19:55:40 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; void	ft_putstr(char const *s)

; %define MACH_SYSCALL(nb)	0x2000000 | nb
; %define STDOUT				1
; %define WRITE				4

section .data
	nullstr	db "(null)" 

section .text
	global _ft_putstr
	extern _ft_strlen

_ft_putstr:
			cmp 	rdi, 0
			je 		.endnull
			call 	_ft_strlen
			mov 	rdx, rax
			mov 	rcx, rdi
			;mov 	rax, MACH_SYSCALL(WRITE)
			mov 	rax, 0x2000004
			;mov 	rdi, STDOUT
			mov 	rdi, 1
			lea 	rsi, [rcx]
			syscall

			ret

	.endnull:
			;mov 	rdi, STDOUT
			mov 	rdi, 1
			lea 	rsi, [rel nullstr]
			mov 	rdx, 7
			;mov 	rax, MACH_SYSCALL(WRITE)
			mov 	rax, 0x2000004
			syscall

			ret