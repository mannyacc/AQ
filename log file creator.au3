$file = "script_log.txt"
FileWrite($file, @YEAR & "-" & @MON & "-" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC & " - Script executed successfully." & @CRLF)
MsgBox(0, "Log Updated", "Log updated successfully.")
