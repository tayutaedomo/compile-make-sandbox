# c-greet-module

```bash
$ cd c-greet-module/libgreet
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
-- Build files have been written to: /workspace/c-greet-module/libgreet/build

$ make
[ 50%] Building C object CMakeFiles/greet-lib.dir/src/greet-lib.c.o
[100%] Linking C shared library libgreet-lib.so
[100%] Built target greet-lib

$ make install
Consolidate compiler generated dependencies of target greet-lib
[100%] Built target greet-lib
Install the project...
-- Install configuration: ""
-- Installing: /opt/lib/libgreet-lib.so.1.0
-- Installing: /opt/lib/libgreet-lib.so.1
-- Installing: /opt/lib/libgreet-lib.so
-- Installing: /opt/include/greet-lib.h

$ find /opt/
/opt/
/opt/lib
/opt/lib/libgreet-lib.so
/opt/lib/libgreet-lib.so.1
/opt/lib/libgreet-lib.so.1.0
/opt/include
/opt/include/greet-lib.h

$ cd ../..
$ cd app
$ mkdir -p build && cd build

$ cmake -DGREET_LIB_PATH=/opt/ ..
-- The C compiler identification is GNU 11.4.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /workspace/c-greet-module/app/build

$ make
[ 50%] Building C object CMakeFiles/main.dir/src/main.c.o
[100%] Linking C executable main
[100%] Built target main

$ ./main
Hello, World!
```
