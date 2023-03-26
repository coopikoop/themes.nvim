local T = {}

--- @param c Colorscheme The color palette
T.setup = function(c, _, _)
  return {
    UfoFoldedBg = { bg = c.editor.background },
    FoldColumn = {
      bg = c.editor.background,
      fg = c.button.foreground,
    }, -- 'foldcolumn'
  }
end

return T
