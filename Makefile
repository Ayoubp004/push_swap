# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abenich <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/05/03 17:00:34 by abenich           #+#    #+#              #
#    Updated: 2026/08/29 20:15:00 by abenich          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap

CC = cc
CFLAGS = -Wall -Wextra -Werror -I.

FILES = libft/ft_putchar_fd.c libft/ft_putnbr_fd.c libft/ft_putstr_fd.c \
		libft/ft_putendl_fd.c libft/split_str.c bench/get_stg_output.c bench/get_stg_output2.c \
		src/bench.c operations/sa.c operations/sb.c operations/pb.c \
		operations/pa.c operations/ra.c operations/rra.c operations/rb.c \
		operations/rrb.c operations/ss.c operations/rr.c operations/rrr.c \
		operations/op_helper.c sort/strategy.c src/main.c parsing/check.c \
		sort/find_move.c sort/Adaptive.c src/main_helper.c parsing/free.c \
		sort/helper.c libft/ft_split.c

OFILES = $(FILES:.c=.o)

all: $(NAME)

$(NAME): $(OFILES)
	$(CC) $(CFLAGS) $(OFILES) -o $(NAME)
	@echo "Done."

clean:
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.SECONDARY: $(OFILES)

.PHONY: all clean fclean re
