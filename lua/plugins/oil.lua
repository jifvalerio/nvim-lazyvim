return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { "echasnovski/mini.icons" },
  keys = {
    { "-", "<CMD>Oil<CR>", desc = "File Explorer" },
    { "_", "<CMD>Oil .<CR>", desc = "File Explorer CWD" },
  },
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = false,
    },
    keymaps = {
      ["h"] = { callback = "actions.parent", mode = "n" },
      ["l"] = { callback = "actions.select", mode = "n" },
      ["<C-h>"] = false,
      ["<C-l>"] = false,
    },
  },
}
