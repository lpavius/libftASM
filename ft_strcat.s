; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lpavius <lpavius@student.42.fr>            +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/19 17:25:46 by lpavius           ;+;    ;+;              ;
;    Updated: 2015/05/19 17:25:49 by lpavius          ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

; char	*ft_strcat(char *s1, const char *s2)

section .text
	global _ft_strcat

_ft_strcat :
			mov 	rax, rdi
			cmp 	rdi, 0
			je 		.end
			cmp 	rsi, 0
			je 		.end

	.part1:
			cmp 	byte [rdi], 0
			je 		.part2
			inc 	rdi
			jmp 	.part1


	.part2:
			cmp 	byte [rsi], 0
		 	je 		.end
			movsb
			jmp 	.part2

	.end:
			ret















; section .text
; 	global _ft_strcat

; _ft_strcat :
; 	mov rax, rdi

; first:
; 	cmp [rdi], byte 0
; 	je next
; 	inc rdi
; 	jmp first

; next:
; 	cmp [rsi], byte 0
; 	je end
; 	mov r11, [rsi]
; 	mov [rdi], r11
; 	inc rsi
; 	inc rdi
; 	jmp next
; end:
; 	ret