# fortran-greet

```bash
$ cd fortran-greet
$ make
gfortran -Wall -Wextra -O2 -c greet.f90
gfortran -Wall -Wextra -O2 -c main.f90
gfortran -Wall -Wextra -O2 -o main greet.o main.o

$ ./main
 Hello World!

$ make clean
rm -f main greet.o main.o *.mod
```
