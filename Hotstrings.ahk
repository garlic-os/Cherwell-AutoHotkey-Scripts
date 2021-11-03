#SingleInstance, Force  ; Less annoying
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

; How to use a Hotstring
; 1. In a new word (either a space behind the cursor or nothing), type "@#"
; 2. Type the name of a hotstring below
; The corresponding hotstring message will be typed out automatically.

; Add your own to the end of the script by just following the same pattern!
; The stuff in "::" is what you type; the stuff after the "::" is what it gets replaced with
; "`n" means new line. Use this in place of actual line breaks in your hotstring.
; To put your changes into effect, right click this script's icon in the system tray and
;   choose "Reload This Script".


::@#afk::It has been a while since your last response. Were we able to help you [GOAL OF TICKET]?`nThis ticket will be marked as resolved if we do not hear back by the end of [DATE].
::@#afkpost::Will close this ticket after [DATE] if we don't get another response.

::@#mfa::I went ahead and flagged your account as needing to re-register your authenticator. Please go to this link: https://portal.office.com/ on your computer, and it will guide you through setting up the authenticator app on your new phone. Once you have done this, you should be able to log in again.
::@#mfapost::Reset the customer's MFA and directed them to portal.office.com to set it back up.

::@#vdi::To access [PRODUCT], you will need to run it through the VDI. On your computer, install and run VMware Horizon Client, choose the General Access pool, then while inside of the VDI, run the software on AppsAnywhere.`nFor more information on what the VDI is and how to use it, please see its IT Services page here: https://it.mst.edu/services/vdi/ 

::@#closenocontact::Closing ticket for lack of contact. Please submit a new request if the issue persists.
::@#closenocontactpost::Closed ticket for lack of contact.

::@#closerequest::Closing ticket at customer's request. Please feel free to submit a new request if the issue persists.
::@#closerequestpost::Closed ticket at customer's request.

::@#alum::Your account is going through what we call Maintenance Mode. This is the process of your account moving from active student to alumnus where you lose access to many things like the full Microsoft Office software suite. Maintenance Mode started for alumni this semester on 3/8. Once this is finished, you will be able to login to your email the same as before. Maintenance Mode normally takes 2-3 weeks to complete, so you should have access again soon.
::@#alumpost::Emailed the customer to tell them that their account is in maintenance mode, they're losing the Microsoft Office suite, and they'll be able to access their email again after the 2-3-week-long migration process.

::@#wifi::First, you'll need to make sure your device is registered with IT. You can do that here:`nhttps://it.mst.edu/services/device-registration/`nAfter that, directions for connecting to wifi can be found here:`nhttps://it.mst.edu/services/wireless/`nIf you need any more help, please start a live chat or stop by the Help Desk.`nhttps://it.mst.edu/help-desk/
::@#wifipost::Emailed the customer with instructions on how to connect to the campus Wi-Fi.

::@#printer::Please follow these instructions to add a printer to the computer. On the computer you need to add the printer to:`nOpen the Start Menu`nSearch "help me print" and click the folder icon named "Help Me Print".`nScroll down to the "TJ Res Hall" folder and double click it.`nDouble click the printer named "reslife-mfp-03".`nWait for a few minutes until a small window named "reslife-mfp-03" pops up. This signals that the printer has finished installing and is ready to use.

::@#sw::Passing to Asset Management for a request to install Solidworks on a personal computer.

::@#sig::`n`nThanks,`nIT Help Desk

::@#hours::The IT Help Desk is located on the first floor of the Library to the left of the front entrance. We are open Monday thru Friday from 8:30 AM to 4:30 PM. Please reference this ticket number ([TICKET NUMBER]) when you come in.
