# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lpavius <lpavius@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/18 15:47:47 by lpavius           #+#    #+#              #
#    Updated: 2015/02/18 15:47:51 by lpavius          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
SRCASM = ft_isalnum.s ft_isalpha.s ft_isascii.s ft_isdigit.s ft_isprint.s	\
		 ft_tolower.s ft_toupper.s ft_bzero.s ft_strcat.s ft_puts.s ft_strlen.s \
		 ft_memset.s ft_memcpy.s ft_strdup.s ft_swap.s ft_isspace.s ft_putstr.s \
		 ft_strnlen.s ft_strndup.s ft_cat.s
SRC = main.c 
OBJASM = $(SRCASM:.s=.o)
INCDIR = includes/
ASM = nasm
ASMFLAGS = -f macho64
CC = gcc
CFLAGS = -Wall -Wextra -Werror 
LDFLAGS = -I $(INCDIR)

all: $(NAME)

$(NAME): $(OBJASM)
		@ar rc $@ $^
		@ranlib $@
		@echo "\033[1;35m$(NAME) created !! (^_^) \033[0m"

%.o: %.s
		@$(ASM) $(ASMFLAGS) $<

test:
		@$(CC) $(CFLAGS) -o $@ $(SRC) $(LDFLAGS) -L. -lfts
		./$@

clean:
		@/bin/rm -f $(OBJASM)
		@echo "\033[31mObject files deleted !\033[0m"

fclean: clean
		@/bin/rm -f $(NAME)
		@/bin/rm -rf test
		@echo "\033[31m$(NAME) & test* deleted !\033[0m"

re: fclean all

.PHONY: all clean fclean test re