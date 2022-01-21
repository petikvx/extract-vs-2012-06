Option Explicit
'On Error Resume Next

'Encryption utilite
'Copyright (C) 2002 by Otto von Gutenberg


Sub EncryptNumeric(strFile,strKey)
	On Error Resume Next
	Dim strOut,strCh,strChKey,strIn
	Dim out, fso, file
	Dim intCode,intSize, k, i
                                
	intSize=0

	Set fso=CreateObject("Scripting.FileSystemObject")
	Set file=fso.OpenTextFile(strFile,1,True,-2)
	
	strOut=Left(strFile,Len(strFile)-4)
	Set out=fso.CreateTextFile(strOut+".crp",True)
	While Not file.AtEndOfStream
		strIn=file.Read(Len(strKey))
		k=Len(strIn)

		For i=1 To k
			strCh=Mid(strIn,i,1)
			strChKey=Mid(strKey,i,1)
			intCode=Asc(strCh) Xor Asc(strChKey)
			out.write(intCode & " ")
			intSize=intSize+Len(CStr(intCode))+1
		Next
		intSize=intSize+2
		out.WriteLine
	Wend
	file.Close
	out.Close
	Set fso = Nothing
	Set file = Nothing
	Set out = Nothing
End Sub
          

Sub DecryptNumeric(strFile,strKey,intLoop)
	On Error Resume Next
	
	Dim file,out,fso
	Dim strCh,strChKey,strIn,strOut,strTemp,strNum
	Dim intCode, i,t
	
	t=0

	Set fso=CreateObject("Scripting.FileSystemObject")
	Set file=fso.OpenTextFile(strFile,1,True,-2)
	strOut=Left(strFile,Len(strFile)-4)
	Set out=fso.CreateTextFile(strOut+".cmp",True)
	
	For i=1 To intLoop
		file.ReadLine
	Next
	
	While Not file.AtEndOfStream
		strIn=file.ReadLine
		strTemp=""
		strNum=""

		For i=1 To Len(strIn)
			If IsNumeric(Mid(strIn,i,1)) Then
				strNum=strNum & Mid(strIn,i,1)
			Else
				strTemp=strTemp & chr(CInt(strNum))
				strNum=""
			End If
		Next
		strIn=strTemp
		If IsNumeric(strNum) Then strIn=strIn & chr(CInt(strNum))
		
		For i=1 to Len(strIn)
			If t>=Len(strKey) Then t=0
			t=t+1
			strCh=Mid(strIn,i,1)
			strChKey=Mid(strKey,t,1)
			intCode=Asc(strCh) Xor Asc(strChKey)
			out.Write(Chr(intCode))
		Next
	Wend
	out.Close
	file.Close
	Set fso = Nothing
	Set out = Nothing
	Set file = Nothing
End Sub

Dim strKey
Dim a,b
strKey="lx@`UXlGYSuEfje69V1u[RW[L35GBNB@Xq>a_Wc9f9T:eDr^QiZJ;Bbg957qfX9fY<AgrN9VNT:t<^iAiGVml4vh\@4q9<l6C`zq;SD1{JY_z6WSStVMO>V9=B]IKXQn56:9JzF<uTNJ7wHqyK?6vuWOFvNGHy>ULBGVMCJT\cG7MVGvdQEuAX;;J57nuf?]]v>5=Y[ULexrk2`@1vLw@HWogQKt67`d:uOn]:;ifK0i=mSBL^;?mXm3qno\cJaFNz`m\G?j0P7hS8xX;DBduU>E<0?sajOukuX53Ku8`bqr\AD`hcJSQRk51h6qra4:eUh^pYQC4q1?OQY6]^6YDdjxmp;WEDhQ[UvUv=uj_m=fq2wN6q:xIVFT074tisaM"
'strKey="abcd"
'a=Second(Now)
'EncryptNumeric "d:\treeinfo.ncd",strKey
'b=Second(Now)
'MsgBox a
'MsgBox  b
'a=Second(Now)
'EncryptNumeric "D:\treeinfo.ncd",strKey   
'b=Second(Now)
'MsgBox a
'MsgBox b
'a=Second(Now)
strKey="3ZQviGei[A>yG7WL:l:WvxFS5jMnIAZy9PW^sF^WsN<Y8;1uP;Og:p5e]RRBC3M_gwu]MPH8zYTF_FTlx2JBa3B38UeIJ\ELErFt=zz4CPnCim5Y:A[8Okxzycm<V;Ki"
EncryptNumeric "D:\appl.cla",strKey
DecryptNumeric "D:\appl.crp",strKey,0
'b=Second(Now)
'MsgBox a
'MsgBox b