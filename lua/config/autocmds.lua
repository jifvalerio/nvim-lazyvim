-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("personal_" .. name, { clear = true })
end

-- Stop comments from continuing on new line
-- :help fo-table
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("comments"),
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- Remove numbers from terminal buffers
vim.api.nvim_create_autocmd("TermOpen", {
  group = augroup("terminal_buffers"),
  callback = function()
    vim.cmd("setlocal nonumber norelativenumber")
    vim.cmd("startinsert")
  end,
})

-- Start insert mode in terminal buffers
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "term://*",
  callback = function()
    vim.cmd("startinsert")
  end,
})
