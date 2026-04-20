return {
  -- Core vim-sexp plugin
  {
    'guns/vim-sexp',
    event = 'BufReadPre',
    config = function()
      -- Optional: configure vim-sexp here
    end,
  },
  -- Recommended: Human-friendly mappings
  {
    'tpope/vim-sexp-mappings-for-regular-people',
    event = 'BufReadPre',
  },
  --
  { 'tpope/vim-repeat' },
  { 'tpope/vim-surround' },
}
