# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maginist <maginist@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/25 13:04:57 by maginist          #+#    #+#              #
#    Updated: 2020/11/25 13:22:29 by maginist         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

PY = python3

S_COLLEEN = Colleen.py
S_GRACE = Grace.py
S_SULLY = Sully.py


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

$(COLLEEN) : $(S_COLLEEN)
		@$(PY) $(S_COLLEEN) > COLLEEN_tmp
		@echo "$(_GREEN)[ COLLEEN DONE ]$(_END)"

$(GRACE) : $(S_GRACE)
		@echo "\n"
		@$(PY) $(S_GRACE)
		@echo "$(_GREEN)[ GRACE DONE ]$(_END)"

$(SULLY) : $(S_SULLY)
		@echo "\n"
		@$(PY) $(S_SULLY)
		@echo "$(_GREEN)[ SULLY DONE ]$(_END)"

clean :
	@rm -f COLLEEN_tmp
	@echo "$(_BLUE)======< cleaning >======$(_END)"

fclean : clean
	@rm -f $(COLLEEN) $(GRACE) $(SULLY) Grace_kid.py Sully_*
	@echo "$(_BLUE)======< Fclean complete >======$(_END)"

re : fclean all