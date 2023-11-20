CC = cc
FLAGS =  -Wall -Werror -Wextra
CFILES = ft_put_all_number.c\
            ft_ft.c\
			ft_ft2.c\
            ft_printf.c
OFILES = ${CFILES:.c=.o}
NAME = libftprintf.a
INC = ft_printf.h


all : ${NAME}
bonus : all

${NAME} : ${OFILES}
	ar -rc ${NAME} ${OFILES}

%.o:%.c ${INC}
	${CC} -c ${FLAGS} $<
clean :
	rm -f ${OFILES} 

fclean : clean
	rm -f ${NAME}

re : fclean all