all:
	gcc -fPIE -c -o my_strlen.o my_strlen.s
	gcc -fPIE -c -o main.o main.c
	gcc -no-pie *.o -o main -lc
	./main