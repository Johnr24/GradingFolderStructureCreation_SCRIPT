#SingleInstance, Force
#KeyHistory, 0
SetBatchLines, -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
; DetectHiddenWindows, On
; SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
; SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
; SetMouseDelay, -1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag


; I Need to 

; Create a folder with the reverse date like this 20200814_ 
;Have a project name box appear
; have a set of subfolders in that main folder

FormatTime, CurrentDateTime,, yyyyMMdd_


^!f:: ;Ctrl+Alt+f hotkey...

#IfWinActive, ahk_class CabinetWClass
^n::
InputBox, FolderName, What is the Name of the project?,
FileCreateDir,  %CurrentDateTime%_%FolderName%
FileCreateDir, %CurrentDateTime%_%FolderName%/0_EXPORTS
FileCreateDir, %CurrentDateTime%_%FolderName%/1_DRIVE
FileCreateDir, %CurrentDateTime%_%FolderName%/2_EDIT REF
FileCreateDir, %CurrentDateTime%_%FolderName%/3_GRADE_REFERENCES
Return