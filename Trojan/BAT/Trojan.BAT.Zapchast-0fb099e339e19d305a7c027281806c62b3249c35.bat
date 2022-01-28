@echo off
del "+Speed Test Complete"
echo _____________________>info.txt
echo    Computer Specs....                                               >>info.txt
echo _____________________>>info.txt
psinfo.exe -d >>info.txt
echo _____________________>>info.txt
echo   Result of speed test from various countries....                   >>info.txt
echo ____________ Country: DENMARK __________________________>>info.txt
dag.exe -n -A -s:dag/ftpc.dag ftp.dk.FreeBSD.org >+Status-1of17_Denmark
findstr /C:"bytes rec" +Status-1of17_Denmark>>info.txt
echo ____________ Country: GERMANY __________________________>>info.txt
del +Status-1of17_Denmark
dag.exe -n -A -s:dag/ftpc.dag ftp.de.freebsd.org >+Status-2of17_Germany
findstr /C:"bytes rec" +Status-2of17_Germany >>info.txt
echo ____________ Country: NETHERLANDS ______________________>>info.txt
del +Status-2of17_Germany
dag.exe -n -A -s:dag/ftpc.dag ftp2.nl.freebsd.org >+Status-3of17_NL
findstr /C:"bytes rec" +Status-3of17_NL >>info.txt
echo ____________ Country: USA ______________________________>>info.txt
del +Status-3of17_NL
dag.exe -n -A -s:dag/ftpc.dag ftp1.FreeBSD.org >+Status-4of17_USA
findstr /C:"bytes rec" +Status-4of17_USA >>info.txt
echo ____________ Country: USA2 _____________________________>>info.txt
del +Status-4of17_USA
dag.exe -n -A -s:dag/ftpc2.dag ftp.lucasarts.com >+Status-5of17_USA2
findstr /C:"bytes rec" +Status-5of17_USA2 >>info.txt
echo ____________ Country: Canada ___________________________>>info.txt
del +Status-5of17_USA2
dag.exe -n -A -s:dag/ftpca.dag ftp.crc.ca >+Status-6of17_Canada
findstr /C:"bytes rec" +Status-6of17_Canada >>info.txt
echo ____________ Country: SWEDEN __________________________>>info.txt
del +Status-6of17_Canada
dag.exe -n -A -s:dag/ftpc.dag ftp.se.FreeBSD.org >+Status-7of17_Sweden
findstr /C:"bytes rec" +Status-7of17_Sweden >>info.txt
echo ____________ Country: UK ______________________________>>info.txt
del +Status-7of17_Sweden
dag.exe -n -A -s:dag/ftpc.dag ftp.uk.FreeBSD.org >+Status-8of17_UK
findstr /C:"bytes rec" +Status-8of17_UK >>info.txt
echo ____________ Country: FRANCE __________________________>>info.txt
del +Status-8of17_UK
dag.exe -n -A -s:dag/ftpc.dag ftp8.fr.FreeBSD.org >+Status-9of17_France
findstr /C:"bytes rec" +Status-9of17_France >>info.txt
echo ____________ Country: NL 2 ____________________________>>info.txt
del +Status-9of17_France
dag.exe -n -A -s:dag/ftpco.dag 194.171.240.20 >+Status-10of17_NL2
findstr /C:"bytes rec" +Status-10of17_NL2 >>info.txt
echo ____________ Country: NL 3 ____________________________>>info.txt
del +Status-10of17_NL2
dag.exe -n -A -s:dag/ftpce.dag ftp.euronet.nl >+Status-11of17_NL3
findstr /C:"bytes rec" +Status-11of17_NL3 >>info.txt
echo ____________ Country: NL 4 ____________________________>>info.txt
del +Status-11of17_NL3
dag.exe -n -A -s:dag/ftpcy.dag ftp.chello.nl >+Status-12of17_NL4
findstr /C:"bytes rec" +Status-12of17_NL4 >>info.txt
echo ____________ Country: NO ______________________________>>info.txt
del +Status-12of17_NL4
dag.exe -n -A -s:dag/ftpcx.dag ftp.no.FreeBSD.org >+Status-13of17_Norway
findstr /C:"bytes rec" +Status-13of17_Norway >>info.txt
echo ____________ Country: AT ______________________________>>info.txt
del +Status-13of17_Norway
dag.exe -n -A -s:dag/ftpch.dag ftp.chello.at >+Status-14of17_At
findstr /C:"bytes rec" +Status-14of17_At >>info.txt
echo ____________ Country: HU ______________________________>>info.txt
del +Status-14of17_At
dag.exe -n -A -s:dag/ftpch.dag ftp.chello.hu >+Status-15of17_Hu
findstr /C:"bytes rec" +Status-15of17_Hu >>info.txt
echo ____________ Country: Kr ______________________________>>info.txt
del +Status-15of17_Hu
dag.exe -n -A -s:dag/ftpckr.dag ftp.kr.FreeBSD.org >+Status-16of17_Kr
findstr /C:"bytes rec" +Status-16of17_Kr >>info.txt
echo ____________ Country: JP ______________________________>>info.txt
del +Status-16of17_Kr
dag.exe -n -A -s:dag/ftpcjp.dag ftp.kr.FreeBSD.org >+Status-17of17_JP
findstr /C:"bytes rec" +Status-17of17_JP >>info.txt
echo _______ SPEED TEST RESULTS ______________ SPEED TEST RESULTS _______>>info.txt
del +Status-17of17_JP
del dag\5M.bin
del dag\arma5.zip
del dag\dx5ger.exe
del dag\Indyprev.zip
del dag\latest-defs.exe
del dag\ls-lR.gz
del dag\MBM5300.EXE
del dag\ncurses.tar.gz
del dag\patch-2.4.19.gz
echo . > "+Speed Test Complete"