del ..\mfbpc.lib
cl /nologo /I..\..\include /c mfbpc.c >> ..\..\msc.out
lib /OUT:..\mfbpc.lib @response.lib >> ..\..\msc.out
