Dim FSO, TextStream
Set FSO = CreateObject("Scripting.FileSystemObject")
Set TextStream = FSO.CreateTextFile("c:\temp\decrypted.txt")
TextStream.Write(  B("4D4F4E4F504F4C592E575348")  )
TextStream.Close                          'Close the file


'// extracted decryption function
Function B(B1)
For B2 = 1 To Len(B1) Step 2
B = B & Chr("&h" & Mid(B1,B2,2))
Next
End Function
