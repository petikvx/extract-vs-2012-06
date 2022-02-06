@echo off

pskill iexplore.exe
pskill ISTsvc.exe
pskill sidefind.exe
pskill gjefpet.exe
pskill istrecover[1].exe

set ProgramFiles=c:\Program Files

del "%ProgramFiles%\ISTsvc\ISTsvc.exe" 
del "%ProgramFiles%\SideFind\sfbho.dll"
del "%ProgramFiles%\SideFind\sidefind.dll"
del "%ProgramFiles%\SideFind\sfex001"
del "%ProgramFiles%\SideFind\update\sidefind.exe"
del "%ProgramFiles%\YourSiteBar\ysb.dll"
del "%ProgramFiles%\YourSiteBar\imagemap_normal.bmp"
del "%ProgramFiles%\YourSiteBar\version.txt"
del "%ProgramFiles%\YourSiteBar\yoursitebar.xml"
del "%Windir%\system32\gjefpet.exe"
del "%Windir%\Downloaded Program Files\ysbactivex.dll"
del "%UserProfile%\Favorites\Fun & Games\Betting.lnk"
del "%UserProfile%\Favorites\Fun & Games\Casino Palace.lnk"
del "%UserProfile%\Favorites\Fun & Games\Casino.lnk"
del "%UserProfile%\Favorites\Fun & Games\Games.lnk"
del "%UserProfile%\Favorites\Fun & Games\Horoscope.lnk"
del "%UserProfile%\Favorites\Going Places\Air Tickets.lnk"
del "%UserProfile%\Favorites\Going Places\Car Rentals.lnk"
del "%UserProfile%\Favorites\Going Places\Hotel Deals.lnk"
del "%UserProfile%\Favorites\Going Places\Luggage.lnk"
del "%UserProfile%\Favorites\Going Places\Travel.lnk"
del "%UserProfile%\Favorites\Living\Dating.lnk"
del "%UserProfile%\Favorites\Living\Find a Degree.lnk"
del "%UserProfile%\Favorites\Living\Find a job.lnk"
del "%UserProfile%\Favorites\Living\Home.lnk"
del "%UserProfile%\Favorites\Living\Insurance.lnk"
del "%UserProfile%\Favorites\Shop\Auctions.lnk"
del "%UserProfile%\Favorites\Shop\Books.lnk"
del "%UserProfile%\Favorites\Shop\Computers.lnk"
del "%UserProfile%\Favorites\Shop\Discount.lnk"
del "%UserProfile%\Favorites\Shop\Flowers.lnk"
del "%UserProfile%\Favorites\Shop\Golf.lnk"
del "%UserProfile%\Favorites\Shop\Jewelry.lnk"
del "%UserProfile%\Favorites\Shop\Movies.lnk"
del "%UserProfile%\Favorites\Shop\Music.lnk"
del "%UserProfile%\Favorites\Shop\Online Store.lnk"
del "%UserProfile%\Favorites\Shop\Perfume.lnk"
del "%UserProfile%\Favorites\Shop\Sleepware.lnk"
del "%UserProfile%\Favorites\Technology\Adware Remover.lnk"
del "%UserProfile%\Favorites\Technology\Anti-Virus.lnk"
del "%UserProfile%\Favorites\Technology\PC Cleaner.lnk"
del "%UserProfile%\Favorites\Technology\Tech & gadgets.lnk"

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\IST Service" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Search\SearchAssistant" /f
REG DELETE "HKEY_LOCAL_MACHINE\Software\ISTsvc" /f
REG DELETE "HKEY_LOCAL_MACHINE\Software\ISTbar" /f
REG DELETE "HKEY_LOCAL_MACHINE\Software\Sidefind" /f
REG DELETE "HKEY_LOCAL_MACHINE\Software\YourSiteBar" /f
REG DELETE "HKEY_LOCAL_MACHINE\Software\Microsoft\Sidefind" /f
REG DELETE "HKEY_LOCAL_MACHINE\Software\Microsoft\DownloadManager" /f
REG DELETE "HKEY_CURRENT_USER\Software\IST" /f
REG DELETE "HKEY_CURRENT_USER\Software\ISTbar" /f
REG DELETE "HKEY_CLASSES_ROOT\ISTbar.BarObj" /f
REG DELETE "HKEY_CLASSES_ROOT\BrowserHelperObject.BAHelper" /f
REG DELETE "HKEY_CLASSES_ROOT\BrowserHelperObject.BAHelper.1" /f
REG DELETE "HKEY_CLASSES_ROOT\SideFind.Finder" /f
REG DELETE "HKEY_CLASSES_ROOT\SideFind.Finder.1" /f
REG DELETE "HKEY_CLASSES_ROOT\Pugi.PugiObj.1" /f
REG DELETE "HKEY_CLASSES_ROOT\Pugi.PugiObj" /f
REG DELETE "HKEY_CLASSES_ROOT\YSBactivex.Installer.1" /f
REG DELETE "HKEY_CLASSES_ROOT\YSBactivex.Installer" /f
REG DELETE "HKEY_CLASSES_ROOT\Ysb.YsbObj" /f
REG DELETE "HKEY_CLASSES_ROOT\Ysb.YsbObj.1" /f
REG DELETE "HKEY_CLASSES_ROOT\ISTactivex.Installer" /f
REG DELETE "HKEY_CLASSES_ROOT\ISTactivex.Installer.1" /f
REG DELETE "HKEY_CLASSES_ROOT\ISTactivex.Installer.2" /f
REG DELETE "HKEY_CLASSES_ROOT\TestContentMatchControl1.ContentMatchTag" /f
REG DELETE "HKEY_CLASSES_ROOT\TestContentMatchControl1.ContentMatchTag.1" /f
REG DELETE "HKEY_CLASSES_ROOT\ISTx.Installer" /f
REG DELETE "HKEY_CLASSES_ROOT\ISTx.Installer.2" /f
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{FAA356E4-D317-42A6-AB41-A3021C6E7D52}" /f
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{8CBA1B49-8144-4721-A7B1-64C578C9EED7}" /f
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{A3FDD654-A057-4971-9844-4ED8E67DBBB8}" /f
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{5F1ABCDB-A875-46c1-8345-B72A4567E486}" /f
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{771A1334-6B08-4a6b-AEDC-CF994BA2CEBE}" /f
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{42F2C9BA-614F-47c0-B3E3-ECFD34EED658}" /f
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{86227D9C-0EFE-4F8A-AA55-30386A3F5686}" /f
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{386A771C-E96A-421f-8BA7-32F1B706892F}" /f
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{018B7EC3-EECA-11D3-8E71-0000E82C6C0D}" /f
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{DC341F1B-EC77-47BE-8F58-96E83861CC5A}" /f
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{7C559105-9ECF-42b8-B3F7-832E75EDD959}" /f
REG DELETE "HKEY_CLASSES_ROOT\Interface\{A36A5936-CFD9-4B41-86BD-319A1931887F}" /f
REG DELETE "HKEY_CLASSES_ROOT\Interface\{DC065FA6-08F9-4C50-99DC-275D16CFC5BD}" /f
REG DELETE "HKEY_CLASSES_ROOT\Interface\{339D8AFF-0B42-4260-AD82-78CE605A9543}" /f
REG DELETE "HKEY_CLASSES_ROOT\Interface\{BF06DA8E-2BEB-4816-9BBD-F7625246E245}" /f
REG DELETE "HKEY_CLASSES_ROOT\Interface\{7B9A715E-9D87-4C21-BF9E-F914F2FA953F}" /f
REG DELETE "HKEY_CLASSES_ROOT\Interface\{90CE74CC-788A-4A00-B38D-CBCA08CC9E8F}" /f
REG DELETE "HKEY_CLASSES_ROOT\Interface\{EAF2CCEE-21A1-4203-9F36-4929FD104D43}" /f
REG DELETE "HKEY_CLASSES_ROOT\Interface\{0985C112-2562-46F2-8DA6-92648BA4630F}" /f
REG DELETE "HKEY_CLASSES_ROOT\Interface\{9388907F-82F5-434D-A941-BB802C6DD7C1}" /f
REG DELETE "HKEY_CLASSES_ROOT\Interface\{0E704BA4-C517-4BE7-A1CD-C3FFDA1E1FFE}" /f
REG DELETE "HKEY_CLASSES_ROOT\Interface\{03B800F9-2536-4441-8CDA-2A3E6D15B4F8}" /f
REG DELETE "HKEY_CLASSES_ROOT\Interface\{DFBCC1EB-B149-487E-80C1-CC1562021542}" /f
REG DELETE "HKEY_CLASSES_ROOT\TypeLib\{E9A5B71C-093B-4F34-AF07-34FCA89BA0DF}" /f
REG DELETE "HKEY_CLASSES_ROOT\TypeLib\{8C752C5E-3C10-4076-AF0A-FFC69FA20D1B}" /f
REG DELETE "HKEY_CLASSES_ROOT\TypeLib\{58634367-D62B-4C2C-86BE-5AAC45CDB671}" /f
REG DELETE "HKEY_CLASSES_ROOT\TypeLib\{89A10D64-83BF-41A4-86A3-7AAF1F8F3D1B}" /f
REG DELETE "HKEY_CLASSES_ROOT\TypeLib\{D0288A41-9855-4A9B-8316-BABE243648DA}" /f
REG DELETE "HKEY_CLASSES_ROOT\TypeLib\{DB447818-96B4-40DF-8A55-720DA496F514}" /f
REG DELETE "HKEY_CLASSES_ROOT\TypeLib\{CC257918-F435-4A33-8231-2B8195990CCA}" /f
REG DELETE "HKEY_CLASSES_ROOT\TypeLib\{6D3F5DE4-E980-4407-A10F-9AC771ABAAE6}" /f
REG DELETE "HKEY_CLASSES_ROOT\TypeLib\{67907B3C-A6EF-4A01-99AD-3FCD5F526429}" /f
REG DELETE "HKEY_CLASSES_ROOT\TypeLib\{4EE12B71-AA5E-45EC-8666-2DB3AD3FDF44}" /f
REG DELETE "HKEY_CLASSES_ROOT\Component Categories\{00021494-0000-0000-C000-000000000046}" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\ISTbar" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\ISTsvc" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\SideFind" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\ISTbarISTbar" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\YourSiteBar" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Extensions\{10E42047-DEB9-4535-A118-B3F6EC39B807}" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\CurrentVersion\Explorer\Browser Helper Objects\{A3FDD654-A057-4971-9844-4ED8E67DBBB8}" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\contentmatch.net" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Code Store Database\Distribution Units\{7C559105-9ECF-42B8-B3F7-832E75EDD959}" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ModuleUsage\C:/WINDOWS/Downloaded Program Files/ISTactivex.dll" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ModuleUsage\C:/WINNT/Downloaded Program Files/ISTactivex.dll" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\BandRest" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Search Bar" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Search Page" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Search Page_bak" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page_bak" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Use Search Assistant" /f
REG DELETE "HKEY_LOCAl_MACHINE\Software\Microsoft\Internet Explorer\Main\BandRest" /f

r.bat

exit