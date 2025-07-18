return {
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
    config = function ()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
