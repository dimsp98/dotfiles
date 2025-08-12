-- ~/.config/nvim/lua/plugins/barbar.lua
-- Barbar.nvim configuration & keybindings

return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status in tabline
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function() vim.g.barbar_auto_setup = false end, -- disable auto-setup so we can configure manually
  opts = {
    animation = true,
    auto_hide = false,
    tabpages = true,
    clickable = true,
    focus_on_close = 'left', -- which buffer to focus when closing
    insert_at_end = false,
    insert_at_start = false,
    maximum_padding = 4,
    maximum_length = 30,
    icons = {
      buffer_index = true,
      buffer_number = false,
      filetype = { enabled = true },
      pinned = { button = '車', filename = true, separator = { right = '' } },
      diagnostics = { [vim.diagnostic.severity.ERROR] = { enabled = true, icon = ' ' } },
    },
  },
  config = function(_, opts)
    require('barbar').setup(opts)
    require("catppuccin").setup({
      integrations = { barbar = true },
    })
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', {})
    map('n', '<A-.>', '<Cmd>BufferNext<CR>', {})
    map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', {})
    map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', {})
    map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', {})
    map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', {})
    map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', {})
    map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', {})
    map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', {})
    map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', {})
    map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', {})
    map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', {})
    map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', {})
    map('n', '<A-c>', '<Cmd>BufferClose<CR>', {})
    map('n', '<A-p>', '<Cmd>BufferPin<CR>', {})
    map('n', '<A-b>', '<Cmd>BufferPick<CR>', {})
    map('n', '<A-n>', '<Cmd>enew<CR>', {})
  end,
}
