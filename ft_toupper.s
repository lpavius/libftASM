; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/18 18:31:32 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/02/18 18:31:34 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; int	ft_toupper(int c)

section .text
	global _ft_toupper

_ft_toupper:
			cmp 	rdi, 97
			jl 		.normal
			cmp 	rdi, 122
			jg 		.normal
			sub 	rdi, 32

	.normal:
			mov 	rax, rdi
			ret