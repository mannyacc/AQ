#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <EditConstants.au3>
#include <FileConstants.au3>
Global $hGUI, $hInput

$hGUI = GUICreate("Calculator", 300, 400)

$hInput = GUICtrlCreateInput("", 10, 10, 280, 50, $ES_READONLY)
GUICtrlSetFont($hInput, 20, 400, Default, "Arial")

CreateButton("1", 10, 70, 60, 60)
CreateButton("2", 80, 70, 60, 60)
CreateButton("3", 150, 70, 60, 60)
CreateButton("4", 10, 140, 60, 60)
CreateButton("5", 80, 140, 60, 60)
CreateButton("6", 150, 140, 60, 60)
CreateButton("7", 10, 210, 60, 60)
CreateButton("8", 80, 210, 60, 60)
CreateButton("9", 150, 210, 60, 60)
CreateButton("0", 80, 280, 60, 60)
CreateButton("+", 220, 70, 60, 60)
CreateButton("-", 220, 140, 60, 60)
CreateButton("*", 220, 210, 60, 60)
CreateButton("/", 220, 280, 60, 60)
CreateButton("=", 10, 350, 270, 40)

GUISetState(@SW_SHOW)

While 1
    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE
            ExitLoop
        Case $GUI_EVENT_PRIMARYDOWN To $GUI_EVENT_PRIMARYUP
            ; Placeholder for button click handling
    EndSwitch
WEnd

Func CreateButton($sText, $iX, $iY, $iWidth, $iHeight)
    Local $hButton = GUICtrlCreateButton($sText, $iX, $iY, $iWidth, $iHeight)
    GUICtrlSetFont($hButton, 14, 400, Default, "Arial")
    Return $hButton
EndFunc

