# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mokariou <mokariou@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/11 14:14:48 by mokariou          #+#    #+#              #
#    Updated: 2024/11/11 14:29:22 by mokariou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap

CC = gcc
GFLAGS = -Wall -Wextra -Werror
NORM = norminette

OBJ_DIR = obj/
SRC = operations/push.c operations/reverse_rotate.c \
      operations/rotate.c operations/sort_stack.c \
      operations/sort_three.c operations/swap.c \
      src/errors.c src/ft_split.c src/init.c \
      src/init_a_to_b.c src/init_b_to_a.c src/push_swap.c \
      src/utils.c
SRCPR = printf/ft_address.c printf/ft_print_hex.c \
        printf/ft_printf.c printf/ft_unsigned.c printf/printnum.c \
        printf/putstr.c
SRC_LIBFT = libft/ft_atoi.c libft/ft_bzero.c libft/ft_calloc.c \
            libft/ft_isalnum.c libft/ft_isalpha.c libft/ft_isascii.c \
            libft/ft_isdigit.c libft/ft_isprint.c libft/ft_itoa.c \
            libft/ft_lstadd_back_bonus.c libft/ft_lstadd_front_bonus.c \
            libft/ft_lstclear_bonus.c libft/ft_lstdelone_bonus.c \
            libft/ft_lstiter_bonus.c libft/ft_lstlast_bonus.c \
            libft/ft_lstmap_bonus.c libft/ft_lstnew_bonus.c \
            libft/ft_lstsize_bonus.c libft/ft_memchr.c \
            libft/ft_memcmp.c libft/ft_memcpy.c libft/ft_memmove.c \
            libft/ft_memset.c libft/ft_putchar_fd.c libft/ft_putendl_fd.c \
            libft/ft_putnbr_fd.c libft/ft_putstr_fd.c libft/ft_split.c \
            libft/ft_strchr.c libft/ft_strdup.c libft/ft_striteri.c \
            libft/ft_strjoin.c libft/ft_strlcat.c libft/ft_strlcpy.c \
            libft/ft_strlen.c libft/ft_strmapi.c libft/ft_strncmp.c \
            libft/ft_strnstr.c libft/ft_strrchr.c libft/ft_strtrim.c \
            libft/ft_substr.c libft/ft_tolower.c libft/ft_toupper.c

SRCS = $(SRC) $(SRCPR) $(SRC_LIBFT)
OBJ = $(patsubst %.c, $(OBJ_DIR)%.o, $(SRCS))

all: $(NAME)


$(NAME): $(OBJ)
	$(CC) $(GFLAGS) $(OBJ) -o $(NAME)


$(OBJ_DIR)%.o: %.c
	@mkdir -p $(OBJ_DIR)
	@mkdir -p $(dir $@)
	$(CC) $(GFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

norm:
	$(NORM)


