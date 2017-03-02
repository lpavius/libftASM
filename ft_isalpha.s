; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/02/17 17:03:19 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/02/17 17:52:24 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; int	ft_isalpha(int c)

section .text
	global _ft_isalpha

_ft_isalpha:
			cmp		rdi, 65		;exclusion
			jb		.false
			cmp		rdi, 122	;exclusion
			ja		.false
			cmp		rdi, 90
			jbe		.true
			cmp		rdi, 97
			jae		.true

	.false:
			mov		rax, 0
			ret

	.true:
			mov		rax, 1
			ret
