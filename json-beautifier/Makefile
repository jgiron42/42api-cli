SRCS = 	 main.c 
OBJS = ${SRCS:.c=.o}
CFLAGS = -Wall -Wextra -Werror 
.c.o:
	gcc $(CFLAGS) -c $< -o $(<:.c=.o)
NAME =  json-beautifier 
all: $(NAME)
$(NAME): $(OBJS)
	gcc $(CFLAGS) -o $(NAME) $(OBJS)
clean:
	rm -f $(OBJS)
fclean: clean
	rm -f $(NAME)
re: fclean $(NAME)
.PHONY: clean fclean re
