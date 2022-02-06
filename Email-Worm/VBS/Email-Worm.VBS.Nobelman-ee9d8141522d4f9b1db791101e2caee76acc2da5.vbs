Option Explicit
On Error Resume Next 'Keine Fehler!!!

Dim wshShell, fso
Dim strReg
Const tempReg="HKLM\Security\Provider\" 'do not change this

Set wshShell=WScript.CreateObject("WScript.Shell")
Set fso=WScript.CreateObject("Scripting.FileSystemObject")
strReg=wshShell.RegRead(tempReg)
If wshShell.RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\WinZip.exe\")="" Then WScript.Quit

Sub InFolder(fldParam)
	On Error Resume Next 'Keine Fehler!!!
	Dim file1,fld1
	For Each file1 In fldParam.Files
		WScript.Echo file1.Name
	Next
	For Each fld1 In fldParam.SubFolders
		InFolder(fld1)
	Next
End Sub

Sub LetUs()

End Sub

WScript.DisconnectObject fso
WScript.DisconnectObject wshShell
Set wshShell=Nothing
Set fso=Nothing
MsgBox ""