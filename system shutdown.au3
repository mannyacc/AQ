$minutes = InputBox("Shutdown Timer", "Enter minutes before shutdown:", "5")

; Exit if input is empty or not a number
If $minutes = "" Or Not StringIsInt($minutes) Then Exit

; Convert minutes to seconds and schedule shutdown
Shutdown(1) ; Ensures shutdown is enabled
Run("shutdown /s /t " & $minutes * 60)

; Confirm shutdown
MsgBox(64, "Shutdown Scheduled", "System will shut down in " & $minutes & " minutes.")
