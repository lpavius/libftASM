; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/09/24 22:05:48 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/09/24 22:05:50 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; char	*ft_strdup(const char *s1)

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _malloc

_ft_strdup:
			push 	rdi				;string à copier sauvée
			call 	_ft_strlen		;on appelle strlen pour avoir la bonne taille
			add 	rax, 1			;on donne +1 à la taille pour le \0
			mov 	rcx, rax		;la len
			push 	rcx				;len sauvée
			mov 	rdi, rax		;malloc cherchera sa taille dans rdi
			call 	_malloc
			pop 	rcx				;len rappelée
			pop 	rsi				;on pop la string dans rsi 
			mov 	rdi, rax		;l'adresse du malloc pour rdi
			cld
			rep movsb

			ret

