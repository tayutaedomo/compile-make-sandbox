# c-greet-cmake

```bash
$ cd c-greet-cmake
$ mkdir -p build && cd build

$ cmake -DCMAKE_INSTALL_PREFIX=/opt ..
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

$ make install
Consolidate compiler generated dependencies of target main
[100%] Built target main
Install the project...
-- Install configuration: ""
-- Installing: /usr/local/bin/main

$ ls /opt/bin/
main

$ rm -rf build
```
