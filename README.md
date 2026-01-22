# Boss Key

Quick-hide specific applications with a single hotkey. Perfect for hiding gaming/social media windows instantly.

[Configuration](#configuration-configini) •
[Setup Instructions](#setup-instructions) •
[License](#license)

## Configuration (`config.ini`)

<details>
<summary><strong>Hotkey</strong></summary>

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
View full documentation at [AutoHotkey v1 Hotkeys](https://www.autohotkey.com/docs/v1/Hotkeys.htm).

</details>

<details>
<summary><strong>Behavior Flags</strong></summary>

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

</details>

<details>
<summary><strong>Target Applications</strong></summary>

```ini
[targets]
1 = Code.exe
2 = chrome.exe
3 = spotify.exe
```

List executables (with `.exe`) to control. Add as many as needed using sequential numbers.

</details>

---

## Setup Instructions

**Requirements**:

- Windows 10 or later
- AutoHotkey v1.1 installed (required to run both `.ahk` and `.exe`)

Note: This script targets AutoHotkey v1 (not v2).

<details>
<summary><strong>Option A: Using the Executable (Recommended)</strong></summary>

1. Install AutoHotkey v1.1 from
  [https://www.autohotkey.com/](https://www.autohotkey.com)
2. Download `zip` file
3. Extract files to a directory
4. Create or edit `config.ini` in the same directory
5. Configure your hotkey and target applications
6. Run `boss-key.exe`
7. Press your configured hotkey to toggle visibility

Note: AutoHotkey v1.1 must be installed.

</details>

<details>
<summary><strong>Option B: Using the AutoHotkey Script</strong></summary>

1. Install AutoHotkey v1.1 from
   [https://www.autohotkey.com/](https://www.autohotkey.com)
2. Download `zip` file and extract it to a folder
3. Create or edit `config.ini` in the same directory
4. Double-click `boss-key.ahk` to run
5. Press your configured hotkey to toggle visibility

</details>

<details>
<summary><strong>Configuration File Placement</strong></summary>

- `config.ini` must be located in the same directory as:
  - `boss-key.exe` or
  - `boss-key.ahk`

The application will not search other paths.

</details>

<details>
<summary><strong>First-Time Setup Checklist</strong></summary>

- Ensure `config.ini` exists
- Verify hotkey syntax is valid
- Confirm target executables are running
- Avoid hotkeys already used by the system or other apps

</details>

---

## License

MIT
