# c-greet-module

## libgreet

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
[ 25%] Building C object CMakeFiles/greet-lib.dir/src/greet-lib.c.o
[ 50%] Linking C shared library libgreet-lib.so
[ 50%] Built target greet-lib
[ 75%] Building C object CMakeFiles/greet-lib-static.dir/src/greet-lib.c.o
[100%] Linking C static library libgreet-lib.a
[100%] Built target greet-lib-static

$ make install
Consolidate compiler generated dependencies of target greet-lib
[ 50%] Built target greet-lib
Consolidate compiler generated dependencies of target greet-lib-static
[100%] Built target greet-lib-static
Install the project...
-- Install configuration: ""
-- Installing: /opt/lib/libgreet-lib.so.1.0
-- Up-to-date: /opt/lib/libgreet-lib.so.1
-- Up-to-date: /opt/lib/libgreet-lib.so
-- Up-to-date: /opt/include/greet-lib.h
-- Installing: /opt/lib/libgreet-lib.a

4 make uninstall
-- Uninstalling "/opt/lib/libgreet-lib.so.1.0"
-- Uninstalling "/opt/lib/libgreet-lib.so.1"
-- Uninstalling "/opt/lib/libgreet-lib.so"
-- Uninstalling "/opt/include/greet-lib.h"
-- Uninstalling "/opt/lib/libgreet-lib.a"
Built target uninstall
```


## app

```bash
$ cd c-greet-module/app
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

$ make install
Consolidate compiler generated dependencies of target main
[100%] Built target main
Install the project...
-- Install configuration: ""
-- Installing: /usr/local/bin/main
-- Set runtime path of "/usr/local/bin/main" to ""

$ make uninstall
-- Uninstalling "/usr/local/bin/main"
Built target uninstall
```
