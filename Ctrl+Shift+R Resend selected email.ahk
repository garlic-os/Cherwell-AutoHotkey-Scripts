#SingleInstance, Force  ; Less annoying
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse, Client  ; Recommended for consistency between OSes and themes.
#UseHook
SetDefaultMouseSpeed, 0

SENTINEL_TEXT_START := "We have a question or update regarding the above Incident:"
SENTINEL_TEXT_END := "If you have questions, you may contact us by phone at"


; Ctrl + Shift + R  |  Resend selected email
; Click the note containing the email you want to resend, then press this hotkey.
^+r::
	; Save current clipboard state (this script modifies the clipboard).
	clipboard_previous_state := ClipboardAll
	
	; Force release the hotkey keys so they don't screw anything up.
	Send, {Ctrl Up}
	Send, {Shift Up}
	Send, {r Up}
	
	; (Releasing keys is async. I think)
	KeyWait, Ctrl, L
	KeyWait, Shift, L
	KeyWait, r, L

	; Select this note's textbox.
	Send, {Enter}
	Send, {Tab}
	
	; Copy the text.
	Send, ^a
	Send, ^c
	ClipWait  ; (Clipboard copy is async)
	
	; Extract the text sent in this email.
	; (Note: index starts at 1; 0 means not found)
	content_index_start := InStr(clipboard, SENTINEL_TEXT_START) + StrLen(SENTINEL_TEXT_START)
	content_index_end := InStr(clipboard, SENTINEL_TEXT_END)
	
	if (0 < content_index_start and content_index_start < content_index_end) {
		; Get the text between two spots in the message that we know always appear
		; right before and right after the content we're looking for.
		content := SubStr(clipboard, content_index_start, content_index_end - content_index_start)
		content := Trim(StrReplace(content, "`r", ""), " `t`n")
		
		; Wait for Shift to be released. I don't know why this has to be here
		; but the script breaks without it
		; KeyWait, Shift, L

		; Click the "compose an email for the customer" button.
		Click, 30, 304
		
		; Wait for the email box to appear.
		WinWaitActive, E-mail Message, , 10
		if (ErrorLevel == 1) {
			; Email box didn't show up after 10 seconds;
			; play the Windows exclamation sound.
			SoundPlay, *48
		}
		
		; Move cursor down to the message area in the email template.
		Loop, 21 {
			Send, {Down}
		}
		
		; Paste the extracted content into the email body.
		Send % content
		
		; Delete the two extra lines after the email.
		Send, {Del}
		Send, {Del}
		
		; Tab over the Send button (but leave actually clicking it up to the user).
		Send, {Tab}
		Send, {Tab}
		
		; Now, review the email and then you can press Enter to send it.
	}
	else {
		; Email content not found;
		; play the Windows exclamation sound.
		SoundPlay, *48
	}
	
	; Restore previous clipboard state.
	clipboard := clipboard_previous_state
	clipboard_previous_state := ""
	Return
