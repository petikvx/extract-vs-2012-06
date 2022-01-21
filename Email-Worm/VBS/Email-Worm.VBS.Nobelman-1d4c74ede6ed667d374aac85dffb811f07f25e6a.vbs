
Sub Decrypt(strFile,strKey)
	Dim strCh,strChKey,strIn
	Dim out, fso, file
	Dim intCode, intOffset, intUpper, k, i,t

	intOffset=30 'this variable defines the stand-alone offset
	intUpper=125 'not including UNI-characters
	t=0

	Set fso=CreateObject("Scripting.FileSystemObject")
	Set file=fso.OpenTextFile(strFile,1)
	Set out=fso.CreateTextFile(Left(strFile,Len(strFile)-3) & "cmp",2)
	While Not file.AtEndOfStream
		strIn=file.readLine
		k=Len(strIn)
		For i=1 to k
			If t>=Len(strKey) Then t=0
			t=t+1
			strCh=Mid(strIn,i,1)
			strChKey=Mid(strKey,t,1)
			If Asc(strCh)=126 Then strCh=Chr(10)
			If Asc(strCh)=127 Then strCh=Chr(13)
			intCode=Asc(strCh)-Asc(strChKey)
			If intCode<intOffset Then intCode=intCode+intUpper
			If intCode>intUpper Then intCode=intCode-intUpper
			out.write(chr(intCode))
		Next
	Wend
	file.Close
	out.Close
	Set file=Nothing
	Set out=Nothing
	Set fso=Nothing
End Sub


Dim strKey
Dim a,b
a=Second(Now)
strKey="lx@`UXlGYSuEfje69V1u[RW[L35GBNB@Xq>a_Wc9f9T:eDr^QiZJ;Bbg957qfX9fY<AgrN9VNT:t<^iAiGVml4vh\@4q9<l6C`zq;SD1{JY_z6WSStVMO>V9=B]IKXQn56:9JzF<uTNJ7wHqyK?6vuWOFvNGHy>ULBGVMCJT\cG7MVGvdQEuAX;;J57nuf?]]v>5=Y[ULexrk2`@1vLw@HWogQKt67`d:uOn]:;ifK0i=mSBL^;?mXm3qno\cJaFNz`m\G?j0P7hS8xX;DBduU>E<0?sajOukuX53Ku8`bqr\AD`hcJSQRk51h6qra4:eUh^pYQC4q1?OQY6]^6YDdjxmp;WEDhQ[UvUv=uj_m=fq2wN6q:xIVFT074tisaM"
strKey="LD:Lk6o1kXJE24Hqtegh9hqsGXaG3fDEzZvtN_3rlbQSxe1l3YYK8DiloBbtN?9qh_cq{Rce?rWyA\H>23`O4@buwPTGZX`d5B2DVns1MyBliwK[Fyauoohl5rj[P1{E"
'strKey="abcd"
Decrypt "D:\zin2.kml",strKey
b=Second(Now)
'MsgBox a
'MsgBox b