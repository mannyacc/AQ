Global $predefinedLocation = @DesktopDir  ; Default location (Desktop)

; Get folder name from user
$folderName = InputBox("Create Folder", "Enter folder name:", "", "", 300, 150)

; Exit if no input
If @error Then Exit

; Construct folder path
$folderPath = $predefinedLocation & "\" & $folderName

; Check and create folder
If FileExists($folderPath) Then
    MsgBox(48, "Folder Exists", "The folder already exists: " & $folderPath)
ElseIf DirCreate($folderPath) Then
    MsgBox(64, "Success", "Folder created: " & $folderPath)
Else
    MsgBox(16, "Error", "Failed to create the folder.")
EndIf
