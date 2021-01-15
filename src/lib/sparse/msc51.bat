del ..\sparse.lib
cl /nologo /I..\..\include /c spalloc.c >> ..\..\msc.out
cl /nologo /I..\..\include /c spbuild.c >> ..\..\msc.out
cl /nologo /I..\..\include /c spfactor.c >> ..\..\msc.out
cl /nologo /I..\..\include /c spoutput.c >> ..\..\msc.out
cl /nologo /I..\..\include /c spsmp.c >> ..\..\msc.out
cl /nologo /I..\..\include /c spsolve.c >> ..\..\msc.out
cl /nologo /I..\..\include /c sputils.c >> ..\..\msc.out
cl /nologo /I..\..\include /c spextra.c >> ..\..\msc.out
lib /OUT:..\sparse.lib @response.lib >> ..\..\msc.out
