return {
  'julienvincent/nvim-paredit',
  config = function()
    require('nvim-paredit').setup {
      indent = {
        enabled = true,
        -- indentor = require('nvim-paredit.indentation.native').indentor,
      },
      keys = {
        ['T'] = { require('nvim-paredit').api.move_to_top_level_form_head, 'Jump to top level form head' },
      },
    }
  end,
}
