local M = {}

function M.darken(hex, amount)
  if hex == "NONE" then return hex end
  local r = tonumber(hex:sub(2, 3), 16)
  local g = tonumber(hex:sub(4, 5), 16)
  local b = tonumber(hex:sub(6, 7), 16)
  r = math.floor(r * (1 - amount))
  g = math.floor(g * (1 - amount))
  b = math.floor(b * (1 - amount))
  return string.format("#%02x%02x%02x", r, g, b)
end

function M.lighten(hex, amount)
  if hex == "NONE" then return hex end
  local r = tonumber(hex:sub(2, 3), 16)
  local g = tonumber(hex:sub(4, 5), 16)
  local b = tonumber(hex:sub(6, 7), 16)
  r = math.min(255, math.floor(r + (255 - r) * amount))
  g = math.min(255, math.floor(g + (255 - g) * amount))
  b = math.min(255, math.floor(b + (255 - b) * amount))
  return string.format("#%02x%02x%02x", r, g, b)
end

function M.blend(fg, bg, alpha)
  if fg == "NONE" or bg == "NONE" then return fg end
  local fg_r = tonumber(fg:sub(2, 3), 16)
  local fg_g = tonumber(fg:sub(4, 5), 16)
  local fg_b = tonumber(fg:sub(6, 7), 16)
  local bg_r = tonumber(bg:sub(2, 3), 16)
  local bg_g = tonumber(bg:sub(4, 5), 16)
  local bg_b = tonumber(bg:sub(6, 7), 16)
  local r = math.floor(fg_r * alpha + bg_r * (1 - alpha))
  local g = math.floor(fg_g * alpha + bg_g * (1 - alpha))
  local b = math.floor(fg_b * alpha + bg_b * (1 - alpha))
  return string.format("#%02x%02x%02x", r, g, b)
end

return M
