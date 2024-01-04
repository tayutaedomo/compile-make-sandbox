# c-greet

```bash
$ cd c-greet
$ make
gcc -Wall -c main.c
gcc -Wall -c greet.c
gcc -Wall main.o greet.o -o main

$ ./main
Hello World!

$ make clean
rm -f *.o main
```
