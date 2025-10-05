-- <leader> key (space bar)
vim.g.mapleader = ' '

-- use standard system clipboard when copying and pasting
vim.opt.clipboard:append("unnamedplus")

-- make search case insensitive by default
vim.opt.ignorecase = true

-- if uppercase is used in search it becomes case sensitive
vim.opt.smartcase = true

-- open config with leader c
vim.cmd('nmap <leader>c :e ~/.config/nvim/init.lua<cr>')

-- save file with leader s
vim.cmd('nmap <leader>s :w<cr>')

-- redo with capital U
vim.keymap.set('n', 'U', '<C-r>')

--clear search highlighting with esc key
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')
