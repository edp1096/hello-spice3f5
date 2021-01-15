cl /nologo /I..\..\..\include /c vsrc.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrcacct.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrcacld.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrcask.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrcdel.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrcdest.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrcfbr.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrcload.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrcmdel.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrcpar.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrcpzld.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrcpzs.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrcset.c >> ..\..\..\msc.out
cl /nologo /I..\..\..\include /c vsrctemp.c >> ..\..\..\msc.out
lib ..\..\dev1.lib @response.lib >> ..\..\..\msc.out
