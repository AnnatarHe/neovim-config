-- UI plugins: statusline and file explorer

return {
  -- Lualine (replaces lightline)
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      options = {
        theme = "onedark",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },

  -- Neo-tree (replaces NERDTree)
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
      { "<Leader>t", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree" },
      { "<Leader>e", "<cmd>Neotree focus<cr>", desc = "Focus Neo-tree" },
    },
    opts = {
      close_if_last_window = true,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            "node_modules",
            ".git",
          },
        },
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
      },
      window = {
        position = "left",
        width = 35,
        mappings = {
          ["<space>"] = "none",
        },
      },
      default_component_configs = {
        git_status = {
          symbols = {
            added = "",
            modified = "",
            deleted = "",
            renamed = "",
            untracked = "",
            ignored = "",
            unstaged = "",
            staged = "",
            conflict = "",
          },
        },
      },
    },
  },

  -- Which-key for keybinding hints
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      delay = 500,
    },
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      indent = {
        char = "│",
      },
      scope = {
        enabled = true,
      },
    },
  },
}
