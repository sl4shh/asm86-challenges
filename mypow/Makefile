all:
	gcc -fPIE -c -o mypow.o mypow.s
	gcc -fPIE -c -o main.o main.c
	gcc -no-pie *.o -o main -lc
	./main