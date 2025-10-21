-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.env.VSCODE then
  vim.g.vscode = true
end

-- use standard system clipboard when copying and pasting
-- vim.opt.clipboard:append("unnamedplus")
vim.opt.clipboard = vim.opt.clipboard + { "unnamedplus" }

-- make search case insensitive by default
vim.opt.ignorecase = true

-- if uppercase is used in search it becomes case sensitive
vim.opt.smartcase = true
