#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>

; Create GUI
$hGUI = GUICreate("Countdown Timer", 250, 130)
GUICtrlCreateLabel("Enter Seconds:", 20, 20, 100, 20)
$inputTime = GUICtrlCreateInput("", 120, 20, 80, 20)
$btnStart = GUICtrlCreateButton("Start", 80, 60, 80, 30)
$lblCountdown = GUICtrlCreateLabel("", 80, 100, 100, 20)

GUISetState(@SW_SHOW)

; Event loop
While 1
    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE
            Exit
        Case $btnStart
            Local $timeLeft = GUICtrlRead($inputTime)
            If Not StringIsInt($timeLeft) Or $timeLeft <= 0 Then
                MsgBox($MB_ICONERROR, "Error", "Enter a valid number!")
                ContinueLoop
            EndIf
            ; Countdown loop
            While $timeLeft > 0
                GUICtrlSetData($lblCountdown, $timeLeft & "s remaining")
                Sleep(1000)
                $timeLeft -= 1
            WEnd
            MsgBox($MB_ICONINFORMATION, "Done!", "Time's up!")
            GUICtrlSetData($lblCountdown, "")
    EndSwitch
Wend
