-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- <leader> key (space bar)
vim.g.mapleader = " "

-- use standard system clipboard when copying and pasting
-- vim.opt.clipboard:append("unnamedplus")
vim.opt.clipboard = vim.opt.clipboard + { "unnamedplus" }

-- make search case insensitive by default
vim.opt.ignorecase = true

-- if uppercase is used in search it becomes case sensitive
vim.opt.smartcase = true

-- open config with leader c
vim.cmd("nmap <leader>c :e ~/.config/nvim/init.lua<cr>")

-- redo with capital U
vim.keymap.set("n", "U", "<C-r>")
