; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/17 17:00:30 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/02/17 17:00:32 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; void	ft_bzero(void *s, size_t n)

section .text
	global _ft_bzero

_ft_bzero:
		push	rdi

	loop:
		cmp		rsi, 0
		jz		end
		dec		rsi
		mov		BYTE[rdi], 0
		inc		rdi
		jmp		loop

	end:
		pop		rdi
		ret			