cl /nologo /I..\..\..\include /c sw.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c swacload.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c swask.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c swdelete.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c swdest.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c swload.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c swmask.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c swmdel.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c swmparam.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c swnoise.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c swparam.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c swpzload.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c swsetup.c >> ..\..\..\msc.out
lib ..\..\dev3.lib @response.lib >> ..\..\..\msc.out
