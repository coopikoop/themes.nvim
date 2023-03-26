local T = {}

--- @param c Colorscheme The color palette
T.setup = function(c, _, _)
  return {
    Beacon = { bg = c.base.blue },
  }
end

return T
