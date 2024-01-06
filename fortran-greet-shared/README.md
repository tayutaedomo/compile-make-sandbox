# fortran-greet-shared

## libgreet
```bash
$ cd fortran-greet-shared/libgreet
$ mkdir build && cd build

$ cmake ..
-- The Fortran compiler identification is GNU 11.4.0
-- Detecting Fortran compiler ABI info
-- Detecting Fortran compiler ABI info - done
-- Check for working Fortran compiler: /usr/bin/f95 - skipped
-- Configuring done
-- Generating done
-- Build files have been written to: /workspace/fortran-greet-shared/libgreet/build

$ make
Scanning dependencies of target greet
[ 50%] Building Fortran object CMakeFiles/greet.dir/greet.f90.o
[100%] Linking Fortran shared library libgreet.so
[100%] Built target greet

$ make install
[100%] Built target greet
Install the project...
-- Install configuration: ""
-- Installing: /usr/local/lib/libgreet.so
-- Up-to-date: /usr/local/include
-- Installing: /usr/local/include/greet_module.mod
```

### -fPIC

```bash
$ make VERBOSE=1
/usr/bin/cmake -S/workspace/fortran-greet-shared/libgreet -B/workspace/fortran-greet-shared/libgreet/build --check-build-system CMakeFiles/M
akefile.cmake 0
/usr/bin/cmake -E cmake_progress_start /workspace/fortran-greet-shared/libgreet/build/CMakeFiles /workspace/fortran-greet-shared/libgreet/bu
ild//CMakeFiles/progress.marks
make  -f CMakeFiles/Makefile2 all
make[1]: Entering directory '/workspace/fortran-greet-shared/libgreet/build'
make  -f CMakeFiles/greet.dir/build.make CMakeFiles/greet.dir/depend
make[2]: Entering directory '/workspace/fortran-greet-shared/libgreet/build'
cd /workspace/fortran-greet-shared/libgreet/build && /usr/bin/cmake -E cmake_depends "Unix Makefiles" /workspace/fortran-greet-shared/libgre
et /workspace/fortran-greet-shared/libgreet /workspace/fortran-greet-shared/libgreet/build /workspace/fortran-greet-shared/libgreet/build /w
orkspace/fortran-greet-shared/libgreet/build/CMakeFiles/greet.dir/DependInfo.cmake --color=
Dependee "/workspace/fortran-greet-shared/libgreet/build/CMakeFiles/greet.dir/DependInfo.cmake" is newer than depender "/workspace/fortran-g
reet-shared/libgreet/build/CMakeFiles/greet.dir/depend.internal".
Dependee "/workspace/fortran-greet-shared/libgreet/build/CMakeFiles/CMakeDirectoryInformation.cmake" is newer than depender "/workspace/fort
ran-greet-shared/libgreet/build/CMakeFiles/greet.dir/depend.internal".
Scanning dependencies of target greet
make[2]: Leaving directory '/workspace/fortran-greet-shared/libgreet/build'
make  -f CMakeFiles/greet.dir/build.make CMakeFiles/greet.dir/build
make[2]: Entering directory '/workspace/fortran-greet-shared/libgreet/build'
[ 50%] Building Fortran object CMakeFiles/greet.dir/greet.f90.o
/usr/bin/f95 -Dgreet_EXPORTS  -Jmod -fPIC -c /workspace/fortran-greet-shared/libgreet/greet.f90 -o CMakeFiles/greet.dir/greet.f90.o
/usr/bin/cmake -E cmake_copy_f90_mod mod/greet_module.mod CMakeFiles/greet.dir/greet_module.mod.stamp GNU
/usr/bin/cmake -E touch CMakeFiles/greet.dir/greet.f90.o.provides.build
[100%] Linking Fortran shared library libgreet.so
/usr/bin/cmake -E cmake_link_script CMakeFiles/greet.dir/link.txt --verbose=1
/usr/bin/f95 -fPIC -shared -Wl,-soname,libgreet.so -o libgreet.so CMakeFiles/greet.dir/greet.f90.o
make[2]: Leaving directory '/workspace/fortran-greet-shared/libgreet/build'
[100%] Built target greet
make[1]: Leaving directory '/workspace/fortran-greet-shared/libgreet/build'
/usr/bin/cmake -E cmake_progress_start /workspace/fortran-greet-shared/libgreet/build/CMakeFiles 0
```


## app

```bash
$ cd fortran-greet-shared/app
$ mkdir build && cd build

$ cmake ..
-- The Fortran compiler identification is GNU 11.4.0
-- Detecting Fortran compiler ABI info
-- Detecting Fortran compiler ABI info - done
-- Check for working Fortran compiler: /usr/bin/f95 - skipped
-- Configuring done
-- Generating done
-- Build files have been written to: /workspace/fortran-greet-shared/app/build

$ make
Scanning dependencies of target main
[ 50%] Building Fortran object CMakeFiles/main.dir/main.f90.o
[100%] Linking Fortran executable main
[100%] Built target main

[100%] Built target main
Install the project...
-- Install configuration: ""
-- Installing: /usr/local/bin/main
-- Set runtime path of "/usr/local/bin/main" to ""

$ main
main: error while loading shared libraries: libgreet.so: cannot open shared object file: No such file or directory

$ ldd main
        linux-vdso.so.1 (0x0000ffff9d483000)
        libgreet.so => /usr/local/lib/libgreet.so (0x0000ffff9d410000)
        libgfortran.so.5 => /lib/aarch64-linux-gnu/libgfortran.so.5 (0x0000ffff9d290000)
        libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffff9d0e0000)
        libm.so.6 => /lib/aarch64-linux-gnu/libm.so.6 (0x0000ffff9d040000)
        libgcc_s.so.1 => /lib/aarch64-linux-gnu/libgcc_s.so.1 (0x0000ffff9d010000)
        /lib/ld-linux-aarch64.so.1 (0x0000ffff9d44a000)

$ ldconfig

$ main
 Hello World!

$ ldconfig -p | grep libgreet.so
        libgreet.so (libc6,AArch64) => /usr/local/lib/libgreet.so
```
