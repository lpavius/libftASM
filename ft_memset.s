; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/09/24 22:05:04 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/09/24 22:05:11 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; void	*ft_memset(void *b, int c, size_t len)

section .text
	global _ft_memset

_ft_memset:
			push 	rdi
			mov 	rax, rsi
			mov 	rcx, rdx
			cld
			rep stosb
			pop 	rax
			ret
			