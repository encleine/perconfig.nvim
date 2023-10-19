return {
  -- Add indentation guides even on blank lines
  'lukas-reineke/indent-blankline.nvim',
  -- Enable `lukas-reineke/indent-blankline.nvim`
  -- See `:help indent_blankline.txt`

  config = function()
    local hooks = require "ibl.hooks"
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    end)

    vim.g.rainbow_delimiters = { highlight = "RainbowRed" }

    require("ibl").setup {
      indent = { char = "┊" },
      whitespace = { remove_blankline_trail = false },
      scope = { highlight = "RainbowRed" },
    }
    hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  end
}
