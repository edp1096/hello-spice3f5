cl /nologo /I..\..\..\include /c ccvs.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvsask.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvsdel.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvsdest.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvsfbr.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvsload.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvsmdel.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvspar.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvspzld.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvssacl.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvsset.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvssld.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvssprt.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c ccvssset.c >> ..\..\..\msc.out
lib ..\..\dev1.lib @response.lib >> ..\..\..\msc.out
