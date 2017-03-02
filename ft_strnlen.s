; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strnlen.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/10/14 17:38:52 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/10/14 17:38:55 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; size_t	ft_strnlen(const char *s, size_t maxlen);

section .text
	global _ft_strnlen

_ft_strnlen:
			push 	rdi
			sub 	rcx, rcx
			not 	rcx
			sub 	al, al
			cld
			repne scasb
			not 	rcx
			dec 	rcx
			cmp 	rcx, rsi
			jg 		.maxlen
			mov 	rax, rcx 
			pop 	rdi
			ret
	.maxlen:
			mov 	rax, rsi
			pop 	rdi
			ret