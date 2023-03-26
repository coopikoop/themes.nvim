local T = {}

--- @param c Colorscheme The color palette
T.setup = function(c, _, _)
  return {
    IlluminatedWordRead = { bg = c.editor.wordHighlightBackground },
    IlluminatedWordText = { bg = c.editor.selectionHighlightBackground },
    IlluminatedWordWrite = { bg = c.editor.wordHighlightStrongBackground },
  }
end

return T
