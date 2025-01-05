all:
	gcc -fPIE *.[cs] -c
	gcc -no-pie *.o -o test
	./test
clean:
	rm -f *.o test