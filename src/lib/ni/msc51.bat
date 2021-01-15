del ..\ni.lib
cl /nologo /I..\..\include /c niaciter.c >> ..\..\msc.out
cl /nologo /I..\..\include /c nicomcof.c >> ..\..\msc.out
cl /nologo /I..\..\include /c niconv.c >> ..\..\msc.out
cl /nologo /I..\..\include /c nidest.c >> ..\..\msc.out
cl /nologo /I..\..\include /c niditer.c >> ..\..\msc.out
cl /nologo /I..\..\include /c niinit.c >> ..\..\msc.out
cl /nologo /I..\..\include /c niinteg.c >> ..\..\msc.out
cl /nologo /I..\..\include /c niiter.c >> ..\..\msc.out
cl /nologo /I..\..\include /c niniter.c >> ..\..\msc.out
cl /nologo /I..\..\include /c nipred.c >> ..\..\msc.out
cl /nologo /I..\..\include /c nipzmeth.c >> ..\..\msc.out
cl /nologo /I..\..\include /c nireinit.c >> ..\..\msc.out
cl /nologo /I..\..\include /c nisenre.c >> ..\..\msc.out
lib /OUT:..\ni.lib @response.lib >> ..\..\msc.out
