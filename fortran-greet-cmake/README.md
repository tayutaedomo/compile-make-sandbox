# fortran-greet-cmake

```bash
$ cd fortran-greet-cmake
$ mkdir build && cd build

$ cmake ..
-- The Fortran compiler identification is GNU 11.4.0
-- Detecting Fortran compiler ABI info
-- Detecting Fortran compiler ABI info - done
-- Check for working Fortran compiler: /usr/bin/f95 - skipped
-- Configuring done
-- Generating done
-- Build files have been written to: /workspace/fortran-greet-cmake/build

$ cmake --build . --target install
Scanning dependencies of target main
[ 33%] Building Fortran object CMakeFiles/main.dir/greet.f90.o
[ 66%] Building Fortran object CMakeFiles/main.dir/main.f90.o
[100%] Linking Fortran executable main
[100%] Built target main
Install the project...
-- Install configuration: ""
-- Installing: /usr/local/bin/main

$ main
 Hello World!

$ make uninstall
-- Removing: /usr/local/bin/main
Built target uninstall
```
