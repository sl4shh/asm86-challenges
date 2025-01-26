all:
	gcc -fPIE *.[cs] -c -g
	gcc -no-pie *.o -o test -g
	./test
clean:
	rm -f *.o test