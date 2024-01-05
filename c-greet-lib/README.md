# c-greet-lib

## Shared
```bash
$ cd c-greet-lib
$ mkdir build && cd build

$ cmake ..
-- The C compiler identification is GNU 11.4.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /workspace/c-greet-lib/build

$ make
[ 25%] Building C object CMakeFiles/greet-lib.dir/greet-lib.c.o
[ 50%] Linking C shared library libgreet-lib.so
[ 50%] Built target greet-lib
[ 75%] Building C object CMakeFiles/main.dir/main.c.o
[100%] Linking C executable main
[100%] Built target main

$ make install
Consolidate compiler generated dependencies of target greet-lib
[ 50%] Built target greet-lib
Consolidate compiler generated dependencies of target main
[100%] Built target main
Install the project...
-- Install configuration: ""
-- Installing: /usr/local/lib/libgreet-lib.so.1.0
-- Installing: /usr/local/lib/libgreet-lib.so.1
-- Installing: /usr/local/lib/libgreet-lib.so
-- Installing: /usr/local/include/greet-lib.h
-- Installing: /usr/local/lib/pkgconfig/greet-lib.pc

$ ./main
Hello, World!

$ make uninstall
-- Removing: /usr/local/lib/libgreet-lib.so.1.0
-- Removing: /usr/local/lib/libgreet-lib.so.1
-- Already removed: /usr/local/lib/libgreet-lib.so.1
-- Removing: /usr/local/lib/libgreet-lib.so
-- Already removed: /usr/local/lib/libgreet-lib.so
-- Removing: /usr/local/include/greet-lib.h
-- Removing: /usr/local/lib/pkgconfig/greet-lib.pc
Built target uninstall

$ ./main
Hello, World!

$ ldconfig
$ ./main
Hello, World!

$ ldd ./main
        linux-vdso.so.1 (0x0000ffffb53d0000)
        libgreet-lib.so.1 => /workspace/c-greet-lib/build/libgreet-lib.so.1 (0x0000ffffb5360000)
        libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffffb51b0000)
        /lib/ld-linux-aarch64.so.1 (0x0000ffffb5397000)

$ rm /workspace/c-greet-lib/build/libgreet-lib.so.1
$ ./main
./main: error while loading shared libraries: libgreet-lib.so.1: cannot open shared object file: No such file or directory
```


## Static
```bash
$ cd c-greet-lib
$ mkdir build && cd build

$ cmake -DBUILD_SHARED_LIBS=OFF ..
-- The C compiler identification is GNU 11.4.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /workspace/c-greet-lib/build

$ make
[ 25%] Building C object CMakeFiles/greet-lib.dir/greet-lib.c.o
[ 50%] Linking C static library libgreet-lib_static.a
[ 50%] Built target greet-lib
[ 75%] Building C object CMakeFiles/main.dir/main.c.o
[100%] Linking C executable main
[100%] Built target main

$ make install
Consolidate compiler generated dependencies of target greet-lib
[ 50%] Built target greet-lib
Consolidate compiler generated dependencies of target main
[100%] Built target main
Install the project...
-- Install configuration: ""
-- Installing: /usr/local/lib/libgreet-lib_static.a

$ ./main
Hello, World!

$ make uninstall
-- Removing: /usr/local/lib/libgreet-lib_static.a
Built target uninstall

$ ls /usr/local/lib/libgreet-lib_static.a
ls: cannot access '/usr/local/lib/libgreet-lib_static.a': No such file or directory
$ ./main
Hello, World!
```
