#include <GUIConstantsEx.au3>
#include <EditConstants.au3>  ; Required for $ES_MULTILINE
#include <WindowsConstants.au3>  ; Required for $WS_VSCROLL

Global $hGUI, $hEdit

; Create GUI Window
$hGUI = GUICreate("Simple Notepad", 500, 400)

; Create Edit Box
$hEdit = GUICtrlCreateEdit("", 10, 10, 480, 340, $ES_MULTILINE + $WS_VSCROLL)

; Create Menu
$hMenuFile = GUICtrlCreateMenu("File")
$hOpen = GUICtrlCreateMenuItem("Open", $hMenuFile)
$hSave = GUICtrlCreateMenuItem("Save", $hMenuFile)
GUICtrlCreateMenuItem("", $hMenuFile) ; Separator
$hExit = GUICtrlCreateMenuItem("Exit", $hMenuFile)

$hMenuEdit = GUICtrlCreateMenu("Edit")
$hCut = GUICtrlCreateMenuItem("Cut", $hMenuEdit)
$hCopy = GUICtrlCreateMenuItem("Copy", $hMenuEdit)
$hPaste = GUICtrlCreateMenuItem("Paste", $hMenuEdit)
GUICtrlCreateMenuItem("", $hMenuEdit) ; Separator
$hClear = GUICtrlCreateMenuItem("Clear", $hMenuEdit)

$hMenuView = GUICtrlCreateMenu("View")
$hWordWrap = GUICtrlCreateMenuItem("Toggle Word Wrap", $hMenuView)

GUISetState(@SW_SHOW)

While 1
    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE, $hExit
            Exit
	Case $hOpen, $hSave, $hCut, $hCopy, $hPaste, $hClear, $hWordWrap
	EndSwitch
Wend
