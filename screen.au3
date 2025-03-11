#include <ScreenCapture.au3>

; Set Hotkeys
HotKeySet("^!s", "TakeScreenshot")  ; Ctrl + Alt + S ? Capture Screenshot
HotKeySet("^!e", "ExitScript")      ; Ctrl + Alt + E ? Exit Script

; Keep script running
While True
    Sleep(100)
WEnd

; Screenshot Function
Func TakeScreenshot()
    Local $saveFolder = "C:\screenshot"

    ; Create folder if it doesn’t exist
    If Not FileExists($saveFolder) Then DirCreate($saveFolder)

    ; Generate filename with timestamp
    Local $timestamp = @YEAR & @MON & @MDAY & "_" & @HOUR & @MIN & @SEC
    Local $filePath = $saveFolder & "\Screenshot_" & $timestamp & ".png"

    ; Capture the entire screen and save
    _ScreenCapture_Capture($filePath)

    ; Show a notification for 3 seconds
    TrayTip("Screenshot Taken!", "Saved: " & $filePath, 3000)
EndFunc

; Exit Script Function
Func ExitScript()
    Exit
EndFunc
