vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.copyindent = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- vim.opt.wrap = true
-- vim.opt.linebreak = true

vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = true
vim.opt.shada = "'1000,<50,s10,h"
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("state") .. "/undo"

-- Rust
vim.g.rust_recommended_style = 0
