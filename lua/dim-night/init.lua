local M = {}

function M.setup(opts)
  require("dim-night.config").setup(opts)
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.g.colors_name = "dim-night"
  vim.o.termguicolors = true

  local config = require("dim-night.config").options
  if vim.tbl_isempty(config) then
    config = require("dim-night.config").defaults
  end

  vim.o.background = config.background or "dark"

  local colors = require("dim-night.colors").setup(config)
  local theme = require("dim-night.theme").setup(colors, config)

  for group, hl in pairs(theme) do
    vim.api.nvim_set_hl(0, group, hl)
  end

  if config.terminal_colors then
    M.terminal_colors(colors)
  end
end

function M.terminal_colors(c)
  vim.g.terminal_color_0 = c.bg_dark
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.magenta
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.fg
  vim.g.terminal_color_8 = c.gray
  vim.g.terminal_color_9 = c.red
  vim.g.terminal_color_10 = c.green
  vim.g.terminal_color_11 = c.yellow
  vim.g.terminal_color_12 = c.blue
  vim.g.terminal_color_13 = c.magenta
  vim.g.terminal_color_14 = c.cyan
  vim.g.terminal_color_15 = c.fg
end

function M.colors()
  local config = require("dim-night.config").options
  if vim.tbl_isempty(config) then
    config = require("dim-night.config").defaults
  end
  return require("dim-night.colors").setup(config)
end

return M
