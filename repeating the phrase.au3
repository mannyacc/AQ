; Simple AutoIt Text Repeater

; Get user inputs
$phrase = InputBox("Text Repeater", "Enter the phrase to repeat:")
$repeatCount = InputBox("Text Repeater", "How many times?", "1")

; Validate inputs
If @error Or $phrase = "" Or Not StringIsInt($repeatCount) Then Exit

; Give user time to switch applications
MsgBox(64, "Get Ready", "Switch to your target application. Typing starts in 3 seconds.")
Sleep(3000)

; Repeat the text
For $i = 1 To $repeatCount
    Send($phrase & "{ENTER}")
    Sleep(100)  ; Ensure there's no special character or incorrect space here
Next
