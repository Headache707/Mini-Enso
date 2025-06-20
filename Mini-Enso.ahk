; AutoHotkey script: enso.ahk
; Purpose: coordinate launching and actions on Dolphin Anty profiles with scancodes
#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

; Use absolute screen coordinates for clicks
CoordMode, Mouse, Screen

; Log file
LogFile := A_ScriptDir "\\enso.log"

; Main loop: indefinitely repeat through profiles 0-9, then wait 1 hour
Loop {
    Loop 10 {
        profileNum := A_Index - 1
        FileAppend, %A_Now% " - Starting profile #" profileNum "`n", %LogFile%

        ; Activate Dolphin Anty window
        WinActivate, ahk_class Chrome_WidgetWin_1 ahk_exe Dolphin Anty.exe
        Sleep, 5000

        ; 3. Open profile search using scancode for '/'
        SendInput, {sc035}
        Sleep, 5000

        ; 4. Clear and enter profile number via scancode
        SendInput, {Backspace}
        ; map profileNum to scancode
        if (profileNum = 0)
            sc := "0B"
        else if (profileNum = 1)
            sc := "02"
        else if (profileNum = 2)
            sc := "03"
        else if (profileNum = 3)
            sc := "04"
        else if (profileNum = 4)
            sc := "05"
        else if (profileNum = 5)
            sc := "06"
        else if (profileNum = 6)
            sc := "07"
        else if (profileNum = 7)
            sc := "08"
        else if (profileNum = 8)
            sc := "09"
        else if (profileNum = 9)
            sc := "0A"
        SendInput, {sc%sc%}
        Sleep, 10000

        ; 5. Launch profile 'Enso'
        Click, 732, 134
        Sleep, 5000

        ; 6. Wait for profile to launch
        Sleep, 5000

        ; 7. Activate TunnelBear extension
        SendInput, ^+o
        Sleep, 5000

        ; 8. Toggle VPN
        SendInput, ^+u
        Sleep, 5000

        ; 9. Focus address bar
        SendInput, !d
        Sleep, 5000

        ; 10. Navigate to site
        SendInput, https://freebitco.in/?op=home{Enter}
        Sleep, 5000

        ; 11. Random wait for page load
        Random, rndLoad, 5000, 10000
        Sleep, rndLoad

        ; 12. Scroll down
        Loop 10 {
            SendInput, {WheelDown}
            Sleep, 200
        }
        Random, rndScroll, 10000, 15000
        Sleep, rndScroll

        ; 13. Click first target with random offset
        Random, offX, 3, 7
        Random, offY, 3, 7
        Click, % 554 + offX ", " 496 + offY
        Random, rndClick1, 5000, 10000
        Sleep, rndClick1

        ; 14. Click second target
        Click, 675, 568
        Random, rndClick2, 15000, 20000
        Sleep, rndClick2

        ; 15. Close browser
        SendInput, !{F4}
        Sleep, 20000

        ; 16. Ensure Dolphin Anty launcher is active
        WinWaitActive, ahk_class Chrome_WidgetWin_1 ahk_exe Dolphin Anty.exe, , 10
        FileAppend, %A_Now% " - Finished profile #" profileNum "`n", %LogFile%
    }
    ; 18-19. After all profiles, wait 1h
    FileAppend, %A_Now% " - Cycle complete; waiting 1 hour`n", %LogFile%
    Sleep, 3600000
}
