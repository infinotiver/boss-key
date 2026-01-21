#NoEnv
#SingleInstance Force
DetectHiddenWindows, On

ConfigFile := "config.ini"

IniRead, BossKey, %ConfigFile%, hotkey, bosskey, ^!b

IniRead, MinOnHide, %ConfigFile%, behavior, minimize_on_hide, 1
IniRead, RestoreOnShow, %ConfigFile%, behavior, restore_on_show, 0
IniRead, ActivateOnShow, %ConfigFile%, behavior, activate_on_show, 0


Targets := []
i := 1
Loop {
    IniRead, exe, %ConfigFile%, Targets, %i%, ERROR
    if (exe = "ERROR")
        break
    Targets.Push(exe)
    i++
}
hidden := false

Hotkey, %BossKey%, ToggleBossKey
return

ToggleBossKey:
hidden := !hidden
Menu, Tray, % hidden ? "NoIcon" : "Icon"

for _, exe in Targets {
    WinGet, list, List, ahk_exe %exe%
    Loop, %list% {
        id := list%A_Index%
        if (hidden) {
            if (MinOnHide) 
            {
                WinMinimize, ahk_id %id%
                }
            WinHide, ahk_id %id%
        } else {
            WinShow, ahk_id %id%
            if (RestoreOnShow)
{
    WinRestore, ahk_id %id%
}

if (ActivateOnShow)
{
    WinActivate, ahk_id %id%
}

        }
    }
}
return
