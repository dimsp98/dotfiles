return {
   'akinsho/bufferline.nvim', version = "*", 
   dependencies = { 'nvim-tree/nvim-web-devicons', },
   after = "catppuccin",
    config = function ()
    local bufferline = require('bufferline')
    bufferline.setup {
     options = {
            mode = "buffers", -- set to "tabs" to only show tabpages instead
            style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
            themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
            numbers = "ordinal", 
            close_command = "bdelete! %d",
            right_mouse_command = "bdelete! %d",
            left_mouse_command = "buffer %d",
            middle_mouse_command = nil,
            indicator = {
                icon = '▎', 
                style = 'icon',
            },
            buffer_close_icon = '󰅖',
            modified_icon = '● ',
            close_icon = ' ',
            left_trunc_marker = ' ',
            right_trunc_marker = ' ',
            name_formatter = function(buf)  
            end,
            max_name_length = 18,
            max_prefix_length = 15, 
            truncate_names = true, 
            tab_size = 18,
            diagnostics = "nvim_lsp",
            diagnostics_update_in_insert = false, -- only applies to coc
            diagnostics_update_on_event = true, -- use nvim's diagnostic handler
            diagnostics_indicator = function(count, level, diagnostics_dict, context)
                return "("..count..")"
            end,
            custom_filter = function(buf_number, buf_numbers)
                if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
                    return true
                end
                if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
                    return true
                end
                if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
                    return true
                end
                if buf_numbers[1] ~= buf_number then
                    return true
                end
            end,
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "center",
                    separator = true
                }
            },
            color_icons = true, 
            show_buffer_icons = true,
            show_buffer_close_icons = true,
            show_close_icon = true,
            show_tab_indicators = true,
            show_duplicate_prefix = true,
            duplicates_across_groups = true, 
            persist_buffer_sort = true, 
            move_wraps_at_ends = false,
            separator_style = "slant",
            always_show_bufferline = true,
            hover = {
                enabled = true,
                delay = 200,
                reveal = {'close'}
            },
            pick = {
              alphabet = "abcdefghijklmopqrstuvwxyzABCDEFGHIJKLMOPQRSTUVWXYZ1234567890",
            },  
        },
          highlights = require("catppuccin.groups.integrations.bufferline").get(),
      }
    vim.keymap.set('n', '<leader>bn', '<Cmd>enew<CR>', {desc = "New Buffer"})
    vim.keymap.set('n', '<leader>bc', '<Cmd>BufferLinePickClose<CR>', { desc = "Pick buffer to close" })
    vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { desc = "Next buffer" })
    vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { desc = "Previous buffer" })
    vim.keymap.set('n', '<A-.>', '<Cmd>BufferLineMoveNext<CR>', { desc = "Move buffer right" })
    vim.keymap.set('n', '<A-,>', '<Cmd>BufferLineMovePrev<CR>', { desc = "Move buffer left" })
    vim.keymap.set('n', '<leader>bp', '<Cmd>BufferLinePick<CR>', { desc = "Pick buffer" })
    vim.keymap.set('n', '<leader>bc', '<Cmd>BufferLinePickClose<CR>', { desc = "Pick buffer to close" })
    vim.keymap.set('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', { desc = "Go to buffer 1" })
    vim.keymap.set('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', { desc = "Go to buffer 2" })
    vim.keymap.set('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', { desc = "Go to buffer 3" })
  end,
}
