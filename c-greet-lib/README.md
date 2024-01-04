# c-greet-lib

```bash
$ cd c-greet-lib
$ mkdir build && cd build

$ cmake ..
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
-- Installing: /usr/local/lib/libgreet-lib.so
-- Installing: /usr/local/include/greet-lib.h

$ make uninstall
-- Removing: /usr/local/lib/libgreet-lib.so
-- Removing: /usr/local/include/greet-lib.h
Built target uninstall
```
