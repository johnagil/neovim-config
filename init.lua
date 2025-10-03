-- <leader> key (space bar)
vim.g.mapleader = ' '

-- open config with leader c
vim.cmd('nmap <leader>c :e ~/.config/nvim/init.lua<cr>')

-- save file with leader s
vim.cmd('nmap <leader>s :w<cr>')

-- redo with capital U
vim.keymap.set('n', 'U', '<C-r>')

--clear search highlighting with esc key
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')
