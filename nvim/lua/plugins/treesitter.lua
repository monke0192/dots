return {
  {
    'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate',
    opts = {
        ensure_installed = 'all',
        sync_install = false,

        highlight = {
          enable = true
        }
      },
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end
  },
}
