QuickJS
=======
The main documentation is in doc/quickjs.pdf or doc/quickjs.html.

Build and test with

    nix-shell --pure --run "make test"

Build and test for both 64 and 32-bit with

    nix-shell --pure --run "make CONFIG_M32=y test"

Build and test for both 64 and 32-bit with AddressSanitizer

    nix-shell --pure --run "make CONFIG_M32=y CONFIG_ASAN=y test"

Test qjs32 with valgrind with

    nix-shell --pure --run "make CONFIG_M32=y VALGRIND=y test"

Test qjsc build for 32-bit with valgrind with

    nix-shell --pure shell32.nix --run "make VALGRIND=y test_qjsc"

At the moment, valgrind is only enabled for the 32-bit build.
