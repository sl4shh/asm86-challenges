CC = gcc
CFLAGS = -c -Wall -Wextra -fPIE
ASFLAGS = -c -Wall -Wextra -fPIE

all: test

test: main.o puts.o
	$(CC) -o test main.o puts.o -no-pie

main.o: main.c
	$(CC) $(CFLAGS) main.c

puts.o: puts.s
	$(CC) $(ASFLAGS) puts.s

clean:
	rm -f *.o test