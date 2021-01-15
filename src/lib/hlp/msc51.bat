del ..\hlp.lib
cl /nologo /I..\..\include /c help.c >> ..\..\msc.out
cl /nologo /I..\..\include /c provide.c >> ..\..\msc.out
cl /nologo /I..\..\include /c readhelp.c >> ..\..\msc.out
cl /nologo /I..\..\include /c textdisp.c >> ..\..\msc.out
cl /nologo /I..\..\include /c x11disp.c >> ..\..\msc.out
cl /nologo /I..\..\include /c xdisplay.c >> ..\..\msc.out
lib /OUT:..\hlp.lib @response.lib >> ..\..\msc.out
