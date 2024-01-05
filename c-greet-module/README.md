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
-- Up-to-date: /opt/lib/libgreet-lib.so.1
-- Up-to-date: /opt/lib/libgreet-lib.so
-- Up-to-date: /opt/include/greet-lib.h
-- Installing: /opt/lib/libgreet-lib.a

$ make uninstall
-- Uninstalling "/opt/lib/libgreet-lib.so.1.0"
-- Uninstalling "/opt/lib/libgreet-lib.so.1"
-- Uninstalling "/opt/lib/libgreet-lib.so"
-- Uninstalling "/opt/include/greet-lib.h"
-- Uninstalling "/opt/lib/libgreet-lib.a"
Built target uninstall
```


## app (Shared)
```bash
$ cd c-greet-module/app
$ mkdir -p build && cd build

$ cmake -DCMAKE_INSTALL_PREFIX=/opt -DGREET_LIB_PATH=/opt/ ..
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

$ make install
Consolidate compiler generated dependencies of target main
[100%] Built target main
Install the project...
-- Install configuration: ""
-- Installing: /usr/local/bin/main
-- Set runtime path of "/usr/local/bin/main" to ""

$ /opt/bin/main
/opt/bin/main: error while loading shared libraries: libgreet-lib.so.1: cannot open shared object file: No such file or directory

$ ldd ./main
        linux-vdso.so.1 (0x0000ffffba4f3000)
        libgreet-lib.so.1 => /opt/lib/libgreet-lib.so.1 (0x0000ffffba480000)
        libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffffba2d0000)
        /lib/ld-linux-aarch64.so.1 (0x0000ffffba4ba000)
$ ldd /opt/bin/main
        linux-vdso.so.1 (0x0000ffffaa996000)
        libgreet-lib.so.1 => not found
        libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffffaa790000)
        /lib/ld-linux-aarch64.so.1 (0x0000ffffaa95d000)

$ export LD_LIBRARY_PATH=/opt/lib:$LD_LIBRARY_PATH
$ ldd /opt/bin/main
        linux-vdso.so.1 (0x0000ffff80de0000)
        libgreet-lib.so.1 => /opt/lib/libgreet-lib.so.1 (0x0000ffff80d70000)
        libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffff80bc0000)
        /lib/ld-linux-aarch64.so.1 (0x0000ffff80da7000)
$ /opt/bin/main
Hello, World!

$ make uninstall
-- Uninstalling "/usr/local/bin/main"
Built target uninstall
```


## app (Static)

```bash
$ cd c-greet-module/app
$ mkdir -p build && cd build

$ cmake -DCMAKE_INSTALL_PREFIX=/opt -DGREET_LIB_PATH=/opt -DBUILD_SHARED_LIBS=OFF ..
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

$ make install
Consolidate compiler generated dependencies of target main
[100%] Built target main
Install the project...
-- Install configuration: ""
-- Installing: /opt/bin/main
-- Set runtime path of "/opt/bin/main" to ""

$ make uninstall
-- Uninstalling "/opt/bin/main"
Built target uninstall

$ ldd /opt/bin/main
        linux-vdso.so.1 (0x0000ffffa2a77000)
        libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffffa2870000)
        /lib/ld-linux-aarch64.so.1 (0x0000ffffa2a3e000)

$ /opt/bin/main
Hello, World!
```
