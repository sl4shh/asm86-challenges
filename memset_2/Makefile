CC = gcc
CFLAGS = -c -Wall -Wextra -fPIE
ASFLAGS = -c -Wall -Wextra -fPIE

all: test

test: main.o memset.o
	$(CC) -o test main.o memset.o -no-pie

main.o: main.c
	$(CC) $(CFLAGS) main.c

memset.o: memset.s
	$(CC) $(ASFLAGS) memset.s

clean:
	rm -f *.o test