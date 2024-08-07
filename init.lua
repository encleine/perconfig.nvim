-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

---@diagnostic disable-next-line: lowercase-global
diagnostics = { disable = { 'missing-fields' } }

-- Install lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end

---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Custom plugins ]]
require('lazy').setup({
    { import = 'custom/Plugins' },
    { import = 'kickstart/Plugins' },
  },
  { change_detection = { notify = false } }
)


-- [[ Setting options ]]
require('custom.Options')

-- [[ Basic Keymaps ]]
require('custom.Keymaps')

-- [[ Highlight on yank ]]
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank { timeout = 200, higroup = "IncSearch" }
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ Configs ]]
--   [[ Telescope ]]
--   [[ Treesitter ]]
--   [[ LSP ]]
--   [[ nvim-cmp ]]
--   [[ nvim-ufo ]]
require('custom.Config')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
