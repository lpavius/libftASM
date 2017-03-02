; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/10/14 18:05:59 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/10/14 18:06:01 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; char	*ft_strdup(const char *s1, size_t n)

section .text
	global _ft_strndup
	extern _malloc

_ft_strndup:
			push 	rdi				;string à copier sauvée
			mov 	rcx, rsi		;on appelle strlen pour avoir la bonne taille
			mov 	rax, rcx		;la len
			push 	rcx				;len sauvée
			mov 	rdi, rax		;malloc cherchera sa taille dans rdi
			call 	_malloc
			pop 	rcx				;len rappelée
			pop 	rsi				;on pop la string dans rsi 
			mov 	rdi, rax		;l'adresse du malloc pour rdi
			cld
			rep movsb

			ret