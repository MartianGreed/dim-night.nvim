# dim-night.nvim

A Neovim port of [Dim Night](https://github.com/lucas-barake/vscode-dim-night-theme), a dark theme with semantic syntax highlighting and comfortable, dim colors for extended coding sessions.

## Features

- Semantic syntax highlighting
- Treesitter support
- LSP diagnostics and semantic tokens
- Plugin integrations (Telescope, nvim-cmp, Gitsigns, Neo-tree, Lualine, etc.)
- Configurable styles and transparency

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "MartianGreed/dim-night.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

### LazyVim

```lua
return {
  {
    "MartianGreed/dim-night.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dim-night",
    },
  },
}
```

## Configuration

```lua
require("dim-night").setup({
  background = "light", -- "dark" or "light"
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    parameters = {},
    properties = {},
    types = {},
  },
  on_colors = function(colors)
    -- Modify colors
  end,
  on_highlights = function(highlights, colors)
    -- Modify highlights
  end,
})
```

### Options

| Option | Default | Description |
|--------|---------|-------------|
| `background` | `"light"` | Background variant: `"dark"` (darker) or `"light"` (default) |
| `transparent` | `false` | Enable transparent background |
| `terminal_colors` | `true` | Set terminal colors |
| `styles` | `{}` | Style overrides for syntax groups |
| `on_colors` | `nil` | Function to modify color palette |
| `on_highlights` | `nil` | Function to modify highlight groups |

## Lualine

```lua
require("lualine").setup({
  options = {
    theme = "dim-night",
  },
})
```

## Credits

- Original VS Code theme: [Dim Night](https://github.com/lucas-barake/vscode-dim-night-theme) by [lucas-barake](https://github.com/lucas-barake)

## License

MIT
