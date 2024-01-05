# c-greet-pkgconfig

## Install

```bash
$ apt-get update
$ apt-get install pkg-config -y
$ which pkg-config
/usr/bin/pkg-config
```


## libgreet

```bash
$ cd c-greet-pkgconfig/libgreet
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
-- Build files have been written to: /workspace/c-greet-pkgconfig/libgreet/build

$ make
[ 25%] Building C object CMakeFiles/greet-lib-shared.dir/src/greet-lib.c.o
[ 50%] Linking C shared library libgreet-lib.so
[ 50%] Built target greet-lib-shared
[ 75%] Building C object CMakeFiles/greet-lib-static.dir/src/greet-lib.c.o
[100%] Linking C static library libgreet-lib.a
[100%] Built target greet-lib-static

$ make install
Consolidate compiler generated dependencies of target greet-lib-shared
[ 50%] Built target greet-lib-shared
Consolidate compiler generated dependencies of target greet-lib-static
[100%] Built target greet-lib-static
Install the project...
-- Install configuration: ""
-- Installing: /opt/lib/libgreet-lib.so.1.0
-- Installing: /opt/lib/libgreet-lib.so.1
-- Installing: /opt/lib/libgreet-lib.so
-- Installing: /opt/include/greet-lib.h
-- Installing: /opt/lib/libgreet-lib.a
-- Installing: /opt/lib/pkgconfig/greet-lib.pc

$ make uninstall
-- Uninstalling "/opt/lib/libgreet-lib.so.1.0"
-- Uninstalling "/opt/lib/libgreet-lib.so.1"
-- Uninstalling "/opt/lib/libgreet-lib.so"
-- Uninstalling "/opt/include/greet-lib.h"
-- Uninstalling "/opt/lib/libgreet-lib.a"
-- Uninstalling "/opt/lib/pkgconfig/greet-lib.pc"
Built target uninstall
```


## app

```bash
$ cd c-greet-pkgconfig/app
$ mkdir -p build && cd build

$ cmake -DCMAKE_INSTALL_PREFIX=/opt -DGREET_LIB_PATH=/opt -DBUILD_SHARED_LIBS=OFF ..
-- The C compiler identification is GNU 11.4.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Found PkgConfig: /usr/bin/pkg-config (found version "0.29.2")
-- Checking for module 'greet-lib'
--   Found greet-lib, version 1.0
-- Configuring done
-- Generating done
-- Build files have been written to: /workspace/c-greet-pkgconfig/app/build

$ make
[ 50%] Building C object CMakeFiles/main.dir/src/main.c.o
[100%] Linking C executable main
[100%] Built target main

$ make install
Consolidate compiler generated dependencies of target main
[100%] Built target main
Install the project...
-- Install configuration: ""
-- Installing: /opt/bin/main
-- Set runtime path of "/opt/bin/main" to ""

$ ldd /opt/bin/main
        linux-vdso.so.1 (0x0000ffffafbfd000)
        libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffffafa00000)
        /lib/ld-linux-aarch64.so.1 (0x0000ffffafbc4000)

$ make uninstall
-- Uninstalling "/opt/bin/main"
Built target uninstall
```
