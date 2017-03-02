; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/09/24 18:35:13 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/09/24 18:35:24 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; size_t	ft_strlen(const char *str)

section .text
	global _ft_strlen 

_ft_strlen:
			push 	rdi
			sub 	rcx, rcx
			not 	rcx
			sub 	al, al
			cld
			repne scasb
			not 	rcx
			dec 	rcx
			mov 	rax, rcx 
			pop 	rdi
			ret