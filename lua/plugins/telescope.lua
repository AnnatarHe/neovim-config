-- Telescope (replaces fzf + ack.vim)

return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
    },
    cmd = "Telescope",
    keys = {
      -- File pickers
      { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find files" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
      { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find git files" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },

      -- Grep (replaces Ack!)
      { "<leader>f", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
      { "<leader>fw", "<cmd>Telescope grep_string<cr>", desc = "Grep current word" },

      -- Buffers
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },

      -- Help
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },

      -- LSP
      { "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document symbols" },
      { "<leader>fS", "<cmd>Telescope lsp_workspace_symbols<cr>", desc = "Workspace symbols" },

      -- Git
      { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Git commits" },
      { "<leader>gC", "<cmd>Telescope git_bcommits<cr>", desc = "Git buffer commits" },
      { "<leader>gB", "<cmd>Telescope git_branches<cr>", desc = "Git branches" },
    },
    opts = function()
      local actions = require("telescope.actions")
      return {
        defaults = {
          prompt_prefix = " ",
          selection_caret = " ",
          path_display = { "smart" },
          file_ignore_patterns = {
            "node_modules",
            ".git/",
            "dist/",
            "build/",
            "%.lock",
          },
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-c>"] = actions.close,
              ["<Down>"] = actions.move_selection_next,
              ["<Up>"] = actions.move_selection_previous,
              ["<CR>"] = actions.select_default,
              ["<C-x>"] = actions.select_horizontal,
              ["<C-v>"] = actions.select_vertical,
              ["<C-t>"] = actions.select_tab,
              ["<C-u>"] = actions.preview_scrolling_up,
              ["<C-d>"] = actions.preview_scrolling_down,
            },
            n = {
              ["<esc>"] = actions.close,
              ["<CR>"] = actions.select_default,
              ["<C-x>"] = actions.select_horizontal,
              ["<C-v>"] = actions.select_vertical,
              ["<C-t>"] = actions.select_tab,
              ["j"] = actions.move_selection_next,
              ["k"] = actions.move_selection_previous,
              ["gg"] = actions.move_to_top,
              ["G"] = actions.move_to_bottom,
            },
          },
        },
        pickers = {
          find_files = {
            hidden = true,
          },
          live_grep = {
            additional_args = function()
              return { "--hidden" }
            end,
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          },
        },
      }
    end,
    config = function(_, opts)
      require("telescope").setup(opts)
      pcall(require("telescope").load_extension, "fzf")
    end,
  },
}
