NAME = filter_M

FLAGS = -Wall -Wextra -Werror
LIB_DIR = libft/
HEADER_DIR = includes/

############# PROJECT FILES ##################
SRC =			filter.c

SRC_DIR =		src/
################################################

.PHONY: all clean fclean re

all: $(NAME)

$(NAME):
#@make -C $(LIB_DIR)
	@gcc $(addprefix $(SRC_DIR),$(SRC)) -L. $(LIB_DIR)libft.a -o $(NAME) -lm

clean:
#@make clean -C $(LIB_DIR)
	@rm -Rf $(OBJ_DIR)

fclean: clean
#@make fclean -C $(LIB_DIR)
	@rm -f $(NAME)

re: fclean all
