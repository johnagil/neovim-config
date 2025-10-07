-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- <leader> key (space bar)
vim.g.mapleader = " "

-- open config with leader c
vim.cmd("nmap <leader>c :e ~/.config/nvim/init.lua<cr>")

-- redo with capital U
vim.keymap.set("n", "U", "<C-r>")

-- change resize windows bindings to alt + arrow keys
-- because macOS mission control intercepts control + arrow keys
vim.keymap.set("n", "<A-Up>", ":resize +2<CR>", { silent = true })
vim.keymap.set("n", "<A-Down>", ":resize -2<CR>", { silent = true })
vim.keymap.set("n", "<A-Left>", ":vertical resize -2<CR>", { silent = true })
vim.keymap.set("n", "<A-Right>", ":vertical resize +2<CR>", { silent = true })
