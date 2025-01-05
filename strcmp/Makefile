CC = gcc
CFLAGS = -c -Wall -Wextra

all: test

test: main.o strcmp.o
	$(CC) -o test main.o strcmp.o

main.o: main.c
	$(CC) $(CFLAGS) main.c

strcmp.o: strcmp.s
	$(CC) $(CFLAGS) strcmp.s

clean:
	rm -f *.o test