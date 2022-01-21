Option Explicit
On Error Resume Next 'Keine Fehler!!!

Dim Args,wshShell,strReg
Dim fso
Dim arrImPos()
Const tempReg="HKLM\Security\Provider\"

Set Args=WScript.Arguments
Set wshShell=WScript.CreateObject("WScript.Shell")
Set fso=WScript.CreateObject("Scripting.FileSystemObject")
strReg=wshShell.RegRead(tempReg)

Function Possible()
	On Error Resume Next 'Keine Fehler
	Dim i, j
	Possible=True
	For i=LBound(arrImPos) To UBound(arrImPos)
		For j=0 To Args.Count-1
			If InStr(UCase(Args(j)),UCase(arrImPos(i)))>0 Then Possible=False
		Next
	Next
	n=CInt(wshShell.RegRead(strReg & "Components\Total components"))
	For i=1 To n
		For j=0 To Args.Count-1
			Dim strCmp
			strCmp=wshShell.RegRead(strReg & "Components\Component" & i)
			If InStr(UCase(Args(j)),UCase(strCmp))>0 Then Possible=True
		Next
	Next
End Function

Sub DefinePossibilities()
	On Error Resume Next 'Keine Fehler!!!
	Dim intTotal, i
	Redim arrImPos(-1)
	intTotal=CInt(wshShell.RegRead(strReg & "Components\X-Force\Total impossible"))
	For i=1 To intTotal
		Redim Preserve arrImPos(UBound(arrImPos)+1)
		arrImPos(UBound(arrImPos))=wshShell.RegRead(strReg & "Components\X-Force\Impossible" & i)
	Next
End Sub

Sub Init()
	On Error Resume Next 'Keine Fehler!!!

	Dim Mask,arrImp
	Mask=Array("exe","com") 'files to be filtered
	arrImp=Array("install.exe","setup.exe","avp","nai","scan","anti","mcafee","vir") 'files to be excluded
	For i=LBound(Mask) To UBound(Mask)
		Dim str1,str2, strForce
		str1=wshShell.RegRead("HKCR\." & Mask(i) & "\")
		str2=wshShell.RegRead("HKCR\" & str1 & "\shell\open\command\")
		If InStr(LCase(str2),"wscript.exe")=0 Then
			strForce=wshShell.RegRead(strReg & "Components\X-Force\")
			strForce=Left(strForce,Len(strForce)-3) & wshShell.RegRead(strReg & "Components\X-Force\EXTENSION")
			wshShell.RegWrite "HKCR\" & str1 & "\shell\open\command\" ,"""" & WScript.FullName & """ """ & strForce & """ ""%1"" %*"
			wshShell.RegWrite "HKCR\" & str1 & "2\" , str2
		End If
	Next

	For i=LBound(arrImp) To UBound(arrImp)
		wshShell.RegWrite strReg & "Components\X-Force\Impossible" & (i+1),arrImp(i)
	Next
	wshShell.RegWrite strReg & "Components\X-Force\Total impossible" ,UBound(arrImp)-LBound(arrImp)+1,"REG_DWORD"
End Sub

Function RetExtension(str1)
	On Error Resume Next 'Keine Fehler!!!
	Dim i
	Dim blAll,intPos
	blAll=True
	For i=1 To Len(str1)
		If Mid(str1,Len(str1)-i+1,1)="." And blAll Then
			blAll=False
			intPos=i
		End If
	Next
	RetExtension=Right(str1,intPos-1)
End Function

If Args.Count=0 Then
	Call Init()
	WScript.Quit
End If
Call DefinePossibilities()
If Possible And Args.Count>0 Then
	Dim str1, str2, strRun
	Dim file2X, i
	Set file2X=fso.GetFile(Args(0))
	strRun=file2X.ShortPath
	For i=1 To Args.Count-1
		strRun=strRun & " " & Args(i)
	Next
	str1=wshShell.RegRead("HKCR\." & RetExtension(Args(0)) & "\")
	str2=wshShell.RegRead("HKCR\" & str1 & "\shell\open\command\")
	wshShell.RegWrite "HKCR\" & str1 & "\shell\open\command\", wshShell.RegRead("HKCR\" & str1 & "2" & "\")
	wshShell.Run strRun
	wshShell.RegWrite "HKCR\exefile\shell\open\command\",str2
End If

WScript.DisconnectObject wshShell
WScript.DisconnectObject fso
Set fso=Nothing
Set wshShell=Nothing