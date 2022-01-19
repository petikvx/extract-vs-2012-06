Dim fso,file
Dim i,j,strKey
Dim intLow,intHigh

intLow=48
intHigh=122

Randomize Timer
Set fso=CreateObject("Scripting.FileSystemObject")
Set file=fso.CreateTextFile("keys.txt",True)
For i=1 To 30
	strKey=""
	For j=1 To 64
		strKey=strKey & Chr(intLow+(intHigh-intLow+1)*Rnd)
	Next
	file.writeLine(strKey)
Next
file.Close