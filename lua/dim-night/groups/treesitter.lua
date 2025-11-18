local M = {}

function M.get(c, config)
  local styles = config.styles

  return {
    ["@variable"] = vim.tbl_extend("force", { fg = c.white }, styles.variables),
    ["@variable.builtin"] = { fg = c.red, italic = true },
    ["@variable.parameter"] = vim.tbl_extend("force", { fg = c.cyan }, styles.parameters),
    ["@variable.member"] = vim.tbl_extend("force", { fg = c.blue_light }, styles.properties),

    ["@constant"] = { fg = c.yellow },
    ["@constant.builtin"] = { fg = c.yellow },
    ["@constant.macro"] = { fg = c.purple },

    ["@module"] = { fg = c.fg_dark },
    ["@module.builtin"] = { fg = c.red },
    ["@label"] = { fg = c.blue },

    ["@string"] = { fg = c.green },
    ["@string.documentation"] = { fg = c.green },
    ["@string.regexp"] = { fg = c.cyan_dark },
    ["@string.escape"] = { fg = c.cyan_dark },
    ["@string.special"] = { fg = c.cyan_dark },
    ["@string.special.symbol"] = { fg = c.green },
    ["@string.special.url"] = { fg = c.magenta_light, underline = true },

    ["@character"] = { fg = c.green },
    ["@character.special"] = { fg = c.cyan_dark },

    ["@boolean"] = { fg = c.yellow },
    ["@number"] = { fg = c.yellow },
    ["@number.float"] = { fg = c.yellow },

    ["@type"] = vim.tbl_extend("force", { fg = c.yellow }, styles.types),
    ["@type.builtin"] = { fg = c.yellow },
    ["@type.definition"] = { fg = c.yellow },
    ["@type.qualifier"] = { fg = c.purple },

    ["@attribute"] = { fg = c.yellow },
    ["@property"] = vim.tbl_extend("force", { fg = c.blue_light }, styles.properties),

    ["@function"] = vim.tbl_extend("force", { fg = c.orange }, styles.functions),
    ["@function.builtin"] = { fg = c.orange },
    ["@function.call"] = { fg = c.orange },
    ["@function.macro"] = { fg = c.purple },
    ["@function.method"] = { fg = c.orange },
    ["@function.method.call"] = { fg = c.orange },

    ["@constructor"] = { fg = c.blue },
    ["@constructor.lua"] = { fg = c.fg_dark },

    ["@operator"] = { fg = c.fg_dark },

    ["@keyword"] = vim.tbl_extend("force", { fg = c.purple }, styles.keywords),
    ["@keyword.coroutine"] = { fg = c.purple },
    ["@keyword.function"] = { fg = c.purple },
    ["@keyword.operator"] = { fg = c.purple },
    ["@keyword.import"] = { fg = c.purple },
    ["@keyword.storage"] = { fg = c.purple },
    ["@keyword.repeat"] = { fg = c.purple },
    ["@keyword.return"] = { fg = c.purple },
    ["@keyword.debug"] = { fg = c.purple },
    ["@keyword.exception"] = { fg = c.purple },
    ["@keyword.conditional"] = { fg = c.purple },
    ["@keyword.conditional.ternary"] = { fg = c.purple },
    ["@keyword.directive"] = { fg = c.purple },
    ["@keyword.directive.define"] = { fg = c.purple },

    ["@punctuation.delimiter"] = { fg = c.fg_dark },
    ["@punctuation.bracket"] = { fg = c.fg_dark },
    ["@punctuation.special"] = { fg = c.pink_bright },

    ["@comment"] = { fg = c.comment, italic = styles.comments.italic },
    ["@comment.documentation"] = { fg = c.comment },
    ["@comment.error"] = { fg = c.bg, bg = c.red_error },
    ["@comment.warning"] = { fg = c.bg, bg = c.yellow },
    ["@comment.todo"] = { fg = c.bg, bg = c.yellow },
    ["@comment.note"] = { fg = c.bg, bg = c.cyan },

    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.heading"] = { fg = c.green, bold = true },
    ["@markup.quote"] = { fg = c.comment, italic = true },
    ["@markup.math"] = { fg = c.blue },
    ["@markup.environment"] = { fg = c.purple },

    ["@markup.link"] = { fg = c.blue },
    ["@markup.link.label"] = { fg = c.blue },
    ["@markup.link.url"] = { fg = c.magenta_light, underline = true },

    ["@markup.raw"] = { fg = c.magenta },
    ["@markup.raw.block"] = { fg = c.magenta },

    ["@markup.list"] = { fg = c.fg },
    ["@markup.list.checked"] = { fg = c.green_bright },
    ["@markup.list.unchecked"] = { fg = c.gray },

    ["@diff.plus"] = { fg = c.green_git },
    ["@diff.minus"] = { fg = c.red_git },
    ["@diff.delta"] = { fg = c.blue_bright },

    ["@tag"] = { fg = c.red },
    ["@tag.attribute"] = { fg = c.yellow_bright, italic = true },
    ["@tag.delimiter"] = { fg = c.fg_dark },

    ["@none"] = {},
  }
end

return M
