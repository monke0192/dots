return {
  {
    'L3MON4D3/LuaSnip', version = 'v2.*',
    build = 'make install_jsregexp',
    dependencies = { 'saadparwaiz1/cmp_luasnip' }
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {}
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'onsails/lspkind.nvim'
    },
    config = function()
      local lspkind = require('lspkind')
      local cmp = require('cmp')
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')

      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )
      cmp.setup({
        formatting = {
          format = lspkind.cmp_format({
            mode = 'symbol',
            maxwidth = 50,
            ellipsis_char = '...',
          })
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = false }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'nvim_lsp_signature_help' },
          { name = 'luasnip' },
        }, {
          { name = 'buffer' }
        })
      })
    end
  },
  {
    'folke/neodev.nvim',
    opts = {}
  },
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
    },
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = { 'gopls', 'lua_ls', 'pyright', 'clangd' },
      signs = { Error = "", Warn = "", Hint = "", Info = "" }
    },
    config = function(_, opts)
      require('neodev').setup({})
      local lsp = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      for _, server in ipairs(opts.servers) do
        lsp[server].setup({
          capabilities = capabilities
        })
      end

      for type, icon in pairs(opts.signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end
    end
  },
}

