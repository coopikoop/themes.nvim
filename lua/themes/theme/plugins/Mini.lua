local T = {}

--- @param c Colorscheme The color palette
T.setup = function(c, _, _)
  return {
    MiniIndentscopeSymbol = { fg = c.base.blue },
  }
end

return T
