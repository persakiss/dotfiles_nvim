-- Shortcut to set key mappings in Neovim
local map = vim.api.nvim_set_keymap
-- Common key mapping options: non-recursive and silent
local opts = { noremap = true, silent = true }

-- Move to the previous buffer with Alt + comma
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
-- Move to the next buffer with Alt + period
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

-- Move the current buffer to the position of the previous buffer with Alt + <
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
-- Move the current buffer to the position of the next buffer with Alt + >
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

-- Use Alt + number keys to directly navigate to buffers numbered from 1 through 9
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
-- Use Alt + 0 to go to the last buffer
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Pin the current buffer with Alt + p
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close the current buffer with Alt + c
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

-- Buffer wipeout command (not mapped but for reference)
--                 :BufferWipeout
-- Other buffer closing commands (for reference)
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight

-- Enter buffer-picking mode with Ctrl + p
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)

-- Sort buffers based on different criteria using combinations with Space
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)  -- Sort by buffer number
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)      -- Sort by directory
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)       -- Sort by language
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)   -- Sort by window number

-- Additional Barbar commands (for reference)
-- :BarbarEnable - Enables Barbar (default behavior)
-- :BarbarDisable - Discouraged command, should avoid using

