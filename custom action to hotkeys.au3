; Assign hotkeys to specific actions
; HotKeySet binds a key combination to a custom function

HotKeySet("^!n", "OpenNotepad") ; Ctrl + Alt + N
HotKeySet("^!b", "OpenFolder")  ; Ctrl + Alt + B
HotKeySet("^!e", "ExitScript")  ; Ctrl + Alt + E

; Infinite loop to keep the script running
While 1
    Sleep(100) ; Prevent high CPU usage
WEnd

; Function to open Notepad
Func OpenNotepad()
    Run("notepad.exe") ; Run Notepad
EndFunc

; Function to open a specific folder
Func OpenFolder()
    Run("explorer.exe C:\Your\Folder\Path") ; Replace with your desired folder path
EndFunc

; Function to exit the script
Func ExitScript()
    Exit ; Stops the script
EndFunc
