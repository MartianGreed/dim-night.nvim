local M = {}

function M.get(c, config)
  local util = require("dim-night.util")

  return {
    DiagnosticError = { fg = c.red_error },
    DiagnosticWarn = { fg = c.yellow },
    DiagnosticInfo = { fg = c.purple },
    DiagnosticHint = { fg = c.cyan },
    DiagnosticOk = { fg = c.green_bright },

    DiagnosticVirtualTextError = { fg = c.red_error, bg = util.blend(c.red_error, c.bg, 0.1) },
    DiagnosticVirtualTextWarn = { fg = c.yellow, bg = util.blend(c.yellow, c.bg, 0.1) },
    DiagnosticVirtualTextInfo = { fg = c.purple, bg = util.blend(c.purple, c.bg, 0.1) },
    DiagnosticVirtualTextHint = { fg = c.cyan, bg = util.blend(c.cyan, c.bg, 0.1) },
    DiagnosticVirtualTextOk = { fg = c.green_bright, bg = util.blend(c.green_bright, c.bg, 0.1) },

    DiagnosticUnderlineError = { sp = c.red_error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.purple, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.cyan, undercurl = true },
    DiagnosticUnderlineOk = { sp = c.green_bright, undercurl = true },

    DiagnosticFloatingError = { fg = c.red_error },
    DiagnosticFloatingWarn = { fg = c.yellow },
    DiagnosticFloatingInfo = { fg = c.purple },
    DiagnosticFloatingHint = { fg = c.cyan },
    DiagnosticFloatingOk = { fg = c.green_bright },

    DiagnosticSignError = { fg = c.red_error },
    DiagnosticSignWarn = { fg = c.yellow },
    DiagnosticSignInfo = { fg = c.purple },
    DiagnosticSignHint = { fg = c.cyan },
    DiagnosticSignOk = { fg = c.green_bright },

    LspReferenceText = { bg = c.bg_visual },
    LspReferenceRead = { bg = c.bg_visual },
    LspReferenceWrite = { bg = c.bg_visual },

    LspSignatureActiveParameter = { fg = c.orange, bold = true },
    LspCodeLens = { fg = c.comment },
    LspCodeLensSeparator = { fg = c.fg_gutter },

    LspInlayHint = { fg = c.gray, bg = c.bg_highlight },

    LspInfoBorder = { fg = c.border },

    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.decorator"] = { link = "@function" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.macro"] = { link = "@function.macro" },
    ["@lsp.type.method"] = { link = "@function.method" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { fg = c.pink_type },
    ["@lsp.type.variable"] = { link = "@variable" },

    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.readonly"] = {},
    ["@lsp.mod.defaultLibrary"] = {},

    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
  }
end

return M
