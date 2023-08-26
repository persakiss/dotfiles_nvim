-- Set the leader key for Vim to be the spacebar.
vim.g.mapleader = " "

-- In normal mode, when you press the leader key followed by "pv", it will execute the Ex command.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- In visual mode, pressing "J" will move the selected lines down one position.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- In visual mode, pressing "K" will move the selected lines up one position.
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- In normal mode, pressing "J" will join the current line with the line below and move the cursor back to where it was.
vim.keymap.set("n", "J", "mzJ`z")

-- In normal mode, when pressing Ctrl + d, the screen will scroll down and center on the cursor.
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- In normal mode, when pressing Ctrl + u, the screen will scroll up and center on the cursor.
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- In normal mode, after pressing "n" to find the next search occurrence, the screen will center on the found occurrence.
vim.keymap.set("n", "n", "nzzzv")

-- In normal mode, after pressing "N" to find the previous search occurrence, the screen will center on the found occurrence.
vim.keymap.set("n", "N", "Nzzzv")

-- In visual mode, pressing the leader key followed by "p" will paste over the selected text without overwriting the clipboard.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Map copying to system clipboard with leader+y in both normal and visual modes.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Map deleting without affecting the clipboard in both normal and visual modes.
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- In insert mode, pressing Ctrl + c will exit to normal mode.
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable the Q command in normal mode.
vim.keymap.set("n", "Q", "<nop>")

-- In normal mode, pressing Ctrl + f will open a new tmux window named "tmux-sessionizer".
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- In normal mode, pressing the leader key followed by "f" will format the buffer using LSP.
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Move between compilation errors using Ctrl + k (next) and Ctrl + j (previous), centering the screen on the error.
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Move between location list items using leader + k (next) and leader + j (previous), centering the screen.
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- In normal mode, pressing leader + s will bring up a search and replace prompt using the word under the cursor.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- In normal mode, pressing leader + x will make the current file executable.
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Open the personal configuration for "packer.lua" with leader+vpp.
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/koba/packer.lua<CR>")


-- Toggle auto save
vim.api.nvim_set_keymap("n", "<leader>n", ":ASToggle<CR>", {})

-- In normal mode, pressing leader twice will source the current file (usually for configurations).
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- <leader>t brings up a bottom-split terminal
vim.api.nvim_set_keymap('n', '<leader>t', ':bo sp | terminal<CR>', { noremap = true, silent = true })

