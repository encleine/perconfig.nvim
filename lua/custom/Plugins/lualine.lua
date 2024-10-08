return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = '' },
      section_separators = { left = ' ', right = '' },

    },

    sections = {
      lualine_x = { 'filetype' },
      lualine_y = { 'location' },
      lualine_z = { 'filename' }
    },

    extensions = {
      'oil',
      'fugitive',
      'mason',
      'lazy',
    }
  }
}
