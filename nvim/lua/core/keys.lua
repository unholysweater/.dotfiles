--[[ keys.lua ]]
local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Toggle nvim-tree
keymap("n", "<leader>n", ":NvimTreeToggle<CR>",{})

-- MarkdownPreview
keymap("n", "<leader>m", ":MarkdownPreviewToggle<CR>",{})

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)

-- Better indent
keymap("v", "<", "<gv", default_opts)
keymap("v", ">", ">gv", default_opts)

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP', default_opts)

-- Copy 
keymap("v", "c", '"*y', default_opts)

-- Switch buffer
keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- Move selected line / block of text in visual mode
keymap("v", "K", ":move '<-2<CR>gv-gv", default_opts)
keymap("v", "J", ":move '>+1<CR>gv-gv", default_opts)

-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)

-- Misc / Quality of life
keymap("n", "<A-g>", ":close<CR>", default_opts)
-- Allow command during insert mode, but can just use C-\ C-o
--keymap("i", "<C-o>", ":ins-special-special<CR>", default_opts)
