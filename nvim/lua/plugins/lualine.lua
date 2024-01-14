return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      colours = {
        bg = '#232124',
        fg = '#706a6a',

        normal = '#b15c66',
        insert = '#ffa0a0',
        visual = '#707880',
        command = '#5b8681',
      }
    },
    config = function(_, opts)
      require('lualine').setup({
        options = {
          icons_enabled = true,
          theme = {
            normal = {
              a = { bg = opts.colours.normal, fg = opts.colours.bg, gui = 'bold' },
              b = { bg = opts.colours.bg, fg = opts.colours.normal },
              c = { bg = opts.colours.bg, fg = opts.colours.fg }
            },
            insert = {
              a = { bg = opts.colours.insert, fg = opts.colours.bg, gui = 'bold' },
              b = { bg = opts.colours.bg, fg = opts.colours.insert },
              c = { bg = opts.colours.bg, fg = opts.colours.fg }
            },
            visual = {
              a = { bg = opts.colours.visual, fg = opts.colours.bg, gui = 'bold' },
              b = { bg = opts.colours.bg, fg = opts.colours.visual },
              c = { bg = opts.colours.bg, fg = opts.colours.fg }
            },
            replace = {
              a = { bg = opts.colours.insert, fg = opts.colours.bg, gui = 'bold' },
              b = { bg = opts.colours.bg, fg = opts.colours.insert },
              c = { bg = opts.colours.bg, fg = opts.colours.fg }
            },
            command = {
              a = { bg = opts.colours.command, fg = opts.colours.bg, gui = 'bold' },
              b = { bg = opts.colours.bg, fg = opts.colours.command },
              c = { bg = opts.colours.bg, fg = opts.colours.fg }
            },
            inactive = {
              a = { bg = opts.colours.normal, fg = opts.colours.bg, gui = 'bold' },
              b = { bg = opts.colours.bg, fg = opts.colours.normal },
              c = { bg = opts.colours.bg, fg = opts.colours.fg }
            }
          },
          component_separators = { left = '|', right = '|'},
          section_separators = { left = '', right = ''},
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
      })
    end
  }
}

