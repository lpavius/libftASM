; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/17 18:52:49 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/02/17 18:52:52 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; int	ft_isascii(int c)

section .text
	global _ft_isascii

_ft_isascii:
			cmp 	rdi, 0
			jb 		.false
			cmp 	rdi, 127
			ja 		.false
			cmp 	rdi, 0
			jae 	.true 

	.false:
			mov 	rax, 0
			ret

	.true:
			mov 	rax, 1
			ret		