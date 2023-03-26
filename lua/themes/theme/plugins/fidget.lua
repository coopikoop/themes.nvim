local T = {}

--- @param c Colorscheme The color palette
T.setup = function(c, _, _)
  return {
    FidgetTask = {
      bg = c.editor.background,
      fg = c.base.white,
    },
    FidgetTitle = { bg = c.editor.background, fg = c.base.yellow },
  }
end

return T
