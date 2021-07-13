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
InputBox, Project,Project Name:,
InputBox, Client, Client Name:,
FileCreateDir,  %CurrentDateTime%_%Project%-%Client%
FileCreateDir, %CurrentDateTime%_%Project%-%Client%/0_EXPORTS
FileCreateDir, %CurrentDateTime%_%Project%-%Client%/0_EXPORTS/PREVIEWS
FileCreateDir, %CurrentDateTime%_%Project%-%Client%/0_EXPORTS/DELIVERY
FileCreateDir, %CurrentDateTime%_%Project%-%Client%/1_DRIVE
FileCreateDir, %CurrentDateTime%_%Project%-%Client%/1_DRIVE/cache
FileCreateDir, %CurrentDateTime%_%Project%-%Client%/2_EDIT REF
FileCreateDir, %CurrentDateTime%_%Project%-%Client%/3_GRADE_REFERENCES
FileCreateDir, %CurrentDateTime%_%Project%-%Client%/4_CBR
FileCreateDir, %CurrentDateTime%_%Project%-%Client%/4_CBR/0_SOCIAL_STILLS
FileCreateDir, %CurrentDateTime%_%Project%-%Client%/4_CBR/1_Timelines
FileCreateDir, %CurrentDateTime%_%Project%-%Client%/4_CBR/3_HALDsandLuts
FileCreateDir, %CurrentDateTime%_%Project%-%Client%/4_CBR/2_Resolve_Projects
FileCreateDir,  F:\%CurrentDateTime%_%Project%-%Client%

clipboard = %CurrentDateTime%_%Project%-%Client%
ExitApp,