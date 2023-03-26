local colors = require("themes.colorscheme").colors

local themes = {}

themes.normal = {
  a = { bg = colors.base.yellow, fg = colors.base.black, gui = "bold" },
  b = { bg = colors.base.dimmed5, fg = colors.base.yellow },
  c = {
    bg = colors.statusBar.background,
    fg = colors.statusBar.activeForeground,
  },
  x = {
    bg = colors.statusBar.background,
    fg = colors.statusBar.activeForeground,
  },
}

themes.insert = {
  a = { bg = colors.base.green, fg = colors.base.black },
  b = { bg = colors.base.dimmed5, fg = colors.base.green },
}

themes.command = {
  a = { bg = colors.base.yellow, fg = colors.base.black },
  b = { bg = colors.base.dimmed5, fg = colors.base.yellow },
}

themes.visual = {
  a = { bg = colors.base.magenta, fg = colors.base.black },
  b = { bg = colors.base.dimmed5, fg = colors.base.magenta },
}

themes.replace = {
  a = { bg = colors.base.red, fg = colors.base.black },
  b = { bg = colors.base.dimmed5, fg = colors.base.red },
}

themes.inactive = {
  a = { bg = colors.base.black, fg = colors.base.yellow },
  b = { bg = colors.base.black, fg = colors.base.black },
  -- c = { bg = colors.base.black, fg = colors.base.black },
}

return themes
