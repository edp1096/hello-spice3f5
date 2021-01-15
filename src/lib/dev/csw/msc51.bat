cl /nologo /I..\..\..\include /c csw.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c cswacld.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c cswask.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c cswdel.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c cswdest.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c cswload.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c cswmask.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c cswmdel.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c cswmpar.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c cswnoise.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c cswparam.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c cswpzld.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c cswsetup.c >> ..\..\..\msc.out
lib ..\..\dev3.lib @response.lib >> ..\..\..\msc.out
