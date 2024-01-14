return {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-media-files.nvim'
  },
  opts = {},
  config = function(_, opts)
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

    telescope.setup(opts)
    telescope.load_extension('media_files')
  end
}
