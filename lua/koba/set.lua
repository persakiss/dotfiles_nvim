-- Set the guicursor option to an empty string. This is commonly used to disable special GUI-based cursor effects.
vim.opt.guicursor = ""

-- Enable line numbers.
vim.opt.nu = true

-- Enable relative line numbers, which show the distance from the current line instead of absolute line numbers.
vim.opt.relativenumber = true

-- Set the number of spaces that a tab character in the file counts for. Adjusted to 2 spaces as per your request.
vim.opt.tabstop = 2

-- Number of spaces to use for an automatically inserted tab. Adjusted to 2 spaces as per your request.
vim.opt.softtabstop = 2

-- Number of spaces to use for each step of (auto)indent. Adjusted to 2 spaces as per your request.
vim.opt.shiftwidth = 2

-- Convert tabs to spaces.
vim.opt.expandtab = true

-- Enable smart auto-indent.
vim.opt.smartindent = true

-- Disable line wrapping.
vim.opt.wrap = false

-- Do not use a swapfile for the buffer.
vim.opt.swapfile = false

-- Do not create backup before overwriting a file.
vim.opt.backup = false

-- Set directory for undo files.
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Enable persistent undo, which allows undoing changes after closing and reopening a file.
vim.opt.undofile = true

-- Disable highlighting of search matches.
vim.opt.hlsearch = false

-- Enable incremental search, where Vim will start searching as you type.
vim.opt.incsearch = true

-- Enable true color in terminal Vim.
vim.opt.termguicolors = true

-- Keep at least 8 lines above/below the cursor when scrolling.
vim.opt.scrolloff = 8

-- Always show the sign column, which is used for things like git diff indicators.
vim.opt.signcolumn = "yes"

-- Append additional characters to the 'isfname' option, which determines what characters are considered part of a filename.
vim.opt.isfname:append("@-@")

-- Time (in milliseconds) to wait before writing the swap file to disk, after a change.
vim.opt.updatetime = 50

-- Display a vertical line at the 80th character.
vim.opt.colorcolumn = "80"

