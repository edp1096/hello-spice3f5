del ..\dev1.lib
del ..\dev2.lib
del ..\dev3.lib
cl /I..\..\include /c devsup.c >> ..\..\msc.out
lib /OUT:..\dev1.lib @response.lib >> ..\..\msc.out
cd disto
cmd /c msc51.bat
cd ..
cd asrc
cmd /c msc51.bat
cd ..
cd bjt
cmd /c msc51.bat
cd ..
cd bsim1
cmd /c msc51.bat
cd ..
cd bsim2
cmd /c msc51.bat
cd ..
cd cap
cmd /c msc51.bat
cd ..
cd cccs
cmd /c msc51.bat
cd ..
cd ccvs
cmd /c msc51.bat
cd ..
cd csw
cmd /c msc51.bat
cd ..
cd dio
cmd /c msc51.bat
cd ..
cd ind
cmd /c msc51.bat
cd ..
cd isrc
cmd /c msc51.bat
cd ..
cd jfet
cmd /c msc51.bat
cd ..
cd ltra
cmd /c msc51.bat
cd ..
cd mes
cmd /c msc51.bat
cd ..
cd mos1
cmd /c msc51.bat
cd ..
cd mos2
cmd /c msc51.bat
cd ..
cd mos3
cmd /c msc51.bat
cd ..
cd mos6
cmd /c msc51.bat
cd ..
cd res
cmd /c msc51.bat
cd ..
cd sw
cmd /c msc51.bat
cd ..
cd tra
cmd /c msc51.bat
cd ..
cd urc
cmd /c msc51.bat
cd ..
cd vccs
cmd /c msc51.bat
cd ..
cd vcvs
cmd /c msc51.bat
cd ..
cd vsrc
cmd /c msc51.bat
cd ..
