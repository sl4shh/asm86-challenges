CC = gcc
CFLAGS = -c -Wall -Wextra

all: test

test: main.o atoi.o
	$(CC) -o test main.o atoi.o

main.o: main.c
	$(CC) $(CFLAGS) main.c

atoi.o: atoi.s
	$(CC) $(CFLAGS) atoi.s

clean:
	rm -f *.o test