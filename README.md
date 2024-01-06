# compile-make-sandbox
Try compiling and make/cmake command.


## docker
```bash
$ npm run docker:build
$ npm run docker:run
```


## c-main
Execute in docker container.

```bash
$ cd c-main

$ make
gcc -Wall main.c -o main

$ ./main
Hello, World!

$ make clean
rm -f *.o main
```


## c-greet
[c-greet/README.md](./c-greet/README.md)


## c-greet-cmake
[c-greet-cmake/README.md](./c-greet-cmake/README.md)


## c-greet-lib
[c-greet-lib/README.md](./c-greet-lib/README.md)


## c-greet-module
[c-greet-module/README.md](./c-greet-module/README.md)


## c-greet-pkgconfig
[c-greet-pkgconfig/README.md](./c-greet-pkgconfig/README.md)


## fortran-main

```bash
$ cd fortran-main
$ make
gfortran -Wall -Wextra -O2 -o main main.f90

$ ./main
 Hello, world!

$ make clean
rm -f main
```


## fortran-greet
[fortran-greet/README.md](./fortran-greet/README.md)


## fortran-greet-cmake
[fortran-greet-cmake/README.md](./fortran-greet-cmake/README.md)


## fortran-greet-shared
[fortran-greet-shared/README.md](./fortran-greet-shared/README.md)


## fortran-greet-static
[fortran-greet-static/README.md](./fortran-greet-static/README.md)
