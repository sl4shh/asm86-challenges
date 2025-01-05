CC = gcc
CFLAGS = -fPIE
SRC = main.c my_strlen.s
OBJ = $(SRC:.c=.o)

all: main

main: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.s
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) main