local colors = require("themes.colorscheme").colors

local themes = {}

themes.normal = {
  left = {
    { colors.base.black, colors.base.yellow },
    { colors.base.yellow, colors.editorSuggestWidget.background },
  },
  middle = { { colors.base.black, colors.base.black } },
  right = {
    { colors.base.black, colors.base.yellow },
    { colors.base.yellow, colors.editorSuggestWidget.background },
  },
  error = { { colors.base.black, colors.base.red } },
  warning = { { colors.base.black, colors.base.blue } },
}

themes.insert = {
  left = {
    { colors.base.black, colors.base.green },
    { colors.base.green, colors.editorSuggestWidget.background },
  },
}

themes.visual = {
  left = {
    { colors.base.black, colors.base.magenta },
    { colors.base.magenta, colors.editorSuggestWidget.background },
  },
}

themes.replace = {
  left = {
    { colors.base.black, colors.base.red },
    { colors.base.red, colors.editorSuggestWidget.background },
  },
}

themes.inactive = {
  left = {
    { colors.base.yellow, colors.base.black },
    { colors.base.black, colors.base.black },
  },
  middle = {
    { colors.base.black, colors.base.black },
  },
}

package.loaded["colors"] = nil

return themes
