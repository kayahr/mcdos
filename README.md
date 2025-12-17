
# mcdos

This project contains the config and skin for configuring [Midnight Commander] and especially mcedit to look more like the old [MS-DOS Editor] and behave more like modern GUI text editors like [Visual Studio Code].

Goals of this project are:

* Use keyboard hotkeys known from modern GUI text editors like Visual Studio Code.
* Configure text selection and copy/cut/paste to behave like a modern GUI text editor.
* Support copy/paste between X11/Wayland and mcedit.
* Work in GUI terminal like Gnome Terminal but also on TTY and over SSH.

![image](images/mcedit.png)

## Installation

* Copy the content of `config/` to `$HOME/.config/`. This might override your current configuration, so make a backup if necessary.
* Create `~/.local/config/mc/skins/` if not already present.
* Copy the content of `skins/` to `~/local/config/mc/skins/`.

Alternatively run the `install.sh` script in this repository.

If you only wan't to use the configuration and keep the default skin of Midnight Commander then remove the `skin=mcdos256` line from `~/.config/mc/ini` or set it to whatever skin you want to use.

If you want clipboard support then you must install the `xclip` program. On Debian systems this program is provided by the `xclip` package which can be installed with `sudo apt install xclip`.

How you configure your system to use mcedit, is up to you. I would recommend setting an `EDITOR=mcedit` environment variable in `~/.profile` and maybe setting an alias like `alias edit=mcedit` in `~/.bashrc`.

## Hotkeys

### Button Bar

mcedit has a fixed button bar at the bottom which can't be configured and is not affected by the hotkey configuration. Function keys are configured differently in this setup so the mapping shown in the button bar now describes Shift-F1 to Shift-F10 instead of F1 to F10. *Help* can be opened by Shift+F1, not by F1. The menu can be opened with Shift+F9, but not by F9. And so on. In that way the button bar still makes sense (you only have to press Shift modifier), but F-keys without modifier are free for better key mappings.


### File menu hotkeys

Hotkey     | Menu           | Command    | Notes
-----------|----------------|------------|------------------
Ctrl+E     | Open File      | EditFile   | Returning from the subshell is hardcoded to Ctrl-O, so we can't use Ctrl+O here and keep Ctrl-O has hotkey to enter the subshell. Using Ctrl-E because the command is named **EditFile** anyway.
Ctrl+N     | New File       | EditNew    |
Ctrl+W     | Close File     | Close      |
Ctrl+Alt+E | History        | History    | Opens/Edits a a *recent* file, so an alternate version of Ctrl-E
Ctrl+S     | Save File      | Save       |
Ctrl+Alt+S | Save File As   | SaveAs     | Ctrl-Shift-S is not mappable unfortunately
Ctrl+I     | Insert File    | InsertFile |
Ctrl+T     | Copy To File   | BlockSave  | T for copy "To" file
F1         | User Menu      | UserMenu   | Like the Command Palette in Visual Studio Code
Ctrl+Q     | Quit           | Quit       |

### Edit menu hotkeys

Hotkey      | Menu                 | Command         | Notes
------------|----------------------|-----------------|------------------
Ctrl+Z      | Undo                 | Undo            |
Ctrl+Y      | Redo                 | Redo            |
Insert      | Toggle ins/overwrite | InsertOverwrite |
Alt+M       | Toggle Mark          | Mark            |
Alt+Shift+M | Mark Columns         | MarkColumn      |
Ctrl+a      | Mark All             | MarkAll         |
Escape      | Unmark               | Unmark          |
Delete      | Delete               | Delete          |
Ctrl+C      | Copy to clipfile     | Store           |
Ctrl+X      | Cut to clipfile      | Cut             |
Ctrl+V      | Paste from clipfile  | Paste           |
Ctrl+Home   | Beginning            | Top             |
Ctrl+End    | End                  | Bottom          |

### Search menu hotkeys

Hotkey      | Menu                 | Command        | Notes
------------|----------------------|----------------|------------------
Ctrl+F      | Search               | Search         |
F3          | Search again         | SearchContinue |
Ctrl+R      | Replace              | Replace        | Ctrl+H is not mappable
Ctrl+Alt+K  | Toggle Bookmark      | Bookmark
Ctrl+Alt+L  | Next Bookmark        | BookmarkNext
Ctrl+Alt+J  | Prev Bookmark        | BookmarkPrev
Ctrl+Alt+I  | Flush Bookmark       | BookmarkFlush

### Command menu hotkeys

Hotkey      | Menu                       | Command              | Notes
------------|----------------------------|----------------------|------------------
Alt+G       | Go to line                 | Goto                 | Ctrl+G is not mappable
Alt+N       | Toggle line state          | ShowNumbers          |
Ctrl+\      | Go to matching bracket     | MatchBracket         | Ctrl+Shift+\ is not mappable
Alt+H       | Toggle syntax highlighting | SyntaxOnOff          |
Alt+Enter   | Find Declaration           | Find                 | Needs emacs style TAGS file to work
Alt+Minus   | Back from declaration      | FilePrev             | Needs emacs style TAGS file to work
Alt+Plus    | Forward to declaration     | FileNext             | Needs emacs style TAGS file to work
Alt+R       | Start/Stop record macro    | MacroStartStopRecord |

[Midnight Commander]: https://midnight-commander.org/
[MS-DOS Editor]: https://en.wikipedia.org/wiki/MS-DOS_Editor
[Visual Studio Code]: https://code.visualstudio.com/
