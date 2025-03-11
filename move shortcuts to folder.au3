#include <File.au3>
Local $desktopPath = @DesktopDir
Local $shortcutFolder = $desktopPath & "\Shortcut"
If Not FileExists($shortcutFolder) Then
DirCreate($shortcutFolder)
EndIf
Local $files = _FileListToArray($desktopPath,"*.*", 1)
If Not @error Then
For $i = 1 To $files[0]
Local $sourceFile = $desktopPath & "\" & $files[$i]
Local $destinationFile = $shortcutFolder & "\" & $files[$i]
FileMove($sourceFile, $destinationFile, 9)
Next
Else
MsgBox(64,"Info","No files found on the desktop.")
EndIf
MsgBox(64,"Done","All files have been moved to the 'Shortcut' folder.")
