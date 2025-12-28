# Neovim Configuration

Personal Neovim configuration using [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.

## Requirements

- Neovim >= 0.9.0
- Git >= 2.19.0
- [Nerd Font](https://www.nerdfonts.com/) (optional, for icons)
- Node.js (for LSP servers)
- Go (for gopls)

## Installation

```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this config
git clone <your-repo> ~/.config/nvim

# Start Neovim (plugins will auto-install)
nvim
```

## Directory Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
└── lua/
    ├── config/
    │   ├── lazy.lua         # Plugin manager bootstrap
    │   ├── options.lua      # Neovim options
    │   ├── keymaps.lua      # Key mappings
    │   └── autocmds.lua     # Autocommands
    └── plugins/
        ├── colorscheme.lua  # Color schemes
        ├── ui.lua           # UI components
        ├── editor.lua       # Editor enhancements
        ├── git.lua          # Git integration
        ├── telescope.lua    # Fuzzy finder
        ├── treesitter.lua   # Syntax highlighting
        ├── lsp.lua          # LSP configuration
        ├── cmp.lua          # Completion
        ├── formatting.lua   # Code formatting
        └── languages.lua    # Language-specific plugins
```

## Key Mappings

Leader key: `;`

### General

| Key | Description |
|-----|-------------|
| `;y` | Yank to system clipboard (visual mode) |
| `;p` | Paste from system clipboard |
| `;<space>` | Clear search highlight |
| `jk` | Exit insert mode |

### File Navigation

| Key | Description |
|-----|-------------|
| `<C-p>` | Find files |
| `;t` | Toggle file tree |
| `;e` | Focus file tree |
| `;ff` | Find files |
| `;fg` | Find git files |
| `;fr` | Recent files |
| `;fb` | Buffers |

### Search

| Key | Description |
|-----|-------------|
| `;f` | Live grep (search in files) |
| `;fw` | Grep current word |
| `;fh` | Help tags |
| `;fs` | Document symbols |
| `;fS` | Workspace symbols |

### LSP

| Key | Description |
|-----|-------------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `gr` | Go to references |
| `gt` | Go to type definition |
| `K` | Hover documentation |
| `<C-k>` | Signature help |
| `;ca` | Code action |
| `;rn` | Rename |
| `;d` | Show diagnostics |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |

### Git

| Key | Description |
|-----|-------------|
| `;gs` | Git status |
| `;gb` | Git blame |
| `;gd` | Git diff |
| `;gc` | Git commits |
| `;gB` | Git branches |
| `]c` | Next hunk |
| `[c` | Previous hunk |
| `;hs` | Stage hunk |
| `;hr` | Reset hunk |
| `;hp` | Preview hunk |
| `;hb` | Blame line |

### Editing

| Key | Description |
|-----|-------------|
| `gcc` | Toggle comment (line) |
| `gc` | Toggle comment (motion) |
| `<C-m>` | Multi-cursor |
| `<` / `>` | Indent (stay in visual mode) |
| `J` / `K` | Move line up/down (visual mode) |

### Window Navigation

| Key | Description |
|-----|-------------|
| `<C-h>` | Move to left window |
| `<C-j>` | Move to bottom window |
| `<C-k>` | Move to top window |
| `<C-l>` | Move to right window |

## Plugins

### UI
- [onedark.nvim](https://github.com/navarasu/onedark.nvim) - Color scheme
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Status line
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - File explorer
- [which-key.nvim](https://github.com/folke/which-key.nvim) - Keybinding hints
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) - Indent guides

### Editor
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) - Commenting
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Auto-close brackets
- [nvim-surround](https://github.com/kylechui/nvim-surround) - Surround text objects
- [vim-visual-multi](https://github.com/mg979/vim-visual-multi) - Multiple cursors

### Git
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git signs
- [vim-fugitive](https://github.com/tpope/vim-fugitive) - Git commands

### Search
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder

### LSP & Completion
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configuration
- [mason.nvim](https://github.com/williamboman/mason.nvim) - LSP installer
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion engine
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippets

### Formatting & Linting
- [conform.nvim](https://github.com/stevearc/conform.nvim) - Formatting
- [nvim-lint](https://github.com/mfussenegger/nvim-lint) - Linting

### Languages
- [vim-go](https://github.com/fatih/vim-go) - Go development
- [emmet-vim](https://github.com/mattn/emmet-vim) - Emmet for HTML/CSS
- [vim-graphql](https://github.com/jparise/vim-graphql) - GraphQL syntax
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting

### Other
- [vim-wakatime](https://github.com/wakatime/vim-wakatime) - Time tracking

## LSP Servers

Pre-configured servers (installed via Mason):

- `bashls` - Bash
- `eslint` - JavaScript/TypeScript linting
- `gopls` - Go
- `lua_ls` - Lua
- `ts_ls` - TypeScript/JavaScript
- `html` - HTML
- `cssls` - CSS
- `jsonls` - JSON

Install additional servers:
```vim
:Mason
```

## Commands

| Command | Description |
|---------|-------------|
| `:Lazy` | Open lazy.nvim UI |
| `:Mason` | Open Mason UI |
| `:Neotree` | Toggle file tree |
| `:Telescope` | Open Telescope |
| `:ConformInfo` | Show formatter info |
| `:checkhealth` | Check configuration health |

## Customization

### Change Color Scheme

Edit `lua/plugins/colorscheme.lua`:

```lua
-- Use dracula instead
require("dracula").load()
```

Or switch at runtime:
```vim
:colorscheme dracula
```

### Add New Plugins

Create a new file in `lua/plugins/` or add to an existing one:

```lua
return {
  {
    "author/plugin-name",
    event = "VeryLazy",  -- Lazy loading
    opts = {},
  },
}
```

### Change Leader Key

Edit `lua/config/lazy.lua`:

```lua
vim.g.mapleader = " "  -- Change to space
```

## Troubleshooting

```vim
" Check health
:checkhealth

" Check lazy.nvim status
:Lazy

" Check LSP status
:LspInfo

" Check treesitter status
:TSInstallInfo
```

## License

MIT
