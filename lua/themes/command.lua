local util = require("themes.util")
local config = require("themes.config")

local T = {}

T.create_filter_command = function()
  local cmd = vim.api.nvim_create_user_command

  cmd("ThemeSelect", function()
    local menu = util.create_menu("Set theme", {
      "classic",
      "octagon",
      "pro",
      "machine",
      "ristretto",
      "spectrum",
      "gruvbox",
    }, function(item)
      local filter = item.value
      config.extend({ filter = filter })
      vim.cmd([[colorscheme themes]])
    end)
    assert(menu, "Error: Fail to create menu")
    menu:mount()
  end, { nargs = 0 })

  cmd("Themes", function(opts)
    local filter = opts.args
    config.extend({ filter = filter })
    vim.cmd([[colorscheme Themes]])
  end, {
    nargs = 1,
    complete = function()
      return {
        "classic",
        "octagon",
        "pro",
        "machine",
        "ristretto",
        "spectrum",
        "gruvbox",
      }
    end,
  })
end

return T
