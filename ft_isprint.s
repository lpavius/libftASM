; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/17 18:59:01 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/02/17 18:59:06 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; int	ft_isprint(int c)

section .text
	global _ft_isprint

_ft_isprint:
			cmp 	rdi, 32
			jb 		.false
			cmp 	rdi, 126
			ja 		.false
			cmp 	rdi, 32
			jae 	.true 

	.false:
			mov 	rax, 0
			ret

	.true:
			mov 	rax, 1
			ret		