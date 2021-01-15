cl /nologo /I..\include\ /I..\lib\dev /c bconf.c >> ..\msc.out
cl /nologo /I..\include\ /I..\lib\dev /c cconf.c >> ..\msc.out
cl /nologo /I..\include\ /I..\lib\dev /c nnconf.c >> ..\msc.out
cl /nologo /I..\include\ /I..\lib\dev /c tunepc.c >> ..\msc.out
del cspice.obj
cl /nologo /I..\include\ /c /DSIMULATOR /DSPICE2 /DBATCH main.c >> ..\msc.out
rename main.obj cspice.obj
link @cspice.link >> ..\msc.out
del bspice.obj
cl /nologo /I..\include\ /c /DSIMULATOR /DBATCH main.c >> ..\msc.out
rename main.obj bspice.obj
link @bspice.link >> ..\msc.out
del nutmeg.obj
cl /nologo /I..\include\ /c main.c >> ..\msc.out
rename main.obj nutmeg.obj
link @nutmeg.link >> ..\msc.out
cl /nologo /I..\include\ /c sconvert.c >> ..\msc.out
link @sconvert.link >> ..\msc.out
cl /nologo /I..\include\ /c proc2mod.c >> ..\msc.out
link @proc2mod.link >> ..\msc.out
cl /nologo /I..\include\ /c help.c >> ..\msc.out
link @help.link >> ..\msc.out
cl /nologo /I..\include\ /c makeidx.c >> ..\msc.out
link @makeidx.link >> ..\msc.out
cl /nologo /I..\include\ /c multidec.c >> ..\msc.out
link @multidec.link >> ..\msc.out
