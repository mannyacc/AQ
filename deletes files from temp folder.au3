$tempFolder = @TempDir & "\*"

; Find files in temp folder
$search = FileFindFirstFile($tempFolder)
If $search = -1 Then
    MsgBox(48, "Cleanup", "No files found in temp folder.")
    Exit
EndIf

; Delete files and count them
$count = 0
While True
    $file = FileFindNextFile($search)
    If @error Then ExitLoop
    If FileDelete(@TempDir & "\" & $file) Then $count += 1
WEnd
FileClose($search)

; Show summary
MsgBox(64, "Cleanup Complete", $count & " files deleted from temp folder.")

