/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lpavius <lpavius@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/17 17:41:25 by lpavius           #+#    #+#             */
/*   Updated: 2015/06/01 18:56:01 by lpavius          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <stdio.h>
# include <ctype.h>
# include <strings.h>
# include <stdlib.h>
# include <string.h>


int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_tolower(int c);
int		ft_toupper(int c);
void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *s1, const char *s2);
int		ft_puts(const char *s);
size_t	ft_strlen(const char *str);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *s1, const void *s2, size_t n);
char	*ft_strdup(const char *s1);
void	ft_cat(int fd);

void	ft_swap(int *a, int *b);
int 	ft_isspace(int c);
void 	ft_putstr(char const *s);
size_t	ft_strnlen(const char *s, size_t maxlen);
char	*ft_strndup(const char *s1, size_t n);


#endif /************************************************************ LIBFTS_H */
