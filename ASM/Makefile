# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maginist <maginist@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/20 14:46:55 by maginist          #+#    #+#              #
#    Updated: 2020/11/20 17:52:37 by maginist         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

NASM = nasm -f elf64 
CC = gcc
FLAGS = -Wall -Wextra -Werror

S_COLLEEN = Colleen.s
S_GRACE = Grace.s
S_SULLY = Sully.s

OBJ1 = $(S_COLLEEN:.s=.o)
OBJ2 = $(S_GRACE:.s=.o)
OBJ3 = $(S_SULLY:.s=.o)

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

%.o: %.s
	@$(NASM) $< 

clean :
	@rm -rf $(OBJ1) $(OBJ2) $(OBJ3) 
	@echo "$(_BLUE)======< CLEAN PROJECT >======$(_END)"

fclean : clean
	@rm -f $(COLLEEN) $(GRACE) $(SULLY) Grace_kid.s Sully_*
	@echo "$(_BLUE)======< FCLEAN PROJECT >======$(_END)"

re : fclean all