; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/17 18:27:12 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/02/17 18:28:52 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; int	ft_isalnum(int c)

section .text
	global _ft_isalnum
	extern	_ft_isalpha
	extern	_ft_isdigit

_ft_isalnum:
			call	_ft_isalpha
			cmp		rax, 1
			je		.true
			call	_ft_isdigit
			cmp 	rax, 1
			je 		.true 	
			mov 	rax, 0
			ret
	.true:
			mov 	rax, 1
			ret