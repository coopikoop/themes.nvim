local util = require("themes.util")
local T = {}

---@class Config
---@field override fun(colors: Colorscheme)
local default = {
  transparent_background = false,
  terminal_colors = true,
  devicons = false,
  styles = {
    comment = { italic = true },
    keyword = { italic = true }, -- any other keyword
    type = { italic = true }, -- (preferred) int, long, char, etc
    storageclass = { italic = true }, -- static, register, volatile, etc
    structure = { italic = true }, -- struct, union, enum, etc
    parameter = { italic = true }, -- parameter pass in function
    annotation = { italic = true },
    tag_attribute = { italic = true }, -- attribute of tag in reactjs
  },
  filter = vim.o.background == "light" and "classic" or "pro", -- classic | classic-fd | octagon | pro | machine | ristretto | spectrum | spectrum-fd | gruvbox | tasty | omni | fulldark
  day_night = {
    enable = false,
    day_filter = "pro", -- classic | classic-fd | octagon | pro | machine | ristretto | spectrum | spectrum-fd | gruvbox | tasty | omni | fulldark
    night_filter = "spectrum", -- classic | classic-fd | octagon | pro | machine | ristretto | spectrum | spectrum-fd | gruvbox | tasty | omni | fulldark
  },
  inc_search = "background", -- underline | background
  background_clear = {
    -- "float_win",
    "toggleterm",
    "telescope",
    "which-key",
    "renamer",
    -- "neo-tree",
  },
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
      bold = true,
    },
    indent_blankline = {
      context_highlight = "default", -- default | pro
      context_start_underline = false,
    },
  },
  ---@param colors Colorscheme
  override = function(colors) end,
}

---@type Config
T.options = {}

---@param options Config|nil
T.setup = function(options)
  T.options = vim.tbl_deep_extend("force", {}, default, options or {})
  local day_night = T.options.day_night
  if day_night.enable then
    T.options.filter = util.is_daytime() and day_night.day_filter or day_night.night_filter
  end
end

---@param options Config|nil
T.extend = function(options)
  T.options = vim.tbl_deep_extend("force", {}, T.options or default, options or {})
end

T.setup()

return T
