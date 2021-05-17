#SingleInstance, Force  ; Less annoying
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

; How to use a Hotstring
; 1. In a new word (either a space behind the cursor or nothing), type "@#"
; 2. Type the name of a hotstring below
; The corresponding hotstring message will be typed out automatically.

; Add your own to the end of the script by just following the same pattern!
; To put your changes into effect, right click this script's icon in the system tray and
;   choose "Reload This Script".


::@#poke::It has been a while since your last response. Were we able to help you [GOAL OF TICKET]?`nThis ticket will be marked as resolved if we do not hear back by the end of [DATE].
::@#poked::Emailed the customer again after not hearing back for a while. Will close this ticket after [DATE] if we don't get another response.

::@#mfa::We have gone ahead and reset the Multi-Factor Authentication on your account. Now if you would please go to https://portal.office.com/, you will be able to set it back up and see if
::@#mfapost::Reset the customer's MFA and directed them to portal.office.com to set it back up.

::@#vdi::To access [PROUDCT], you will need to install and run the campus VDI, then inside of the VDI, run the software on AppsAnywhere.`nFor information on what the VDI is and how to use it, please read its IT Services page here: https://it.mst.edu/services/vdi/

::@#closenocontact::Closing ticket for lack of contact. Please submit a new request if the issue persists.
::@#closenocontactpost::Closed ticket for lack of contact.

::@#closerequest::Closing ticket at customer's request. Please feel free to submit a new request if the issue persists.
::@#closerequestpost::Closed ticket at customer's request.

::@#in::Taking HD4 and R23
::@#out::HD4 and R23 are free

::@#alum::Your account is going through what we call Maintenance Mode. This is the process of your account moving from active student to alumnus where you lose access to many things like the full Microsoft Office software suite. Maintenance Mode started for alumni this semester on 3/8. Once this is finished, you will be able to login to your email the same as before. Maintenance Mode normally takes 2-3 weeks to complete, so you should have access again soon.
::@#alumpost::Emailed the customer to tell them that their account is in maintenance mode, they're losing the Microsoft Office suite, and they'll be able to access their email again after the 2-3-week-long migration process.
