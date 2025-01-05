all:
	gcc -fPIE -c -o mystrcpy.o mystrcpy.s
	gcc -fPIE -c -o main.o main.c
	gcc -no-pie *.o -o main -lc 
	./main