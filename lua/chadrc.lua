-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "carbonfox",
  -- theme_toggle = { "onedark", "one_light" },

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "",
    "free is freedom",
    "",
    -- "         .-.                                     ",
-- "        | G |--------------------.               ",
-- "         `-'  ___________________ \\             ",
-- "        |H|  || O o o  |=  | =   | \\\\           ",
-- "        |a|  ||__________________|  \\\\          ",
-- "        |H|  ||M8M<?<XHHMMMMMMMMM|   \\\\         ",
-- "   _    |a|  ||8M<?<XHHMMMMMMMMM|    \\\\        ",
-- "  / \\   |H|  ||M<?<XHHMMMMMMMMM|     \\\\       ",
-- " |   \\__|a|__//<?<XHHMMMMMMMMMR|      \\\\  _   ",
-- "  \\     |H|   \\<?<XHHMMMMMMMMMR|  =   \\\\ ||\\  ",
-- "   |    `\"'    |<?XHHMMMMMMMMMR| | \\ // \\\\ | ",
-- "  /     ===     \\<XHHMMMMMMMMMR|  \\-   \\\\  | ",
-- " |             | |HMMMMMMMMM98M|        \\\\\\  ",
-- "  \\     ___   /  /MMRMRM88M<<<|         \\\\   ",
-- "   `-_  \\_/  _-MMRMRM88M<<<?|         <o==o  ",
-- "      \"\"\"\"\"\"' ~~~V~~~~~~~~~V~                ",
  }
}

M.ui = {
  telescope = {
    style = "borderless"
  },
  tabufline = {
    enabled = false,
  },
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
  cmp = {
    style = "atom_colored"
  },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
