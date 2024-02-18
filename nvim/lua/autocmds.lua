vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
  pattern = { '*' },
  callback = function()
    vim.o.tabstop = 2
    vim.o.softtabstop = 2
    vim.o.shiftwidth = 2
    vim.o.expandtab = true
    vim.o.smarttab = true
  end
})

vim.api.nvim_create_autocmd({'BufReadPost', 'FileReadPost'}, {
  pattern = { '*' },
  callback = function()
    vim.cmd('normal zR')
  end
})
