; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_swap.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/10/09 17:22:27 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/10/09 17:22:30 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;


; void	ft_swap(int *a, int *b)

section .text
	global _ft_swap

_ft_swap:
			mov 	rdx, [rdi]
			mov 	r8, [rsi]
			mov 	[rsi], rdx
			mov 	[rdi], r8