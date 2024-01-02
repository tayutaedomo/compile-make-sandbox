# compile-make-sandbox
Try compiling and make command


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


# c-greet
```bash
$ cd c-greet
$ make
$ ./main
$ make clean
```

# c-greet-cmake
```bash
$ cd c-greet-cmake
$ mkdir -p build && cd build
$ cmake ..
-- The C compiler identification is GNU 11.4.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /workspace/c-greet-cmake/build
$ make
[ 33%] Building C object CMakeFiles/main.dir/main.c.o
[ 66%] Building C object CMakeFiles/main.dir/greet.c.o
[100%] Linking C executable main
[100%] Built target main
$ ./main
Hello World!
$ rm -rf build
```
