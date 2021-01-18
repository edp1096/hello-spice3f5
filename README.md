# Compile Berkeley SPICE3F5

* Tested
    * MSVC 2017 Express : src/msc51.bat
    * MinGW-W64 8.1.0 seh (bspice, cspice only) : cd util ; go build ; cd ../src ; ../util/makefile-gen ; make
    * GCC 5.4.0 / Ubuntu 16.04 (bspice, cspice only) : cd util && go build && cd ../src && ../util/makefile-gen && mingw32-make.exe

* Delete `*.o`, `*.obj` : `make clean` or `mingw32-make.exe clean`
* Delete `src/lib/*.a`, `src/lib/*.lib` : By human's hand :-D

* folders
    * spice3f5 - original source from https://ptolemy.berkeley.edu/projects/embedded/pubs/downloads/spice/index.htm / https://ptolemy.berkeley.edu/projects/embedded/pubs/downloads/spice/spice3f5.tar.gz
    * src - Modified build set
* reference : http://www.pulsedpower.net/Software/Spice/compile_berkeley_spice_3f5.htm
