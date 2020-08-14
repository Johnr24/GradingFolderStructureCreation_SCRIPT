    #SingleInstance, Force
#KeyHistory, 0
SetBatchLines, -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling

FormatTime, CurrentDateTime,, yyyyMMdd

#IfWinActive, ahk_class CabinetWClass
InputBox, FolderName, What is the Name of the project?,
FileCreateDir,  %CurrentDateTime%_%FolderName%
FileCreateDir, %CurrentDateTime%_%FolderName%/0_EXPORTS
FileCreateDir, %CurrentDateTime%_%FolderName%/1_DRIVE
FileCreateDir, %CurrentDateTime%_%FolderName%/2_EDIT REF
FileCreateDir, %CurrentDateTime%_%FolderName%/3_GRADE_REFERENCES
clipboard = %CurrentDateTime%_%FolderName%
ExitApp,