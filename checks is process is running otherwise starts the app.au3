; AutoIt Script: Process Checker & Launcher

; Ask user for process name
$process = InputBox("Process Checker", "Enter process name (e.g., notepad):")
If $process = "" Then Exit ; Exit if no input

; Ensure it ends with .exe
If StringRight($process, 4) <> ".exe" Then $process &= ".exe"

; Check if process exists
If ProcessExists($process) Then
    MsgBox(64, "Process Status", $process & " is already running.")
Else
    MsgBox(64, "Process Status", $process & " is not running. Starting it now...")
    Run($process) ; Start the application
    If @error Then
        MsgBox(16, "Error", "Failed to start " & $process & ". Check if the application exists.")
    EndIf
EndIfn