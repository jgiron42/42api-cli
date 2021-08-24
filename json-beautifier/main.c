#include <unistd.h>

int main() {
	char buf;
	int depth = 0;
	char quote = 0;
	char escaped = 0;
	char key = 1;

	while (read(0, &buf, 1))
	{
		if (buf == '\"')
		{
			if (quote && !escaped)
			{
				quote = 0;
				write(1, &buf, 1);
				write(1,"\033[0;0m", 6);
			}
			else
			{
				quote = 1;
				if (key)
					write(1,"\033[1;34m", 7);
				else
					write(1,"\033[0;32m", 7);
				write(1, &buf, 1);
			}
			escaped = 0;
		}
		else if (buf == '\\')
		{
			write(1, &buf, 1);
			escaped = !escaped;
		}
		else if (quote)
		{
			write(1, &buf, 1);
			escaped = 0;
		}
		else if (buf == '[' || buf == '{' || buf == ',')
		{
			write(1,"\033[0;0m", 6);
			write(1, &buf, 1);
			write(1, "\n", 1);
			if (buf != ',')
				depth++;
			for (int i = 0; i < depth; i++)
				write(1, "  ",2);
			key = 1;
		}
		else if (buf == ']' || buf == '}')
		{
			depth--;
			write(1, "\n", 1);
			for (int i = 0; i < depth; i++)
				write(1, "  ",2);
			write(1, &buf, 1);
		}
		else if (buf == ':')
		{
			write(1, &buf, 1);
			write(1, " ", 1);
			key = 0;
		}
		else
		{
			if (buf == 'n')
				write(1,"\033[0;90m", 7);
			write(1, &buf, 1);
			escaped = 0;
		}

	}
	write(1, "\n", 1);
}
