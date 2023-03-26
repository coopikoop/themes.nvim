local T = {}

--- @param c Colorscheme The color palette
T.setup = function(c, _, _)
  return {
    AlphaButton = { fg = c.base.magenta },
    AlphaFooter = { fg = c.base.blue },
    AlphaHeader = { fg = c.base.yellow },
  }
end

return T
