
#include <FileConstants.au3>       ; For file mode constants like $FO_READ
#include <MsgBoxConstants.au3>     ; For message box icons like $MB_ICONERROR and $MB_ICONINFORMATION

; Define the file path
Global $sFilePath = "C:\Users\manthan\Desktop\hi.txt"

Global $hFile = FileOpen($sFilePath, $FO_READ)

; Check if the file was opened successfully
If $hFile = -1 Then
    MsgBox($MB_ICONERROR, "Error", "Failed to open the file!")
    Exit
EndIf

; Read the file content
Global $sFileContent = FileRead($hFile)

; Close the file after reading
FileClose($hFile)

; Display the content in a message box
MsgBox($MB_ICONINFORMATION, "File Content", $sFileContent)
