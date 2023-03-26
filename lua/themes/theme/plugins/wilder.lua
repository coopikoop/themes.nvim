local T = {}

--- @param c Colorscheme The color palette
T.setup = function(c, _, _)
  return {
    WildMenu = {
      bg = c.base.yellow,
      fg = c.base.black,
      bold = true,
      underline = false,
    },
  }
end

return T
