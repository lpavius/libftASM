; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/09/24 22:05:29 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/09/24 22:05:34 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; void	*ft_memcpy(void *s1, const void *s2, size_t n)

section .text
	global _ft_memcpy

_ft_memcpy:
			mov 	rcx, rdx
			cld
			rep movsb
			mov 	rax, rdi
			ret