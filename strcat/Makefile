CC = gcc
CFLAGS = -c

all: test

test: main.o strcat.o
	$(CC) -o test main.o strcat.o

main.o: main.c
	$(CC) $(CFLAGS) main.c

strcat.o: strcat.s
	$(CC) $(CFLAGS) strcat.s

clean:
	rm -f *.o test