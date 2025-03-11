Local $windowTitle = "Untitled - Notepad"
Local $width = 800
Local $height = 200
Run("notepad.exe")
If WinWait($windowTitle, "", 5) Then
WinWaitActive($windowTitle)
WinMove($windowTitle, "", Default, Default, $width, $height)
MsgBox(0, "Success", "Notepad has been opened and resized to " & $width & "x" & $height & ".")
Else
MsgBox(16, "Error", "The Notepad window could not be opened or found.")
EndIf
