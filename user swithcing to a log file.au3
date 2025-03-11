$logFile = @DesktopDir & "\WindowLog.txt"

; Start logging
While True
    $activeWindow = WinGetTitle("[ACTIVE]")

    If $activeWindow <> "" Then
        FileWriteLine($logFile, @HOUR & ":" & @MIN & ":" & @SEC & " - " & $activeWindow)
    EndIf

    Sleep(1000) ; Check every second
Wend
