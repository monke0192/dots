-- navigation --
vim.keymap.set({'n', 'v'}, 'm', 'h')
vim.keymap.set({'n', 'v'}, 'n', 'j')
vim.keymap.set({'n', 'v'}, 'e', 'k')
vim.keymap.set({'n', 'v'}, 'i', 'l')

vim.keymap.set('n', 'k', 'n')
vim.keymap.set('n', 'K', 'N')

vim.keymap.set('n', '<Leader>/', ':noh<CR>')
-- window splitting --
vim.keymap.set('n', '<C-w>m', '<C-w>h')
vim.keymap.set('n', '<C-w>n', '<C-w>j')
vim.keymap.set('n', '<C-w>e', '<C-w>k')
vim.keymap.set('n', '<C-w>i', '<C-w>l')

-- normal, visual --> edit --
vim.keymap.set('n', 't', 'i')
vim.keymap.set('n', 'T', 'I')

-- Plugin maps --
vim.keymap.set('n', '<Leader>n', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<Leader>e', ':TroubleToggle<CR>')
