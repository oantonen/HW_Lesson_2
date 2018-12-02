NAME = is_alpha

OBJ = func.o main.o 

LIBNAME = my_func.a

SRC = main.cpp

SRCLIB = func.cpp

CFLAGS = -Wall -Werror -Wextra

CXX = g++

all:	create_lib $(NAME)
	
$(NAME): 
	$(CXX) -o $(NAME) $(CFLAGS) $(SRC) $(LIBNAME)

create_lib:
	$(CXX) -c $(CFLAGS) $(SRCLIB)
	ar rc $(LIBNAME) func.o 

clean:
	@/bin/rm -rf $(OBJ)

fclean: clean
	@/bin/rm -f $(NAME) my_func.a
	@echo "All clear"

re: fclean all

