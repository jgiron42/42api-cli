CC = c++
SRCS = 	 main.cpp 
OBJS = ${SRCS:.cpp=.o}
CFLAGS = 
.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.cpp=.o)
NAME =  api_autocomplete 
all: $(NAME)
$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS)
clean:
	rm -f $(OBJS)
fclean: clean
	rm -f $(NAME)
re: fclean $(NAME)
.PHONY: clean fclean re
