SRCS = 	 main.cpp 
OBJS = ${SRCS:.cpp=.o}
CFLAGS = -Wall -Wextra -Werror
.cpp.o:
	clang++ $(CFLAGS) -c $< -o $(<:.cpp=.o)
NAME =  api_autocomplete 
all: $(NAME)
$(NAME): $(OBJS)
	clang++ $(CFLAGS) -o $(NAME) $(OBJS)
clean:
	rm -f $(OBJS)
fclean: clean
	rm -f $(NAME)
re: fclean $(NAME)
.PHONY: clean fclean re
