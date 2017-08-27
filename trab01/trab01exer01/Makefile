main: main.o entradaSaida.o operacaoGeometrica.o
	gcc  main.o entradaSaida.o  operacaoGeometrica.o -lm -o main

main.o: main.c
	gcc -c main.c

entradaSaida.o: entradaSaida.c entradaSaida.h
	gcc -c entradaSaida.c

operacaoGeometrica.o: operacaoGeometrica.c operacaoGeometrica.h
	gcc  -c  operacaoGeometrica.c

clear:
	rm *.o
