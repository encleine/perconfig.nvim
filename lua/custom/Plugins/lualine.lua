return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = true,
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },

    },
    sections = {
      lualine_x = {},
      lualine_y = { 'filetype' },
      lualine_z = { 'location', 'filename' }
    },
  },
}
