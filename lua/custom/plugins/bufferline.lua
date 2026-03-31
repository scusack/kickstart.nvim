return {
  'akinsho/bufferline.nvim',
  event = 'VeryLazy',
  keys = {
    { '<leader>bp', '<cmd>BufferLineTogglePin<cr>', desc = 'Toggle Pin' },
    { '<leader>bP', '<cmd>BufferLineGroupClose ungrouped<cr>', desc = 'Delete Non-Pinned Buffers' },
    { '<leader>bo', '<cmd>BufferLineCloseOthers<cr>', desc = 'Delete Other Buffers' },
    { '<leader>br', '<cmd>BufferLineCloseRight<cr>', desc = 'Delete Buffers to the Right' },
    { '<leader>bl', '<cmd>BufferLineCloseLeft<cr>', desc = 'Delete Buffers to the Left' },
    { '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
    { '<Tab>', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
  },
  opts = {
    options = {
      diagnostics = 'nvim_lsp',
      always_show_bufferline = true,
      diagnostics_indicator = function(_, _, diag)
        local icons = require('lazyvim.config').icons.diagnostics
        local ret = (diag.error and icons.Error .. diag.error .. ' ' or '') .. (diag.warning and icons.Warn .. diag.warning or '')
        return vim.trim(ret)
      end,
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'Neo-tree',
          highlight = 'Directory',
          text_align = 'left',
        },
      },
    },
  },
}
