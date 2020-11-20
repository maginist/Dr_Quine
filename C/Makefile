# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maginist <maginist@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/18 13:04:34 by maginist          #+#    #+#              #
#    Updated: 2020/11/18 14:42:44 by maginist         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

CC = clang
FLAGS = -Wall -Werror -Wextra

S_COLLEEN = Colleen.c
S_GRACE = Grace.c
S_SULLY = Sully.c

OBJ1 = $(S_COLLEEN:.c=.o)
OBJ2 = $(S_GRACE:.c=.o)
OBJ3 = $(S_SULLY:.c=.o)

# Colors
CK = $'\033[30m$'
_RED = $'\033[31m$'
_GREEN = $'\033[32m$'
_YELLOW = $'\033[33m$'
_BLUE = $'\033[34m$'
_PURPLE = $'\033[35m$'
_CYAN = $'\033[36m$'
_GREY = $'\033[37m$'
_END=$'\033[0m$'



.PHONY :	all clean fclean re

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN) : $(OBJ1)
		@$(CC) $(FLAGS) -o $(COLLEEN) $(OBJ1)
		@echo "$(_GREEN)[ COLLEEN DONE ]$(_END)"

$(GRACE) : $(OBJ2)
		@echo "\n"
		@$(CC) $(FLAGS) -o $(GRACE) $(OBJ2)
		@echo "$(_GREEN)[ GRACE DONE ]$(_END)"

$(SULLY) : $(OBJ3)
		@echo "\n"
		@$(CC) $(FLAGS) -o $(SULLY) $(OBJ3)
		@echo "$(_GREEN)[ SULLY DONE ]$(_END)"

%.o: %.c
	@$(CC) $(FLAGS) -c $< -o $@

clean :
	@rm -rf $(OBJ1) $(OBJ2) $(OBJ3) 
	@echo "$(_BLUE)======< CLEAN PROJECT >======$(_END)"

fclean : clean
	@rm -f $(COLLEEN) $(GRACE) $(SULLY) Grace_kid.c Sully_*
	@echo "$(_BLUE)======< FCLEAN PROJECT >======$(_END)"

re : fclean all