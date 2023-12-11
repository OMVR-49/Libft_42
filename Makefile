# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ojebbari <ojebbari@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/26 17:25:14 by ojebbari          #+#    #+#              #
#    Updated: 2023/12/11 01:30:24 by ojebbari         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	./Mandatory/ft_calloc.c ./Mandatory/ft_itoa.c ./Mandatory/ft_bzero.c         \
		./Mandatory/ft_putstr_fd.c ./Mandatory/ft_isalnum.c ./Mandatory/ft_isalpha.c \
		./Mandatory/ft_isascii.c ./Mandatory/ft_isdigit.c ./Mandatory/ft_isprint.c   \
		./Mandatory/ft_itoa.c ./Mandatory/ft_memchr.c ./Mandatory/ft_memcmp.c        \
		./Mandatory/ft_memcpy.c ./Mandatory/ft_memmove.c ./Mandatory/ft_memset.c     \
		./Mandatory/ft_split.c ./Mandatory/ft_strchr.c ./Mandatory/ft_strdup.c       \
		./Mandatory/ft_strjoin.c ./Mandatory/ft_strlcat.c ./Mandatory/ft_strlcpy.c   \
		./Mandatory/ft_strmapi.c ./Mandatory/ft_strncmp.c ./Mandatory/ft_strnstr.c   \
		./Mandatory/ft_strrchr.c ./Mandatory/ft_strtrim.c ./Mandatory/ft_tolower.c   \
		./Mandatory/ft_toupper.c ./Mandatory/ft_atoi.c ./Mandatory/ft_strlen.c       \
		./Mandatory/ft_substr.c ./Mandatory/ft_putchar_fd.c ./Mandatory/ft_striteri.c\
		./Mandatory/ft_putnbr_fd.c  ./Mandatory/ft_putendl_fd.c                      \

SRCS_BONUS =./Bonus/ft_lstnew.c ./Bonus/ft_lstadd_front.c ./Bonus/ft_lstsize.c       \
			./Bonus/ft_lstadd_back.c ./Bonus/ft_lstlast.c							 \

OBJS = $(SRCS:.c=.o)
OBJS_BONUS = $(SRCS_BONUS:.c=.o)

NAME = libft.a
all: $(NAME)

%.o: %.c libft.h
		cc -Wall -Wextra -Werror -c -o $@ $<
$(NAME) : $(OBJS)
		ar rc $(NAME) $(OBJS)
clean :
		rm -rf $(OBJS) $(OBJS_BONUS)
fclean : clean
		rm -rf $(NAME)
bonus : $(OBJS_BONUS)
		ar rc $(NAME) $(OBJS_BONUS)
re : fclean all