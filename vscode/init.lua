-- <leader> key (space bar)
vim.g.mapleader = " "

-- use standard system clipboard when copying and pasting
vim.opt.clipboard:append("unnamedplus")

-- make search case insensitive by default
vim.opt.ignorecase = true

-- if uppercase is used in search it becomes case sensitive
vim.opt.smartcase = true

-- open config with leader c
vim.cmd("nmap <leader>c :e ~/.config/nvim/init.lua<cr>")

-- save file with leader s
vim.cmd("nmap <leader>s :w<cr>")

-- redo with capital U
vim.keymap.set("n", "U", "<C-r>")

--clear search highlighting with esc key
vim.keymap.set("n", "<Esc>", ":nohlsearch<cr>")

-- Ctrl+Q = visual block mode
vim.keymap.set("n", "<C-q>", "<C-v>", { noremap = true, silent = true })

-- Ctrl+V = paste after cursor (normal mode)
vim.keymap.set("n", "<C-v>", "p", { noremap = true, silent = true })

-- Ctrl+V = paste from clipboard (insert mode)
vim.keymap.set("i", "<C-v>", "<C-r>+", { noremap = true, silent = true })

-- Ctrl+V = replace selection with clipboard contents (visual mode)
vim.keymap.set("v", "<C-v>", '"_dP', { noremap = true, silent = true })
