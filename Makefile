Exercise: test.o 3Dvector.o
	gcc -o Exercise test.o 3Dvector.o
	
test.o: test.c
	gcc -c test.c -o test.o
	
3Dvector.o: include/3Dvector.c 
	gcc -c include/3Dvector.c -o 3Dvector.o 
	
install: Exercise
	install -D Exercise /home/anton/Exercise
	
clean:
	rm -f *.o Exercise
	
.PHONY: clean
