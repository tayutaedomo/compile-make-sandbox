# fortran-greet-static

## libgreet
```bash
$ cd fortran-greet-static/libgreet
$ mkdir build && cd build

$ cmake ..
-- The Fortran compiler identification is GNU 11.4.0
-- Detecting Fortran compiler ABI info
-- Detecting Fortran compiler ABI info - done
-- Check for working Fortran compiler: /usr/bin/f95 - skipped
-- Configuring done
-- Generating done
-- Build files have been written to: /workspace/fortran-greet-static/libgreet/build

$ cmake --build . --target install
Scanning dependencies of target greet
[ 50%] Building Fortran object CMakeFiles/greet.dir/greet.f90.o
[100%] Linking Fortran static library libgreet.a
[100%] Built target greet
Install the project...
-- Install configuration: ""
-- Installing: /usr/local/lib/libgreet.a
-- Up-to-date: /usr/local/include
-- Installing: /usr/local/include/greet_module.mod
```


## app

```bash
$ cd fortran-greet-static/app
$ mkdir build && cd build

$ cmake ..
-- The Fortran compiler identification is GNU 11.4.0
-- Detecting Fortran compiler ABI info
-- Detecting Fortran compiler ABI info - done
-- Check for working Fortran compiler: /usr/bin/f95 - skipped
-- Configuring done
-- Generating done
-- Build files have been written to: /workspace/fortran-greet-static/app/build

$ cmake --build . --target install
Scanning dependencies of target main
[ 50%] Building Fortran object CMakeFiles/main.dir/main.f90.o
[100%] Linking Fortran executable main
[100%] Built target main
Install the project...
-- Install configuration: ""
-- Installing: /usr/local/bin/main

$ main
 Hello World!

$ ldd main
        linux-vdso.so.1 (0x0000ffff810f3000)
        libgfortran.so.5 => /lib/aarch64-linux-gnu/libgfortran.so.5 (0x0000ffff80f20000)
        libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffff80d70000)
        libm.so.6 => /lib/aarch64-linux-gnu/libm.so.6 (0x0000ffff80cd0000)
        libgcc_s.so.1 => /lib/aarch64-linux-gnu/libgcc_s.so.1 (0x0000ffff80ca0000)
        /lib/ld-linux-aarch64.so.1 (0x0000ffff810ba000)
```
