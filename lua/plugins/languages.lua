-- Language-specific plugins

return {
  -- vim-go (keep it for Go development)
  {
    "fatih/vim-go",
    ft = { "go", "gomod", "gosum" },
    build = ":GoUpdateBinaries",
    init = function()
      -- vim-go settings (from .vimrc)
      vim.g.go_fmt_command = "goimports"
      vim.g.go_highlight_types = 1
      vim.g.go_highlight_fields = 1
      vim.g.go_highlight_functions = 1
      vim.g.go_highlight_function_calls = 1
      vim.g.go_highlight_operators = 1
      vim.g.go_highlight_extra_types = 1
      vim.g.go_highlight_build_constraints = 1
      -- Disable vim-go's LSP features (use nvim-lspconfig instead)
      vim.g.go_gopls_enabled = 0
      vim.g.go_code_completion_enabled = 0
      vim.g.go_def_mapping_enabled = 0
      vim.g.go_doc_keywordprg_enabled = 0
    end,
  },

  -- Emmet for HTML/CSS
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
    init = function()
      vim.g.user_emmet_mode = "n"
      vim.g.user_emmet_leader_key = "<C-y>"
    end,
  },

  -- GraphQL support
  {
    "jparise/vim-graphql",
    ft = { "graphql", "gql" },
  },

  -- Wakatime (time tracking)
  {
    "wakatime/vim-wakatime",
    event = "VeryLazy",
  },
}
