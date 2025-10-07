-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- <leader> key (space bar)
vim.g.mapleader = " "

-- open config with leader c
vim.cmd("nmap <leader>c :e ~/.config/nvim/init.lua<cr>")

-- redo with capital U
vim.keymap.set("n", "U", "<C-r>")
