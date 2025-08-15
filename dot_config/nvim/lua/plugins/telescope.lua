return {
  {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 
      'nvim-lua/plenary.nvim',
      'jonarrien/telescope-cmdline.nvim',
    },
  keys = {
    { 'Q', '<cmd>Telescope cmdline<cr>', desc = 'Cmdline' }
  },
  config = function ()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-p>', builtin.find_files, {desc = 'Find files from current directory'})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = 'Fuzzy find with telescope'})
  end
},
  {
  'nvim-telescope/telescope-ui-select.nvim',
  config = function()
require("telescope").setup({
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {}
    }
    }
    })
    require("telescope").load_extension("ui-select")
    require("telescope").load_extension('cmdline')
    end
  }
}
