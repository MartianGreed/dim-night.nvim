local M = {}

function M.get(c, config)
  local styles = config.styles

  return {
    Comment = { fg = c.comment, italic = styles.comments.italic },

    Constant = { fg = c.yellow },
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.yellow },
    Boolean = { fg = c.yellow },
    Float = { fg = c.yellow },

    Identifier = { fg = c.white },
    Function = vim.tbl_extend("force", { fg = c.orange }, styles.functions),

    Statement = { fg = c.purple },
    Conditional = { fg = c.purple },
    Repeat = { fg = c.purple },
    Label = { fg = c.blue },
    Operator = { fg = c.fg_dark },
    Keyword = vim.tbl_extend("force", { fg = c.purple }, styles.keywords),
    Exception = { fg = c.purple },

    PreProc = { fg = c.purple },
    Include = { fg = c.purple },
    Define = { fg = c.purple },
    Macro = { fg = c.purple },
    PreCondit = { fg = c.purple },

    Type = vim.tbl_extend("force", { fg = c.yellow }, styles.types),
    StorageClass = { fg = c.purple },
    Structure = { fg = c.yellow },
    Typedef = { fg = c.yellow },

    Special = { fg = c.cyan_dark },
    SpecialChar = { fg = c.cyan_dark },
    Tag = { fg = c.red },
    Delimiter = { fg = c.fg_dark },
    SpecialComment = { fg = c.comment },
    Debug = { fg = c.orange },

    Underlined = { underline = true },
    Ignore = { fg = c.bg },
    Error = { fg = c.red_bright },
    Todo = { fg = c.bg, bg = c.yellow, bold = true },
  }
end

return M
