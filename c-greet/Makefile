CC=gcc
CFLAGS=-Wall

all: main

main: main.o greet.o
	$(CC) $(CFLAGS) main.o greet.o -o main

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

greet.o: greet.c
	$(CC) $(CFLAGS) -c greet.c

clean:
	rm -f *.o main
