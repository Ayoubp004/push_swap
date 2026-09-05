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
		libft/ft_strcmp.c parsing/parse_numbers.c bench/get_strat_output.c \
		bench/strategy_parser.c bench/bench_display.c operations/sa.c \
		operations/sb.c operations/pb.c operations/pa.c operations/ra.c \
		operations/rra.c operations/rb.c operations/rrb.c operations/ss.c \
		operations/rr.c operations/rrr.c sort/chunk_sort.c sort/small_sort.c \
		src/main.c parsing/check.c sort/sort_moves.c sort/sort_strategies.c \
		src/sort_dispatch.c src/sort_runner.c parsing/parse_utils.c \
		sort/linear_sort.c libft/ft_split.c

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
