vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
vim.keymap.set('v', '<D-c>', '"+y') -- Copy
vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode

vim.g.terminal_color_0 = '#47373c'
vim.g.terminal_color_1 = '#b15c66'
vim.g.terminal_color_2 = '#54646C'
vim.g.terminal_color_3 = '#E6CDCB'
vim.g.terminal_color_4 = '#ad6b81'
vim.g.terminal_color_5 = '#6e4855'
vim.g.terminal_color_6 = '#707880'
vim.g.terminal_color_7 = '#5b8681'
vim.g.terminal_color_8 = '#47373c'
vim.g.terminal_color_9 = '#b15c66'
vim.g.terminal_color_10 = '#54646C'
vim.g.terminal_color_11 = '#E6CDCB'
vim.g.terminal_color_12 = '#ad6b81'
vim.g.terminal_color_13 = '#6e4855'
vim.g.terminal_color_14 = '#707880'
vim.g.terminal_color_15 = '#5b8681'

vim.g.neovide_refresh_rate = 120
vim.g.neovide_unlink_border_highlights = true
