-- code --
vim.api.nvim_set_hl(0, 'Type', { fg = '#B15C66', bold = true })
vim.api.nvim_set_hl(0, 'Function', { fg = '#e3dddf', italic = true })
vim.api.nvim_set_hl(0, 'Constant', { fg = '#e6cdcb' })
vim.api.nvim_set_hl(0, 'Statement', { fg = '#5b8681' })
vim.api.nvim_set_hl(0, 'Special', { fg = '#b79fa8' })
vim.api.nvim_set_hl(0, 'PreProc', { fg = '#7eb2ac', bold = true })
vim.api.nvim_set_hl(0, 'Identifier', { fg = '#99858b' })
vim.api.nvim_set_hl(0, 'Typedef', { fg = '#e3dddf', bold = true })
vim.api.nvim_set_hl(0, 'Comment', { fg = '#544549', italic = true })
vim.api.nvim_set_hl(0, 'MatchParen', { bg = '#5b8681' })

-- numberline --
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#e3dddf', bold = true })
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#e3dddf', bold = true })
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#66585c', italic = true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#66585c', italic = true })

-- things --
vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = '#352d30' })
vim.api.nvim_set_hl(0, 'NonText', { fg = '#7eb2ac', bold = true })
vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#e3dddf', bg = '#232124' })
vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#232124', bg = '#232124' })
vim.api.nvim_set_hl(0, 'Normal', { bg = '#2e2629' })
vim.api.nvim_set_hl(0, 'Directory', { fg = '#7eb2ac', italic = true })
vim.api.nvim_set_hl(0, 'Title', { fg = '#b15c66', bold = true })
vim.api.nvim_set_hl(0, 'ErrorMsg', { bg = '#b15c66', underline = true })

vim.api.nvim_set_hl(0, 'Folded', { fg = '#e3dddf', bg = '#66585c' })
-- cmp --
vim.api.nvim_set_hl(0, 'CmpItemKind', { link = 'Type' })
vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { link = 'Function' })
vim.api.nvim_set_hl(0, 'Pmenu', { fg = '#e3dddf', bg = '#4f4448' })

-- bar shenanigans --
vim.api.nvim_set_hl(0, 'DiffAdd', { fg = '#8dbfa0' })
vim.api.nvim_set_hl(0, 'DiffChange', { fg = '#e3cce5' })

vim.api.nvim_set_hl(0, 'SignColumn', { bg = '#2e2629' })
vim.api.nvim_set_hl(0, 'FoldColumn', { bg = '#2e2629' })

-- ibl --
vim.api.nvim_set_hl(0, 'IblIndent', { fg = '#544549' })
vim.api.nvim_set_hl(0, 'IblScope', { fg = '#e3dddf', bold = true })
