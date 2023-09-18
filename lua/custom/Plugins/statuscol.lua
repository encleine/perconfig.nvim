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
                local st = builtin.lnumfunc(args, args.lnum)
                st = string.sub(st, 1, #st)
                return string.rep(' ', 5 - #st) .. st .. ' '
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
