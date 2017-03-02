; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/18 16:49:12 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/02/18 16:49:15 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; int	ft_tolower(int c)

section .text
	global _ft_tolower

_ft_tolower:
			cmp 	rdi, 65
			jb 		.normal
			cmp 	rdi, 90
			ja 		.normal
			cmp 	rdi, 65
			jae 	.lower

	.normal:
			mov 	rax, rdi
			ret

	.lower :
			mov 	rax, rdi
			add 	rax, 32
			ret