; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isspace.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/10/09 17:59:47 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/10/09 17:59:50 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;


; int	ft_isspace(int c);

section .text
	global _ft_isspace

_ft_isspace:
			cmp 	rdi, 9
			jb 		.false
			cmp 	rdi, 13
			jbe 	.true
			cmp 	rdi, 32
			je 		.true

	.false:
			mov 	rax, 0
			ret 

	.true:
			mov 	rax, 1
			ret