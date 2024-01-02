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
