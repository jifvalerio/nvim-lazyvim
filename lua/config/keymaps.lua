-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "=", "<cmd>w<cr>", { desc = "Save" })

-- Terminal
map("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
map("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to Left Window" })
map("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to Lower Window" })
map("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to Upper Window" })
map("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to Right Window" })

-- Tabs
map("n", "<s-h>", "<cmd>tabp<cr>", { desc = "Previous Tab" })
map("n", "<s-l>", "<cmd>tabn<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>h", "<cmd>tabn<cr>", { desc = "Previous Tab" })
map("n", "<leader><tab>l", "<cmd>tabn<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>n", "<cmd>tab Oil .<cr>", { desc = "New Oil Tab" })
