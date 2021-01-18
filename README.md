# Compile Berkeley SPICE3F5

* Tested (MinGW, GCC : bspice, cspice only)
    * MSVC 2017 Express : MSVC dev console -> `cd src` -> `msc51.bat`
    * MinGW-W64 8.1.0 seh : `cd util ; go build ; cd ../src ; ../util/makefile-gen ; mingw32-make.exe`
    * GCC 5.4.0 / Ubuntu 16.04 : `cd util && go build && cd ../src && ../util/makefile-gen && make`

* Delete `*.o`, `*.obj` : `make clean` or `mingw32-make.exe clean`
* Delete `src/lib/*.a`, `src/lib/*.lib` : By human's hand :-D

* folders
    * spice3f5 - original source from https://ptolemy.berkeley.edu/projects/embedded/pubs/downloads/spice/index.htm / https://ptolemy.berkeley.edu/projects/embedded/pubs/downloads/spice/spice3f5.tar.gz
    * src - Modified build set
* reference : http://www.pulsedpower.net/Software/Spice/compile_berkeley_spice_3f5.htm
