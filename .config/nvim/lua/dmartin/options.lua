-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--
-- See the YouTube video from LunarVim on this
-- https://www.youtube.com/watch?v=hY5-Q6NxQgY&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&index=3

vim.o.hlsearch = false
vim.o.mouse ='a'           -- Enable mouse mode
vim.o.clipboard = 'unnamedplus'  -- use system clipboard
vim.o.breakindent = true         -- Enable break indent
vim.o.undofile = true

-- Case-insensitive searching unless &C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.wo.signcolumn = 'yes'

vim.wo.number = true       -- Mkae line numbers default

vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.opt.completeopt = { "menuone" , "noselect" }
vim.o.termguicolors = true

vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.o.termguicolors = true
