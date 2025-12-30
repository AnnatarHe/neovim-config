-- Claude Code integration
-- Opens Claude Code CLI in a terminal buffer

return {
  {
    "greggh/claude-code.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    cmd = {
      "ClaudeCode",
      "ClaudeCodeContinue",
      "ClaudeCodeResume",
    },
    keys = {
      { "<leader>cc", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
      { "<leader>cC", "<cmd>ClaudeCodeContinue<cr>", desc = "Claude Code Continue" },
      { "<leader>cr", "<cmd>ClaudeCodeResume<cr>", desc = "Claude Code Resume" },
    },
    opts = {},
  },
}
