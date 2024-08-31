local function GitStatus(result)
  local status = vim.b.gitsigns_status_dict or {}
  if status == {} then return result end

  if status.added ~= 0 then
    table.insert(result, { text = " \u{f0ef0} " .. status.added, fg = "#A3BA5E" })
  end

  if status.changed ~= 0 then
    table.insert(result, { text = " \u{f1a3f} " .. status.changed, fg = "#7EA9A7" })
  end

  if status.removed ~= 0 then
    table.insert(result, { text = ' \u{f0234} ' .. status.removed, fg = "#EC5241" })
  end


  return result
end


return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        mode = "tabs",
        buffer_close_icon = '',
        themable = true,

        -- tabline_position = "bottom", -- This is a custom option, change the position here
        indicator = { style = 'none' },

        diagnostics = "nvim_lsp",

        show_buffer_close_icons = false,
        show_duplicate_prefix = false,



        custom_areas = {
          right = function()
            local result = {}
            local seve = vim.diagnostic.severity
            local error = #vim.diagnostic.get(0, { severity = seve.ERROR })
            local warning = #vim.diagnostic.get(0, { severity = seve.WARN })
            local info = #vim.diagnostic.get(0, { severity = seve.INFO })
            local hint = #vim.diagnostic.get(0, { severity = seve.HINT })



            if error ~= 0 then
              table.insert(result, { text = "  " .. error, fg = "#EC5241" })
            end

            if warning ~= 0 then
              table.insert(result, { text = "  " .. warning, fg = "#EFB839" })
            end

            if hint ~= 0 then
              table.insert(result, { text = "  " .. hint, fg = "#A3BA5E" })
            end

            if info ~= 0 then
              table.insert(result, { text = "  " .. info, fg = "#7EA9A7" })
            end

            return GitStatus(result)
          end,
        }
      },

      highlights = {
        fill = {
          bg = {
            attribute = "bg",
            highlight = "Whitespace"
          }
        }
      }
    }
  end
}
