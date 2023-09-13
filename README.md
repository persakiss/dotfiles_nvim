# Vim Keymaps

## Default Mappings

- `Space`: Leader Key
- `Ctrl + d`: Scroll down and center on the cursor.
- `Ctrl + u`: Scroll up and center on the cursor.
- `Ctrl + f`: Open a new tmux window named "tmux-sessionizer".
- `Ctrl + k`: Move to next compilation error and center.
- `Ctrl + j`: Move to previous compilation error and center.

## Custom Mappings

- `Space + ps`: Execute fuzzy finder (ps = project search)
- `Space + pv`: Execute the Ex command (pv = project view)
- `Space + p`: In visual mode, paste over the selected text without overwriting the clipboard.
- `Space + y`: Copy to the system clipboard.
- `Space + Y`: Yank (copy) the entire line to the system clipboard.
- `Space + d`: Delete without affecting the clipboard.
- `Space + f`: Format the buffer using LSP.
- `Space + s`: Bring up a search and replace prompt using the word under the cursor.
- `Space + x`: Make the current file executable.
- `Space + vpp`: Open personal configuration for "packer.lua".
- `Space + Space`: Source the current file (usually for configurations).
- `Space + t`: Open a bottom-split terminal.

## Line Movement Mappings

- `J`: In normal mode, join the current line with the line below and move the cursor back to where it was. In visual mode, move the selected lines down one position.
- `K`: In visual mode, move the selected lines up one position.
- `n`: After pressing "n" to find the next search occurrence, the screen will center on the found occurrence.
- `N`: After pressing "N" to find the previous search occurrence, the screen will center on the found occurrence.

## Buffer Manipulation (Using Barbar)

- `Alt + ,`: Move to the previous buffer.
- `Alt + .`: Move to the next buffer.
- `Alt + <`: Move the current buffer to the position of the previous buffer.
- `Alt + >`: Move the current buffer to the position of the next buffer.
- `Alt + 1-9`: Directly navigate to buffers numbered from 1 through 9.
- `Alt + 0`: Go to the last buffer.
- `Alt + p`: Pin the current buffer.
- `Alt + c`: Close the current buffer.

## Sorting Buffers

- `Space + bb`: Sort buffers by buffer number.
- `Space + bd`: Sort buffers by directory.
- `Space + bl`: Sort buffers by language.
- `Space + bw`: Sort buffers by window number.

## Miscellaneous

- `Ctrl + c`: In insert mode, exit to normal mode.
- `Q`: Disable the Q command in normal mode.

## Barbar Commands (for reference)

- `:BarbarEnable`: Enables Barbar (default behavior).
- `:BarbarDisable`: Discouraged command, should avoid using.


