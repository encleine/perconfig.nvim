return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function() vim.cmd.colorscheme 'catppuccin' end,
  priority = 1000
}
--   {
--   "nyoom-engineering/oxocarbon.nvim",
--   priority = 1000,
--   config = function() vim.cmd.colorscheme 'oxocarbon' end,
-- }
