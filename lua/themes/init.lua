local config = require("themes.config")
local util = require("themes.util")
local theme = require("themes.theme")
local command = require("themes.command")

local T = {}

T.load = function()
  util.load(theme.setup())
end

T.setup = function(options)
  config.setup(options)
  command.create_filter_command()
end

T.get_base_color = function()
  local base_color = require("themes.colorscheme").colors.base
  return base_color
end

return T
