return {
  'koenverburg/peepsight.nvim',

  config = function()
    local peep = require('peepsight')
    peep.setup {
      "function_declaration",
      "method_declaration",
      "func_literal",
    }

    peep.enable()
  end
}
