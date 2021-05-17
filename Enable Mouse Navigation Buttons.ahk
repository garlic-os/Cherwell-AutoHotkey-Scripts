#SingleInstance, Force  ; Less annoying
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
CoordMode, Mouse, Client  ; Recommended coordinate mode because it is less dependent of OS and theme.
#UseHook
SetDefaultMouseSpeed, 0

ClickAndMoveBack(x, y) {
	; Click somewhere then move the mouse back to where it was before.
	MouseGetPos, StartX, StartY
	Click, %x%, %y%
	MouseMove, StartX, StartY
	Return
}

Hotkey, IfWinActive, ahk_exe Trebuchet.App.exe
Hotkey, XButton1, ClickBackButton
Hotkey, IfWinActive, ahk_exe Trebuchet.App.exe
Hotkey, XButton2, ClickForwardButton
Return

ClickBackButton:
	ClickAndMoveBack(32, 38)
	Return

ClickForwardButton:
	ClickAndMoveBack(68, 38)
	Return

