local M = {}

function M.setup(colors, config)
  local groups = {}

  local function load(module)
    local ok, result = pcall(require, module)
    if ok then
      local hl = result.get(colors, config)
      for group, opts in pairs(hl) do
        groups[group] = opts
      end
    end
  end

  load("dim-night.groups.editor")
  load("dim-night.groups.syntax")
  load("dim-night.groups.treesitter")
  load("dim-night.groups.lsp")
  load("dim-night.groups.plugins")

  if config.on_highlights then
    config.on_highlights(groups, colors)
  end

  return groups
end

return M
