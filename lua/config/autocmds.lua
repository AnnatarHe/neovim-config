-- Autocommands (migrated from .vimrc)

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- General settings group
local general = augroup("General", { clear = true })

-- Highlight on yank
autocmd("TextYankPost", {
  group = general,
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})

-- Remove whitespace on save
autocmd("BufWritePre", {
  group = general,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

-- Return to last edit position when opening files
autocmd("BufReadPost", {
  group = general,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Filetype detection
local filetypes = augroup("Filetypes", { clear = true })

-- WeChat Mini Program files (.wpy)
autocmd({ "BufRead", "BufNewFile" }, {
  group = filetypes,
  pattern = "*.wpy",
  command = "setlocal filetype=vue",
})

-- Close some filetypes with <q>
autocmd("FileType", {
  group = general,
  pattern = {
    "help",
    "lspinfo",
    "man",
    "notify",
    "qf",
    "checkhealth",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})

-- Auto resize splits when window is resized
autocmd("VimResized", {
  group = general,
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})
