return {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      actions = {
        change_dir = {
          global = true
        }
      },
      diagnostics = {
        enable = true,
        icons = {
          error = ""
        }
      },
      on_attach = function(bufnr)
        local api = require "nvim-tree.api"

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        vim.keymap.del('n', 'e', opts('Up'))
        vim.keymap.set('n', 'f', api.fs.rename_basename, opts('Up'))
      end,
      sync_root_with_cwd = true,
      update_focused_file = {
        enable = true
      }
    },
    config = function(_, opts)
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require('nvim-tree').setup(opts)
    end
  },
}
