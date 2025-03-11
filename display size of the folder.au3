$folder = FileSelectFolder("Select a folder", "")
If @error Then Exit ; Exit if no folder is selected

; Get folder size and show result
MsgBox(64, "Folder Size", "Total size: " & Round(GetFolderSize($folder) / 1048576, 2) & " MB")

; Function to calculate folder size
Func GetFolderSize($path)
    Local $size = 0, $search = FileFindFirstFile($path & "\*")
    If $search = -1 Then Return 0

    While 1
        $file = FileFindNextFile($search)
        If @error Then ExitLoop
        If StringInStr(FileGetAttrib($path & "\" & $file), "D") Then
            $size += GetFolderSize($path & "\" & $file) ; Recursively calculate subfolder size
        Else
            $size += FileGetSize($path & "\" & $file) ; Add file size
        EndIf
    WEnd

    FileClose($search)
    Return $size ; **Ensure no hidden character here**
EndFunc
