#SingleInstance, Force  ; Less annoying
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetControlDelay -1  ; May improve reliability and reduce side effects.
SendMode, Input  ; Superior speed and reliability over the default send mode.

Hotkey, IfWinActive, ahk_exe Trebuchet.App.exe
Hotkey, ^+r, ResendSelectedEmail
Return


; Ctrl + Shift + R  |  Resend selected email
; Click the note containing the email you want to resend, then press this hotkey.
ResendSelectedEmail:
	; Force release the hotkey keys so they don't screw anything up.
	Send, {Ctrl Up}
	Send, {Shift Up}
	Send, {r Up}
	
	; (Releasing keys is async. I think.)
	KeyWait, Ctrl, L
	KeyWait, Shift, L
	KeyWait, r, L

	; Click the dropdown next to the "E-mail" button and choose "Reply to all"
	; This took me hours to figure out and will probably break with the next Cherwell update
	WinGet, controls, ControlListHwnd, A
	Loop, Parse, controls, `n
	{
		ControlGetText, control_text, , ahk_id %A_LoopField%
		if (control_text == "Main Toolbar") {
			ControlSend, , {Tab}{Left}{Left}{Left}{Left}{Enter}a, ahk_id %A_LoopField%
			Break
		}
	}

	; Wait for the email box to appear.
	WinWaitActive, E-mail Message, , 10
	Sleep, 125  ; Magic delay
	if (ErrorLevel == 1) {
		; Email box didn't show up after 10 seconds;
		; play the Windows exclamation sound.
		SoundPlay, *48
		Return
	}
	
	; Change the "Send via" field to "S&T IT Help Desk" because of course it sets it to "UM DoIT Services" by default
	; This assumes the needed value is one above the current value. If that stops being consistently true, you could
	; probably use ControlGetText to find out the value selected in this box.
	ControlSend, WindowsForms10.COMBOBOX.app.0.1e4013b_r6_ad12, {Up}, A
	
	; Delete the reply information added to the top
	Loop, 9 {
		Send, +{Down}
	}
	Send, {Backspace}

	; Remove "RE: " from the subject line
	Send, +{Tab}{Home}{Delete}{Delete}{Delete}{Delete}
	
	; Delete the first email address in the Recipient field (because it's your own?? Why would I want to make myself a recipient, Cherwell?)
	Send, +{Tab}+{Tab}{Home}^{Delete}
	
	; Highlight the Send button so you can just press Enter to send.
	Send, {Tab}{Tab}{Tab}{Tab}{Tab}

	Return
