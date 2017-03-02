; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/17 17:55:06 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/02/17 17:55:13 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; int	ft_isdigit(int c)

section .text
	global _ft_isdigit

_ft_isdigit:
			cmp 	rdi, 48
			jb 		.false
			cmp 	rdi, 57
			ja 		.false
			cmp 	rdi, 48
			jae 	.true

	.false:
			mov 	rax, 0
			ret

	.true:
			mov 	rax, 1
			ret