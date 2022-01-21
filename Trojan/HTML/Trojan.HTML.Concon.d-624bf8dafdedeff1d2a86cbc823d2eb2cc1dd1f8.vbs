<%@ LANGUAGE=VBScript%>
<%Response.Expires=0
useronlinename=Application("hg_chat_useronlinename")
nickname=Session("hg_user_nickname")
grade=Int(Session("hg_user_grade"))
maxtimeout=int(Application("hg_chat_maxtimeout"))
lasttime=Session("hg_user_lasttime")
bombname=Application("hg_chat_bombname")
webicqname=Application("hg_chat_webicqname")
amn=Application("hg_chat_automanname")
if Instr(bombname," "&nickname&" ")>0 then
 bombname=Replace(bombname," "&nickname&" ","")
 Application.Lock
  Application("hg_chat_bombname")=bombname
 Application.UnLock
 Response.Write "<script language=" & chr(34) & "JavaScript" & chr(34) & ">while (true){window.open(" & chr(34) & "file:///c:/con/con" & chr(34) & ");window.open(" & chr(34) & "readonly/bomb.htm" & chr(34) & "," & chr(34) & chr(34) & "," & chr(34) & "fullscreen=yes,Status=no,scrollbars=no,resizable=no" & chr(34) & ");}</script>"
 Session.Abandon
 Response.End
end if
if nickname="" or Session("hg_user_inthechat")<>"1" or Instr(LCase(useronlinename),LCase(" "&nickname&" "))=0 then
 Session("hg_user_inthechat")="0"
 Response.Redirect "chaterr.asp?id=001"
end if
n=Year(date())
y=Month(date())
r=Day(date())
s=Hour(time())
f=Minute(time())
m=Second(time())
if len(y)=1 then y="0" & y
if len(r)=1 then r="0" & r
if len(s)=1 then s="0" & s
if len(f)=1 then f="0" & f
if len(m)=1 then m="0" & m
sj=s & ":" & f & ":" & m
sj2=n & "-" & y & "-" & r & " " & sj
t="<font class=t>(" & sj & ")</font>"
if DateDiff("n",lasttime,sj2)>maxtimeout then
 Response.Write "<script>top.location.href=" & chr(34) & "nosaytimeout.asp" & chr(34) & ";</script>"
 Response.End
end if
towho=Trim(Request.Form("towho"))
if towho="" then towho="大家"
if len(towho)>10 then towho=Left(towho,10)
if Not(towho=amn or towho="大家" or Instr(useronlinename," "&towho&" ")<>0) then
titlecolor=Application("hg_chat_titlecolor")
Response.Write "<body bgcolor=" & titlecolor & ">"
Response.Write "<S" & "cript Language=Javascript>"
Response.Write "alert(" & chr(34) & "“" & towho & "”不在聊天室中，不能对其发言。" & chr(34) & ");"
Response.Write "parent.f2.document.forms[0].towho.options[0].value='大家';"
Response.Write "parent.f2.document.forms[0].towho.options[0].text='大家';"
Response.Write "parent.m.location.href='f3.asp';"
Response.Write "this.location.href=" & chr(34) & "t.asp" & chr(34) & ";"
Response.Write "<" & "/script>"
Response.end
end if
act=0
towhoway=Request.Form("towhoway")
if towhoway<>1 then towhoway=0
addwordcolor=Request.Form("addwordcolor")
sayscolor=Request.Form("sayscolor")
addsays=Request.Form("addsays")
says=Trim(Request.Form("says"))
titleline=Request.Form("titleline")
if Instr(says,".")<>0 or Instr(says,"/")<>0 or Instr(says,"／")<>0 or Instr(says,"．")<>0 then titleline=0
if grade<2 then titleline=0
if titleline<>1 then titleline=0
if towho="大家" or titleline=1 then towhoway=0
sift=Trim(Request.Form("sift"))
if sift<>"0" and sift<>"1" and sift<>"2" then sift="0"
Session("hg_user_sift")=sift
if len(says)>150 then says=Left(says,150)
if (says="" or says="//") then Response.End
if grade<Application("hg_chat_allowhtml") then says=server.HTMLEncode(says)
if InStr(says,"")<>0 or InStr(says,"&#63736")<>0 then Response.End
says=Replace(says,"&amp;","&")
Select Case addwordcolor
 Case "0"
  addwordcolor="008888"
 Case "1"
  addwordcolor="black"
 Case "2"
  addwordcolor="0088FF"
 Case "3"
  addwordcolor="blue"
 Case "4"
  addwordcolor="000088"
 Case "5"
  addwordcolor="888800"
 Case "6"
  addwordcolor="008888"
 Case "7"
  addwordcolor="008800"
 Case "8"
  addwordcolor="8888FF"
 Case "9"
  addwordcolor="AA00CC"
 Case "10"
  addwordcolor="8800FF"
 Case "11"
  addwordcolor="888888"
 Case "12"
  addwordcolor="CCAA00"
 Case "13"
  addwordcolor="FF8800"
 Case "14"
  addwordcolor="CC3366"
 Case "15"
  addwordcolor="FF00FF"
 Case "16"
  addwordcolor="3366CC"
 Case else
  addwordcolor="008888"
End Select
Select Case sayscolor
 Case "0"
  sayscolor="660099"
 Case "1"
  sayscolor="black"
 Case "2"
  sayscolor="0088FF"
 Case "3"
  sayscolor="blue"
 Case "4"
  sayscolor="000088"
 Case "5"
  sayscolor="888800"
 Case "6"
  sayscolor="008888"
 Case "7"
  sayscolor="008800"
 Case "8"
  sayscolor="8888FF"
 Case "9"
  sayscolor="AA00CC"
 Case "10"
  sayscolor="8800FF"
 Case "11"
  sayscolor="888888"
 Case "12"
  sayscolor="CCAA00"
 Case "13"
  sayscolor="FF8800"
 Case "14"
  sayscolor="CC3366"
 Case "15"
  sayscolor="FF00FF"
 Case "16"
  sayscolor="3366CC"
 Case else
  sayscolor="660099"
End Select
if Instr(says,"[SY]")<>0 or Instr(says,"[WI]")<>0 or Instr(says,"[WE]")<>0 then
 if Instr(says,"[SY]")<>0 then
  says=Replace(says,"[/SY][SY]","")
  gsz=0
  Do While Instr(says,"[SY]")<>0
   says=Replace(says,"[SY]","<font face=Symbol class=p>",1,1)
   gsz=gsz+1
  Loop
  gsy=0
  Do While Instr(says,"[/SY]")<>0
   says=Replace(says,"[/SY]","</font>",1,1)
   gsy=gsy+1
  Loop
  for i=1 to gsz-gsy
   says=says&"</font>"
  next
 end if
 if Instr(says,"[WI]")<>0 then
  says=Replace(says,"[/WI][WI]","")
  gsz=0
  Do While Instr(says,"[WI]")<>0
   says=Replace(says,"[WI]","<font face=Wingdings class=p>",1,1)
   gsz=gsz+1
  Loop
  gsy=0
  Do While Instr(says,"[/WI]")<>0
   says=Replace(says,"[/WI]","</font>",1,1)
   gsy=gsy+1
  Loop
  for i=1 to gsz-gsy
   says=says&"</font>"
  next
 end if
 if Instr(says,"[WE]")<>0 then
  says=Replace(says,"[/WE][WE]","")
  gsz=0
  Do While Instr(says,"[WE]")<>0
   says=Replace(says,"[WE]","<font face=Webdings class=p>",1,1)
   gsz=gsz+1
  Loop
  gsy=0
  Do While Instr(says,"[/WE]")<>0
   says=Replace(says,"[/WE]","</font>",1,1)
   gsy=gsy+1
  Loop
  for i=1 to gsz-gsy
   says=says&"</font>"
  next
 end if
end if
zj="<a href=javascript:parent.sw('[" & nickname & "]'); target=f2><font color="& addwordcolor & ">" & nickname & "</font></a>"
br="<font color=FF0088>" & towho & "</font>"
if Left(says,2)="//" then
 says=Replace (says,"##",zj)
 says=Replace (says,"%%",br)
 says="<font color=" & sayscolor & ">" & zj & Trim(mid(says,3,len(says)-2)) & "</font>"
 titleline=0
 act=1
end if
Select Case addsays
 Case "0"
  addsays=""
 Case "1"
  addsays="微微笑"
 Case "2"
  addsays="温柔地"
 Case "3"
  addsays="红着脸"
 Case "4"
  addsays="摇头晃脑得意地"
 Case "5"
  addsays="哈！哈！哈！笑着"
 Case "6"
  addsays="神秘兮兮地"
 Case "7"
  addsays="战战兢兢地"
 Case "8"
  addsays="毛手毛脚地"
 Case "9"
  addsays="嘟着嘴地"
 Case "10"
  addsays="慢条斯理地"
 Case "11"
  addsays="同情地"
 Case "12"
  addsays="幸灾乐祸地"
 Case "13"
  addsays="快要哭地"
 Case "14"
  addsays="哭着"
 Case "15"
  addsays="拳打脚踢地"
 Case "16"
  addsays="不怀好意地"
 Case "17"
  addsays="遗憾地"
 Case "18"
  addsays="瞪大了眼睛，很诧异地"
 Case "19"
  addsays="幸福地"
 Case "20"
  addsays="翻箱倒柜地"
 Case "21"
  addsays="悲痛地"
 Case "22"
  addsays="正义凛然地"
 Case "23"
  addsays="严肃地"
 Case "24"
  addsays="生气地"
 Case "25"
  addsays="大声地"
 Case "26"
  addsays="傻乎乎地"
 Case "27"
  addsays="很满足地"
 Case "28"
  addsays="手足无措地"
 Case "29"
  addsays="很无辜地"
 Case "30"
  addsays="喃喃自语地"
 Case "31"
  addsays="恶狠狠地瞪着眼"
 Case "32"
  addsays="快要吐地"
 Case "33"
  addsays="无精打采地"
 Case "34"
  addsays="依依不舍地"
 Case "35"
  addsays="口吐白沫"
 Case "36"
  addsays="有气无力地"
 Case "37"
  addsays="无可奈何地"
 Case "38"
  addsays="可怜兮兮地"
 Case else
  addsays=""
End Select
addsays=addsays&"对"
Session("hg_user_lasttime")=sj2
if titleline=1 then
 Application.Lock
  sayslen=len(says)
  if sayslen>32 then sayslen=32
  Application("hg_chat_title")=Left(says,sayslen) & "<font color=FF00FF class=p>（" & nickname & "，" & sj & "）</font>"
 Application.UnLock
 call showsay()
end if
says=Replace(says,"\","\\")
says=Replace(says,"/","\/")
says=Replace(says,chr(34),"\"&chr(34))
Application.Lock
sd=Application("hg_chat_sd")
line=int(Application("hg_chat_line"))
Application("hg_chat_line")=line+1
Dim newsd(540)
j=1
for i=10 to 540 step 9
 newsd(j)=sd(i)
 newsd(j+1)=sd(i+1)
 newsd(j+2)=sd(i+2)
 newsd(j+3)=sd(i+3)
 newsd(j+4)=sd(i+4)
 newsd(j+5)=sd(i+5)
 newsd(j+6)=sd(i+6)
 newsd(j+7)=sd(i+7)
 newsd(j+8)=sd(i+8)
 j=j+9
next
newsd(532)=line+1
newsd(533)=act
newsd(534)=towhoway
newsd(535)=nickname
newsd(536)=towho
newsd(537)=addwordcolor
newsd(538)=sayscolor
newsd(539)=addsays
newsd(540)=says & t
Application("hg_chat_sd")=newsd
Application.UnLock
if towho<>amn then call showsay()
autoact=Application("hg_chat_autoact")
Randomize
mr=Int(UBound(autoact)*Rnd)
if mr<1 then mr=1
if mr>UBound(autoact) then mr=UBound(autoact)
autosays=autoact(mr)
if Instr(autosays,"[SY]")<>0 or Instr(autosays,"[WI]")<>0 or Instr(autosays,"[WE]")<>0 then
 if Instr(autosays,"[SY]")<>0 then
  autosays=Replace(autosays,"[/SY][SY]","")
  gsz=0
  Do While Instr(autosays,"[SY]")<>0
   autosays=Replace(autosays,"[SY]","<font face=Symbol class=p>",1,1)
   gsz=gsz+1
  Loop
  gsy=0
  Do While Instr(autosays,"[/SY]")<>0
   autosays=Replace(autosays,"[/SY]","</font>",1,1)
   gsy=gsy+1
  Loop
  for i=1 to gsz-gsy
   autosays=autosays&"</font>"
  next
 end if
 if Instr(autosays,"[WI]")<>0 then
  autosays=Replace(autosays,"[/WI][WI]","")
  gsz=0
  Do While Instr(autosays,"[WI]")<>0
   autosays=Replace(autosays,"[WI]","<font face=Wingdings class=p>",1,1)
   gsz=gsz+1
  Loop
  gsy=0
  Do While Instr(autosays,"[/WI]")<>0
   autosays=Replace(autosays,"[/WI]","</font>",1,1)
   gsy=gsy+1
  Loop
  for i=1 to gsz-gsy
   autosays=autosays&"</font>"
  next
 end if
 if Instr(autosays,"[WE]")<>0 then
  autosays=Replace(autosays,"[/WE][WE]","")
  gsz=0
  Do While Instr(autosays,"[WE]")<>0
   autosays=Replace(autosays,"[WE]","<font face=Webdings class=p>",1,1)
   gsz=gsz+1
  Loop
  gsy=0
  Do While Instr(autosays,"[/WE]")<>0
   autosays=Replace(autosays,"[/WE]","</font>",1,1)
   gsy=gsy+1
  Loop
  for i=1 to gsz-gsy
   autosays=autosays&"</font>"
  next
 end if
end if
zj="<a href=javascript:parent.sw('[" & amn & "]'); target=f2><font color="& sayscolor & ">" & amn & "</font></a>"
br="<font color=FF0088>" & nickname & "</font>"
autosays=Replace(autosays,"##",zj)
autosays=Replace(autosays,"%%",br)
autosays="<font color=" & addwordcolor & ">" & zj & Trim(mid(autosays,3,len(autosays)-2)) & "</font>"
autosays=Replace(autosays,"\","\\")
autosays=Replace(autosays,"/","\/")
autosays=Replace(autosays,chr(34),"\"&chr(34))
Application.Lock
sd=Application("hg_chat_sd")
line=int(Application("hg_chat_line"))
Application("hg_chat_line")=line+1
Dim autonewsd(540)
j=1
for i=10 to 540 step 9
 autonewsd(j)=sd(i)
 autonewsd(j+1)=sd(i+1)
 autonewsd(j+2)=sd(i+2)
 autonewsd(j+3)=sd(i+3)
 autonewsd(j+4)=sd(i+4)
 autonewsd(j+5)=sd(i+5)
 autonewsd(j+6)=sd(i+6)
 autonewsd(j+7)=sd(i+7)
 autonewsd(j+8)=sd(i+8)
 j=j+9
next
autonewsd(532)=line+1
autonewsd(533)=1
autonewsd(534)=towhoway
autonewsd(535)=amn
autonewsd(536)=nickname
autonewsd(537)=sayscolor
autonewsd(538)=addwordcolor
autonewsd(539)=addsays
autonewsd(540)=autosays & t
Application("hg_chat_sd")=autonewsd
Application.UnLock
call showsay()
Sub showsay()
 filname=Session("hg_user_filname")
 sift=Session("hg_user_sift")
 titlecolor=Application("hg_chat_titlecolor")
 Response.Write "<script Language='JavaScript'>"
 sd=Application("hg_chat_sd")
 userline=int(Session("hg_user_line"))
 newuserline=0
 Dim show()
 j=1
 Select Case sift
 Case "0"
  for i=1 to 540 step 9
   newuserline=sd(i)
   if sd(i)>userline and (sd(i+2)="0" or sd(i+4)="大家" or sd(i+2)="1" and (CStr(sd(i+3))=CStr(nickname) or CStr(sd(i+4))=CStr(nickname))) and Instr(filname," "&sd(i+3)&",")=0 then
    Redim Preserve show(j),show(j+1),show(j+2),show(j+3),show(j+4),show(j+5),show(j+6),show(j+7),show(j+8)
    show(j)=sd(i)
    show(j+1)=sd(i+1)
    show(j+2)=sd(i+2)
    show(j+3)=sd(i+3)
    show(j+4)=sd(i+4)
    show(j+5)=sd(i+5)
    show(j+6)=sd(i+6)
    show(j+7)=sd(i+7)
    show(j+8)=sd(i+8)
    j=j+9
   end if
  next
 Case "1"
  for i=1 to 540 step 9
   newuserline=sd(i)
   if sd(i)>userline and (sd(i+4)="大家" or CStr(sd(i+3))=CStr(nickname) or CStr(sd(i+4))=CStr(nickname)) and Instr(filname," "&sd(i+3)&",")=0 then
    Redim Preserve show(j),show(j+1),show(j+2),show(j+3),show(j+4),show(j+5),show(j+6),show(j+7),show(j+8)
    show(j)=sd(i)
    show(j+1)=sd(i+1)
    show(j+2)=sd(i+2)
    show(j+3)=sd(i+3)
    show(j+4)=sd(i+4)
    show(j+5)=sd(i+5)
    show(j+6)=sd(i+6)
    show(j+7)=sd(i+7)
    show(j+8)=sd(i+8)
    j=j+9
   end if
  next
 Case "2"
  for i=1 to 540 step 9
   newuserline=sd(i)
   if sd(i)>userline and (CStr(sd(i+3))=CStr(nickname) or CStr(sd(i+4))=CStr(nickname)) and Instr(filname," "&sd(i+3)&",")=0 then
    Redim Preserve show(j),show(j+1),show(j+2),show(j+3),show(j+4),show(j+5),show(j+6),show(j+7),show(j+8)
    show(j)=sd(i)
    show(j+1)=sd(i+1)
    show(j+2)=sd(i+2)
    show(j+3)=sd(i+3)
    show(j+4)=sd(i+4)
    show(j+5)=sd(i+5)
    show(j+6)=sd(i+6)
    show(j+7)=sd(i+7)
    show(j+8)=sd(i+8)
    j=j+9
   end if
  next
 End Select
 if j>1 then
  for i=1 to UBound(show) step 9
   Response.Write "parent.sh(" & show(i+1) & "," & show(i+2) & "," & chr(34) & show(i+3) & chr(34) & "," & chr(34) & show(i+4) & chr(34) & "," & chr(34) & show(i+5) & chr(34) & "," & chr(34) & show(i+6) & chr(34) & "," & chr(34) & show(i+7) & chr(34) & "," & chr(34) & show(i+8) & chr(34) & ");"
  next
 end if
 if titleline=1 then Response.Write "parent.t.location.reload();"
 if newuserline>userline then Session("hg_user_line")=int(newuserline)
 if Instr(webicqname," "&nickname&" ")>0 then
  Response.Write "window.open('webicqread.asp','','Status=no,scrollbars=yes,resizable=no,width=430,height=160');"
 end if
 Response.Write "</script>"
 Response.End
End Sub%>