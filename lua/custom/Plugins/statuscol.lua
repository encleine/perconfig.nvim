local ffi = require("ffi")
local C = ffi.C

ffi.cdef([[
	typedef struct {} win_T;
	typedef struct {
		int start;  // line number where deepest fold starts
		int level;  // fold level, when zero other fields are N/A
		int llevel; // lowest level that starts in v:lnum
		int lines;  // number of lines from v:lnum to end of closed fold
	} foldinfo_T;
	foldinfo_T fold_info(win_T* wp, int lnum);
]])

local function foldfunc(args)
  local width = args.fold.width
  if width == 0 then return "" end

  local foldinfo = C.fold_info(args.wp, args.lnum)
  -- I don't know of a better way to do this :\
  local string = "%#String#"
  local level = foldinfo.level

  if level == 0 then
    return string .. (" "):rep(width) .. "%*"
  end

  local closed = foldinfo.lines > 0

  local range = level < width and level or width
  if args.virtnum ~= 0 then
    string = string .. "┃"
  elseif closed and level == 1 then
    return string .. "🮰"
  elseif closed then
    string = string .. "┇"
  elseif foldinfo.start == args.lnum and level == 1 then
    string = string .. "┏"
  elseif foldinfo.start == args.lnum then
    string = string .. "┣"
  else
    string = string .. "┃"
  end

  if range < width then
    string = string .. (" "):rep(width - range)
  end

  return string .. "%*"
end

return {
  "luukvbaal/statuscol.nvim",

  config = function()
    local builtin = require("statuscol.builtin")
    require("statuscol").setup(
      {
        relculright = true,
        segments = {
          { text = { foldfunc }, },

          {
            text = {
              function(args)
                local st = builtin.lnumfunc(args, args.lnum)
                st = string.sub(st, 1, #st)
                return string.rep(' ', 5 - #st) .. st .. ' '
              end,
            },
          },
          {
            text = { "%s" },
            maxwidth = 1,
          },
        },
      }
    )
  end
}
