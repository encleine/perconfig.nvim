--  I promise not to create any merge conflicts in this directory :)
--
return {
  'Exafunction/codeium.vim',
  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- lsp
  { import = "custom.plugins.lsp" },

  { import = "custom.plugins.nvim-cmp" },

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim',              opts = {} },

  { import = "custom.plugins.gitsigns" },

  { import = "custom.plugins.theme" },

  { import = "custom.plugins.lualine" },
  { import = "custom.plugins.blankline" },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim',             opts = {} },

  -- Fuzzy Finder (files, lsp, etc)
  { import = "custom.plugins.telescope" },

  { import = "custom.plugins.treesitter" },
  { 'kevinhwang91/nvim-ufo',             dependencies = { 'kevinhwang91/promise-async' } },
  { import = "custom.plugins.statuscol" }
}
