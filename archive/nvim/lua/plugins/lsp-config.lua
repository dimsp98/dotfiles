return {
  {
'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      }
      }
  },
  { 
  "mason-org/mason.nvim",
    config = function()
  require("mason").setup()
  end
  },
  {
    "mason-org/mason-lspconfig.nvim",
     lazy = false,
    opts = {
      auto_install = true,
  }
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      { 'j-hui/fidget.nvim', opts = {} },
      'saghen/blink.cmp',
    },
    config = function()
      -- 1. Get capabilities (standard for blink.cmp)
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      -- 2. Define your list of servers
      local servers = {
        'ts_ls',
        'solargraph',
        'html',
        'lua_ls',
        'tailwindcss',
        'ruby_lsp'
      }

      -- 3. Use the new Neovim 0.11+ API (vim.lsp.config and vim.lsp.enable)
      -- This replaces the old require('lspconfig').setup() pattern
      for _, server in ipairs(servers) do
        vim.lsp.config(server, {
          capabilities = capabilities,
          -- You can add 'settings' or 'cmd' here if needed for specific servers
        })
        vim.lsp.enable(server)
      end
     }
}
