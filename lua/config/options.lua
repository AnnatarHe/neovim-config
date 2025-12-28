-- Neovim options (migrated from .vimrc)

local opt = vim.opt

-- Search
opt.hlsearch = true                    -- Highlight search results
opt.incsearch = true                   -- Incremental search

-- Indentation
opt.autoindent = true                  -- Auto-indent new lines
opt.smartindent = true                 -- Smart indentation
opt.shiftwidth = 2                     -- Shift width
opt.tabstop = 2                        -- Tab width
opt.softtabstop = 2                    -- Soft tab width
opt.expandtab = true                   -- Use spaces instead of tabs

-- UI
opt.ruler = true                       -- Show cursor position
opt.showmode = true                    -- Show current mode
opt.number = true                      -- Show line numbers
opt.wrap = true                        -- Wrap long lines
opt.laststatus = 2                     -- Always show status line
opt.termguicolors = true               -- True color support
opt.signcolumn = "yes"                 -- Always show sign column

-- Whitespace display
opt.list = true
opt.listchars = {
  tab = "› ",
  trail = "•",
  extends = ">",
  precedes = "<",
  nbsp = ".",
  space = "·",
}

-- Files
opt.writebackup = false                -- No backup before overwriting
opt.backup = false                     -- No backup files
opt.swapfile = false                   -- No swap files
opt.undofile = true                    -- Persistent undo

-- Encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.fileencodings = { "ucs-bom", "utf-8", "latin1" }

-- Performance
opt.updatetime = 50                    -- Faster completion
opt.timeoutlen = 300                   -- Faster key sequence completion

-- Behavior
opt.mouse = ""                         -- Disable mouse
opt.errorbells = false                 -- No error bells
opt.fixendofline = true                -- Fix end of line

-- Completion
opt.completeopt = { "menu", "menuone", "noselect" }

-- Split behavior
opt.splitright = true                  -- Vertical splits to the right
opt.splitbelow = true                  -- Horizontal splits below

-- Clipboard
opt.clipboard = "unnamedplus"          -- Use system clipboard
