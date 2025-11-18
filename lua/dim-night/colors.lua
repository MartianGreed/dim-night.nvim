local M = {}

M.palette = {
  none = "NONE",

  bg = "#0A0A0A",
  bg_dark = "#060606",
  bg_darker = "#060606",
  bg_highlight = "#151515",
  bg_popup = "#080808",
  bg_sidebar = "#060606",
  bg_statusline = "#060606",
  bg_visual = "#3392FF44",
  bg_search = "#ffd33d44",

  fg = "#e5e5e5",
  fg_dark = "#d4d4d4",
  fg_gutter = "#4d4d4d",
  fg_sidebar = "#d1d5da",

  border = "#080808",

  comment = "#60e67d",

  purple = "#BBB0FF",
  purple_dark = "#8b5cf6",
  purple_button = "#6d28d9",

  green = "#C8E997",
  green_bright = "#34d058",
  green_git = "#28a745",

  orange = "#FFA86B",
  orange_dark = "#F78C6C",

  yellow = "#f8ca73",
  yellow_bright = "#fdce75",

  cyan = "#55D9C9",
  cyan_dark = "#89DDFF",
  cyan_bright = "#33D6EF",
  cyan_match = "#17E5E6",

  blue = "#8BB1FF",
  blue_light = "#8AC5F0",
  blue_bright = "#82BCFF",
  blue_selection = "#3392FF",
  blue_cursor = "#c8e1ff",

  red = "#fe6767",
  red_error = "#f87171",
  red_bright = "#FF5370",
  red_git = "#ea4a5a",

  pink = "#f472b6",
  pink_bright = "#ec4899",
  pink_type = "#FF82C3",

  magenta = "#C792EA",
  magenta_light = "#f6a9ff",

  white = "#ffffff",
  gray = "#9d9d9d",
  gray_dark = "#7a7a7a",
  gray_darker = "#353535",
}

function M.setup(config)
  local colors = vim.tbl_deep_extend("force", {}, M.palette)

  if config.transparent then
    colors.bg = "NONE"
    colors.bg_sidebar = "NONE"
    colors.bg_statusline = "NONE"
    colors.bg_popup = "NONE"
  end

  if config.on_colors then
    config.on_colors(colors)
  end

  return colors
end

return M
