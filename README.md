# Boss Key

Quick-hide specific applications with a single hotkey. Perfect for hiding work windows instantly.

## Usage

1. Configure `config.ini` with your target applications and preferences
2. Run `boss-key.exe` or `boss-key.ahk` (if you have AutoHotkey installed)
3. Press your configured hotkey to toggle visibility

## Configuration (`config.ini`)

### Hotkey
```ini
[hotkey]
bosskey = ^!b
```
Define your hotkey using AutoHotkey syntax:
- `^` = Ctrl
- `!` = Alt
- `+` = Shift
- `#` = Win

Examples: `^!b` (Ctrl+Alt+B), `#h` (Win+H), `F12`
View full documentation at [AutoHotkey Hotkeys](https://www.autohotkey.com/docs).
### Behavior Flags
```ini
[behavior]
minimize_on_hide = 1
restore_on_show  = 0
activate_on_show = 0
```

**Hide behavior:**
- `minimize_on_hide = 1`: Minimize windows before hiding (default)
- `minimize_on_hide = 0`: Hide instantly without minimizing (eliminates flashing)

**Show behavior:**
- `restore_on_show = 1`: Restore windows from minimized state
- `restore_on_show = 0`: Keep windows in their current state (default)
- `activate_on_show = 1`: Bring windows to foreground
- `activate_on_show = 0`: Show windows passively (default, no flashing)

**Tip:** Set all flags to `0` for the smoothest, flash-free experience.

### Target Applications
```ini
[targets]
1 = Code.exe
2 = chrome.exe
3 = spotify.exe
```
List executables (with `.exe`) to control. Add as many as needed using sequential numbers.
