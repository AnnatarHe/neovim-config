-- Editor enhancement plugins

return {
  -- Comment.nvim (replaces nerdcommenter)
  {
    "numToStr/Comment.nvim",
    keys = {
      { "gcc", mode = "n", desc = "Comment toggle current line" },
      { "gc", mode = { "n", "o" }, desc = "Comment toggle linewise" },
      { "gc", mode = "x", desc = "Comment toggle linewise (visual)" },
      { "gbc", mode = "n", desc = "Comment toggle current block" },
      { "gb", mode = { "n", "o" }, desc = "Comment toggle blockwise" },
      { "gb", mode = "x", desc = "Comment toggle blockwise (visual)" },
    },
    opts = {
      padding = true,
      sticky = true,
    },
  },

  -- Autopairs (replaces delimitMate)
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {
      check_ts = true,
      ts_config = {
        lua = { "string", "source" },
        javascript = { "string", "template_string" },
      },
      fast_wrap = {
        map = "<M-e>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
        offset = 0,
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "PmenuSel",
        highlight_grey = "LineNr",
      },
    },
    config = function(_, opts)
      require("nvim-autopairs").setup(opts)
      -- Integration with nvim-cmp
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },

  -- Surround (replaces vim-surround)
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {},
  },

  -- Visual multi-cursor (replaces vim-multiple-cursors)
  {
    "mg979/vim-visual-multi",
    branch = "master",
    keys = {
      { "<C-m>", mode = { "n", "x" }, desc = "Multi-cursor" },
    },
    init = function()
      vim.g.VM_default_mappings = 0
      vim.g.VM_maps = {
        ["Find Under"] = "<C-m>",
        ["Find Subword Under"] = "<C-m>",
      }
    end,
  },

  -- Better escape
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    opts = {
      timeout = 300,
      default_mappings = false,
      mappings = {
        i = {
          j = {
            k = "<Esc>",
          },
        },
      },
    },
  },
}
