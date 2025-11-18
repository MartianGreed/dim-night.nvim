local M = {}

function M.get(c, config)
  local util = require("dim-night.util")

  return {
    Normal = { fg = c.fg, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg_popup },
    NormalNC = { fg = c.fg, bg = c.bg },
    NormalSB = { fg = c.fg_sidebar, bg = c.bg_sidebar },

    Cursor = { fg = c.bg, bg = c.blue_cursor },
    lCursor = { fg = c.bg, bg = c.blue_cursor },
    CursorIM = { fg = c.bg, bg = c.blue_cursor },
    CursorLine = { bg = c.bg_highlight },
    CursorColumn = { bg = c.bg_highlight },
    ColorColumn = { bg = c.bg_highlight },

    LineNr = { fg = c.fg_gutter },
    CursorLineNr = { fg = c.fg },
    SignColumn = { fg = c.fg_gutter, bg = c.bg },
    FoldColumn = { fg = c.fg_gutter, bg = c.bg },
    Folded = { fg = c.blue, bg = c.bg_highlight },

    VertSplit = { fg = c.border },
    WinSeparator = { fg = c.border },

    StatusLine = { fg = c.fg_dark, bg = c.bg_statusline },
    StatusLineNC = { fg = c.gray, bg = c.bg_statusline },

    Pmenu = { fg = c.fg, bg = c.bg_popup },
    PmenuSel = { bg = c.bg_visual },
    PmenuSbar = { bg = c.bg_popup },
    PmenuThumb = { bg = c.gray_dark },

    WildMenu = { bg = c.bg_visual },

    TabLine = { fg = c.gray, bg = c.bg_dark },
    TabLineFill = { bg = c.bg_dark },
    TabLineSel = { fg = c.fg, bg = c.bg_highlight },

    Search = { fg = c.bg, bg = c.yellow },
    IncSearch = { fg = c.bg, bg = c.orange },
    CurSearch = { link = "IncSearch" },
    Substitute = { fg = c.bg, bg = c.red },

    Visual = { bg = c.bg_visual },
    VisualNOS = { bg = c.bg_visual },

    MatchParen = { fg = c.orange, bold = true },

    ModeMsg = { fg = c.fg, bold = true },
    MsgArea = { fg = c.fg },
    MoreMsg = { fg = c.blue },
    Question = { fg = c.blue },
    WarningMsg = { fg = c.yellow },
    ErrorMsg = { fg = c.red_error },

    NonText = { fg = c.fg_gutter },
    SpecialKey = { fg = c.fg_gutter },
    Whitespace = { fg = c.fg_gutter },
    EndOfBuffer = { fg = c.bg },

    Conceal = { fg = c.gray },
    Directory = { fg = c.blue },
    Title = { fg = c.blue, bold = true },

    FloatBorder = { fg = c.border, bg = c.bg_popup },
    FloatTitle = { fg = c.fg, bg = c.bg_popup },

    SpellBad = { sp = c.red_error, undercurl = true },
    SpellCap = { sp = c.yellow, undercurl = true },
    SpellLocal = { sp = c.cyan, undercurl = true },
    SpellRare = { sp = c.purple, undercurl = true },

    DiffAdd = { bg = util.blend(c.green_git, c.bg, 0.15) },
    DiffChange = { bg = util.blend(c.blue_bright, c.bg, 0.15) },
    DiffDelete = { bg = util.blend(c.red_git, c.bg, 0.15) },
    DiffText = { bg = util.blend(c.blue_bright, c.bg, 0.3) },

    healthError = { fg = c.red_error },
    healthSuccess = { fg = c.green_bright },
    healthWarning = { fg = c.yellow },

    qfLineNr = { fg = c.fg_gutter },
    qfFileName = { fg = c.blue },

    debugPC = { bg = c.bg_sidebar },
    debugBreakpoint = { fg = c.red },

    WinBar = { link = "StatusLine" },
    WinBarNC = { link = "StatusLineNC" },
  }
end

return M
