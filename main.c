/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lpavius <lpavius@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/17 17:33:45 by lpavius           #+#    #+#             */
/*   Updated: 2015/02/17 17:33:53 by lpavius          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <ctype.h>
#include <strings.h>
#include "libfts.h"
#include <fcntl.h>
#include <unistd.h>


int		main()
{

/* bzero */
	printf("___________\033[1;32mft_bzero\033[0m\n");

	char *mzero;

	mzero = (char *)malloc(sizeof(char) * 33);
	if ( !mzero )
		{
			printf("error malloc with ft_bzero");
			exit(0);
		}
	printf("bzero    :\n");
	mzero = strcpy(mzero, "**********");
	printf("	before: -->%s<--\n", mzero);
	bzero(mzero, 33);
	printf("	after : -->%s<--\n", mzero);

	printf("ft_bzero :\n");
	mzero = strcpy(mzero, "**********");
	printf("	before: -->%s<--\n", mzero);
	ft_bzero(mzero, 1);
	printf("	after : -->%s<--\n", mzero);

	free( mzero );
/* strcat */
	printf("__________\033[1;32mft_strcat\033[0m\n");
	char *scat1;
	char *scat2;
	char *scat3;
	char *scat4;

	scat1 = (char *)malloc(sizeof(char) * 33);
	if ( !scat1 ){printf("error malloc with ft_strcat1");exit(0);}
	scat2 = (char *)malloc(sizeof(char) * 33);
	if ( !scat2 ){printf("error malloc with ft_strcat2");exit(0);}
	printf("strcat    :\n");
	scat1 = strcpy(scat1, "PoP");
	scat2 = strcpy(scat2, "1234567890");

	printf("	before: %s - %s\n", scat1, scat2);
	ft_strcat(scat1, scat2);
	printf("	after : %s - %s\n", scat1, scat2);

	free( scat1 );
	free( scat2 );

	scat3 = (char *)malloc(sizeof(char) * 33);
	if ( !scat3 ){printf("error malloc with ft_strcat3");exit(0);}
	scat4 = (char *)malloc(sizeof(char) * 33);
	if ( !scat4 ){printf("error malloc with ft_strcat4");exit(0);}
	printf("ft_strcat :\n");
	scat3 = strcpy(scat3, "PoPP");
	scat4 = strcpy(scat4, "1234567890");

	printf("	before: %s - %s\n", scat3, scat4);
	ft_strcat(scat3, scat4);
	printf("	after : %s - %s\n ", scat3, scat4);

	free( scat3 );
	free( scat4 );
/* isalpha */
	printf("__________\033[1;32mft_isalpha\033[0m\n");
	int		c;
	
	c = 0;
	printf("isalpha    : ");
	while (c++ < 128)
	{
		if(isalpha(c) == 1)
			printf("%c", c);
	}
	printf("\nft_isalpha : ");
	c = 0;
	while (c++ < 128)
	{
		if(ft_isalpha(c) == 1)
			printf("%c", c);
	}
/* isdigit */
	printf("\n__________\033[1;32mft_isdigit\033[0m\n");
	c = 0;
	printf("isdigit    : ");
	while (c++ < 128)
	{
		if(isdigit(c) == 1)
			printf("%c", c);
	}
	printf("\nft_isdigit : ");
	c = 0;
	while (c++ < 128)
	{
		if(ft_isdigit(c) == 1)
			printf("%c", c);
	}
/* isalnum */
	printf("\n__________\033[1;32mft_isalnum\033[0m\n");
	c = 0;
	printf("isalnum    : ");
	while (c++ < 128)
	{
		if(isalnum(c) == 1)
			printf("%c", c);
	}
	printf("\nft_isalnum : ");
	c = 0;
	while (c++ < 128)
	{
		if(ft_isalnum(c) == 1)
			printf("%c", c);
	}
/* isascii */
	printf("\n__________\033[1;32mft_isascii\033[0m\n");
	c = 0;
	printf("isascii    : ");
	while (c++ < 128)
	{
		if(isascii(c) == 1)
			printf("%c", c);
	}
	printf("\nft_isascii : ");
	c = 0;
	while (c++ < 128)
	{
		if(ft_isascii(c) == 1)
			printf("%c", c);
	}
/* isprint */
	printf("\n__________\033[1;32mft_isprint\033[0m\n");
	c = 0;
	printf("isprint    : ");
	while (c++ < 128)
	{
		if(isprint(c) == 1)
			printf("%c", c);
	}
	printf("\nft_isprint : ");
	c = 0;
	while (c++ < 128)
	{
		if(ft_isprint(c) == 1)
			printf("%c", c);
	}
/* toupper */
	printf("\n__________\033[1;32mft_toupper\033[0m\n");
	char	*s1;
	char	*s2;
	int 	i;

	printf("toupper    : ");
	s1 = "toupper";
	i = 0;
	while (s1[i])
	{
		printf("%c", toupper(s1[i++]));
	}
	printf("\nft_toupper : ");
	s2 = "ft_toupper";
	i = 0;
	while (s2[i])
	{
		printf("%c", ft_toupper(s2[i++]));
	}
/* tolower */
	printf("\n__________\033[1;32mft_tolower\033[0m\n");
	char	*s3;
	char	*s4;

	printf("tolower    : ");
	s3 = "TOLOWER";
	i = 0;
	while (s1[i])
	{
		printf("%c", tolower(s3[i++]));
	}
	printf("\nft_tolower : ");
	s4 = "FT_TOLOWER";
	i = 0;
	while (s2[i])
	{
		printf("%c", ft_tolower(s4[i++]));
	}
/* puts */
	printf("\n__________\033[1;32mft_puts\033[0m\n");
	printf("%s", "[puts][\"This is how the puts works\"] ->");
	puts("This is how the puts works");
	printf("%s", "[puts][NULL] ->");
	puts(NULL);
	printf("%s", "\n");

	puts("[ft_puts][\"This is how the puts works\"]->");
	ft_puts("This is how the puts works");
	// puts("\n");
	puts("[ft_puts][NULL] ->");
	ft_puts(NULL);
	//printf("%s", "\n\n");


/* strlen */
	printf("__________\033[1;32mft_strlen\033[0m\n");
	printf("strlen    : \n");
	printf("%9zu: len of \"\"\n", strlen(""));
	printf("%9zu: len of \"c\"\n", strlen("c"));
	printf("%9zu: len of \"cool\"\n", strlen("cool"));
	printf("%9zu: len of \"1234567890\"\n", strlen("1234567890"));
	printf("%9zu: len of \"may strlen be with you\"\n", strlen("may strlen be with you"));

	printf("\nft_strlen : \n");
	printf("%9zu: len of \"\"\n", ft_strlen(""));
	printf("%9zu: len of \"c\"\n", ft_strlen("c"));
	printf("%9zu: len of \"cool\"\n", ft_strlen("cool"));
	printf("%9zu: len of \"1234567890\"\n", ft_strlen("1234567890"));
	printf("%9zu: len of \"may strlen be with you\"\n", ft_strlen("may strlen be with you"));

/* memset */
	printf("\n__________\033[1;32mft_memset\033[0m\n");
	char	mems1[82];
	char	mem1b[82];

	memset(mems1, 62, 82);
	ft_memset(mem1b, 62, 82);

	printf("%s", "memset(mems1, 62, 82)\n\n>< ft_memset(mem1b, 62, 82)\n\n	memcmp(mems1, mem1b, 82)\n\n");
	((memcmp(mems1, mem1b, 82) == 0) ? printf("%s", "[memcmp][mems1, mem1b, 82] -> √\n") : printf("%s", "[memcmp][mems1, mem1b, 82] -> x\n"));
	// printf("%s", "\n\n");


/* memcpy */
	printf("\n__________\033[1;32mft_memcpy\033[0m\n");
	char	mem1[17];
	char	mem2[17];

	memset(mem1, 68, 17);
	memset(mem2, 93, 17);

	ft_memcpy(mem1, mem2, 17);

	printf("%s", "memset(mem1, 68, 17)\nmemset(mem2, 93, 17))\n\n>< ft_memcpy(mem1, mem2, 17)\n\n");
	((memcmp(mem1, mem2, 17) == 0) ? printf("%s", "[memcmp][mem1, mem2, 17] -> √\n") : printf("%s", "[memcmp][mem1, mem2, 17] -> x\n"));
	// printf("%s", "\n\n");


/* strdup */
	printf("\n__________\033[1;32mft_strdup\033[0m\n");
	char	*str1;
	char	*str2;
	char	*str3;

	char	*str1b;
	char	*str2b;
	char	*str3b;

	str1 = strdup("This is my str");
	str2 = strdup("");
	str3 = strdup("ok");

	str1b = ft_strdup("This is my str");
	str2b = ft_strdup("");
	str3b = ft_strdup("ok");

	printf("str1 = strdup(\"This is my str\")\n");
	printf("str2 = strdup(\"\")\n");
	printf("str3 = strdup(\"ok\")\n\n");
	printf(">< str1b = ft_strdup(\"This is my str\")\n");
	printf(">< str2b = ft_strdup(\"\")\n");
	printf(">< str3b = ft_strdup(\"ok\")\n\n");

	((strcmp(str1b, str1) == 0) ? printf("%s", "[strcmp][ft_strdup == strdup][\"This is my str\"] -> √\n") : printf("%s", "	[ft_strdup == strdup][\"This is my str\"] -> x\n"));
	((strcmp(str2b, str2) == 0) ? printf("%s", "[strcmp][ft_strdup == strdup][\"\"] -> √\n") : printf("%s", "	[ft_strdup == strdup][\"\"] -> x\n"));
	((strcmp(str3b, str3) == 0) ? printf("%s", "[strcmp][ft_strdup == strdup][\"ok\"] -> √\n") : printf("%s", "	[ft_strdup == strdup][\"ok\"] -> x\n"));
	// printf("%s", "\n\n");

/* cat */
	printf("\n__________\033[1;32mft_cat\033[0m\n");
	int fd_cat;

	fd_cat = open("ft_puts.s", O_RDONLY);
	if ( fd_cat < 0 ) {ft_puts("error open in ft_cat");exit(0);}

	ft_cat(fd_cat);
	close(fd_cat);

	printf("\n________________________________________ft_cat_neg\n");
	ft_cat(-42);

						/* BONUS */
/* swap */
	printf("\n__________\033[1;34mft_swap\033[0m\n");

	// int i = 0;
	int a[] = {42, 34, 65};
	int b[] = {113, 65, 32};

	// while ()
	// {
		
	// }
	printf("	a = %d ---- b = %d\n", a[01], b[01]);
	ft_swap(&a[01], &b[01]);
	printf("	a = %d ---- b = %d\n", a[01], b[01]);

	// printf("a = %d ---- b = %d\n", *a, *b);
	// ft_swap(a, b);
	// printf("a = %d ---- b = %d\n", *a, *b);

/* isspace */
	printf("\n__________\033[1;34mft_isspace\033[0m\n");

	c = 0;
	printf("isspace    : ");
	while (c++ < 128)
	{
		if(isspace(c) == 1)
			printf("X");
	}
	printf("\nft_isspace : ");
	c = 0;
	while (c++ < 128)
	{
		if(ft_isspace(c) == 1)
			printf("X");
	}

/* putsr */
	printf("\n__________\033[1;34mft_putstr\033[0m\n");
	printf("%s", "[puts][\"This is how the puts works\"] ->");
	puts("This is how the puts works");
	printf("%s", "[puts][NULL] ->");
	puts(NULL);
	printf("%s", "\n");
	puts("[ft_putstr][\"This is how the puts works\"] ->");
	ft_putstr("This is how the puts works");
	printf("\n");
	puts("[ft_putstr][NULL] -> ");
	ft_putstr(NULL);
//	printf("%s", "\n\n");

/* strnlen */
	printf("\n__________\033[1;34mft_strnlen\033[0m\n");
	printf("strnlen    : \n");
	printf("  3 : Maxlen -> %2zu: len of \"\"\n", strnlen("", 3));
	printf(" 10 : Maxlen -> %2zu: len of \"c\"\n", strnlen("c", 10));
	printf("  0 : Maxlen -> %2zu: len of \"cool\"\n", strnlen("cool", 0));
	printf("  4 : Maxlen -> %2zu: len of \"1234567890\"\n", strnlen("1234567890", 4));
	printf(" 30 : Maxlen -> %2zu: len of \"may strlen be with you\"\n", strnlen("may strlen be with you", 30));

	printf("\nft_strnlen : \n");
	printf("  3 : Maxlen -> %2zu: len of \"\"\n", ft_strnlen("", 3));
	printf(" 10 : Maxlen -> %2zu: len of \"c\"\n", ft_strnlen("c", 10));
	printf("  0 : Maxlen -> %2zu: len of \"cool\"\n", ft_strnlen("cool", 0));
	printf("  4 : Maxlen -> %2zu: len of \"1234567890\"\n", ft_strnlen("1234567890", 4));
	printf(" 30 : Maxlen -> %2zu: len of \"may strlen be with you\"", ft_strnlen("may strlen be with you", 30));


/* strndup */

	printf("\n__________\033[1;34mft_strndup\033[0m\n");
	char	*str4;
	char	*str5;
	char	*str6;

	char	*str4b;
	char	*str5b;
	char	*str6b;

	str4 = strndup("This is my str", 10);
	str5 = strndup("", 2);
	str6 = strndup("ok", 1);

	str4b = ft_strndup("This is my str", 10);
	str5b = ft_strndup("", 2);
	str6b = ft_strndup("ok", 1);

	printf("str4 = strndup(\"This is my str\", 10)\n");
	printf("str5 = strndup(\"\", 2)\n");
	printf("str6 = strndup(\"ok\", 1)\n\n");
	printf(">< str4b = ft_strndup(\"This is my str\", 10)\n");
	printf(">< str5b = ft_strndup(\"\", 2)\n");
	printf(">< str6b = ft_strndup(\"ok\", 1)\n\n");

	((strcmp(str4b, str4) == 0) ? printf("%s", "[strcmp][ft_strndup == strndup][\"This is my str\"][10] -> √\n") : printf("%s", "	[ft_strndup == strndup][\"This is my str\"][10] -> x\n"));
	((strcmp(str5b, str5) == 0) ? printf("%s", "[strcmp][ft_strndup == strndup][\"\"][2] -> √\n") : printf("%s", "	[ft_strndup == strndup][\"\"][2] -> x\n"));
	((strcmp(str6b, str6) == 0) ? printf("%s", "[strcmp][ft_strndup == strndup][\"ok\"][1] -> √\n") : printf("%s", "	[ft_strndup == strndup][\"ok\"][1] -> x\n\n"));

	// printf("\n__________\033[1;32mft_cat(0)\033[0m\n");
	// ft_cat(0);

	return (0);
}