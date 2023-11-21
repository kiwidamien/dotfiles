local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.keymap

-- Modes 
-- n: normal
-- i: insert
-- c: command 
-- t: terminal 
-- v: visual
-- x: visual block

keymap.set('t', 'jk', "<C-\\><C-n>", term_opts)
keymap.set({ 'n', 'i' }, "jk", "<Esc>", opts)
keymap.set({ 'n', 'v'}, ';', ':', { silent = true })

-- Better window navigation
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)
keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h', term_opts)
keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j', term_opts)
keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k', term_opts)
keymap.set('t', '<C-l>', '<C-\\><C-n><C-w>l', term_opts)

-- Use Shift-L and Shift-H to move between the different buffers
keymap.set('n', '<S-l>', ':bnext<cr>', opts)
keymap.set('n', '<S-h>', ':bprev<cr>', opts)

-- Hard Modes
vim.keymap.set({ 'i' }, '<Up>', '<Nop>', { silent = true })
vim.keymap.set({ 'i' }, '<Down>', '<Nop>', { silent = true })
vim.keymap.set({ 'i' }, '<Left>', '<Nop>', { silent = true })
vim.keymap.set({ 'i' }, '<Right>', '<Nop>', { silent = true })
vim.keymap.set({ 'i', 'n', 'v'}, ';', ':', { silent = true })

-- Visual indents
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)


-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
