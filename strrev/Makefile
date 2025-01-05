CC = gcc
all:
	$(CC) -fPIE -c *.[cs]
	$(CC) -no-pie *.o -o mystrrev -lc
	./mystrrev