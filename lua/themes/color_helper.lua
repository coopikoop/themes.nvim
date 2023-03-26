--- @class Helper
local T = {}

local function getBlendBackground(background)
  if background ~= nil and background ~= "NONE" then
    return background
  end

  local filter = require("themes.colorscheme").filter
  --- @module "themes.colorscheme.palette.pro"
  local c = require("themes.colorscheme.palette." .. filter)
  return c.background
end

local function hexToRgb(hex)
  hex = string.lower(hex)
  return {
    r = tonumber(hex:sub(2, 3), 16),
    g = tonumber(hex:sub(4, 5), 16),
    b = tonumber(hex:sub(6, 7), 16),
  }
end

local function rgbToHex(rgb)
  local red = string.format("%02x", rgb.r)
  local green = string.format("%02x", rgb.g)
  local blue = string.format("%02x", rgb.b)
  return "#" .. red .. green .. blue
end

T.lighten = function(hex, amt)
  hex = hexToRgb(hex)
  -- over upper
  hex.r = (hex.r + amt > 255) and 255 or (hex.r + amt)
  hex.g = (hex.g + amt > 255) and 255 or (hex.g + amt)
  hex.b = (hex.b + amt > 255) and 255 or (hex.b + amt)
  -- below bound
  hex.r = (hex.r < 0) and 0 or hex.r
  hex.g = (hex.g < 0) and 0 or hex.g
  hex.b = (hex.b < 0) and 0 or hex.b
  -- rgb to hex
  local red = string.format("%02x", hex.r)
  local green = string.format("%02x", hex.g)
  local blue = string.format("%02x", hex.b)
  return "#" .. red .. green .. blue
end

T.rgba = function(red, green, blue, alpha, background)
  background = getBlendBackground(background)
  local bg_rgb = hexToRgb(background)
  -- new color
  red = (1 - alpha) * bg_rgb.r + alpha * red
  green = (1 - alpha) * bg_rgb.g + alpha * green
  blue = (1 - alpha) * bg_rgb.b + alpha * blue
  return rgbToHex({ r = red, g = green, b = blue })
end

T.blend = function(hexColor, alpha, background)
  background = getBlendBackground(background)
  local rgb = hexToRgb(hexColor)
  return T.rgba(rgb.r, rgb.g, rgb.b, alpha, background)
end

T.extend_hex = function(hexColor, background)
  background = getBlendBackground(background)
  local hex6 = string.sub(hexColor, 1, 7)
  local alpha = tonumber(string.sub(hexColor, 8, 9), 16) / 255
  print(alpha)
  return T.blend(hex6, alpha, background)
end

return T
