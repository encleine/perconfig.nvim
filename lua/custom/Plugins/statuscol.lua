return {
  "luukvbaal/statuscol.nvim",
  config = function()
    local builtin = require("statuscol.builtin")
    require("statuscol").setup(
      {
        relculright = true,
        segments = {
          {
            text = { builtin.foldfunc, ' ' },
            click = "v:lua.ScFa",
          },
          {
            text = {
              function(args)
                local st = tostring(args.lnum)
                local maxwidth = 5
                return string.rep(' ', maxwidth - #st) .. st .. ' '
              end,
            },
            click = "v:lua.ScLa",
          },
          {
            text = { "%s" },
            maxwidth = 1,
            click = "v:lua.ScSa",
          },
        },
      }
    )
  end
}
