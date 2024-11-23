return {
  "akinsho/toggleterm.nvim",
  lazy = false,
  opts = {
    shade_terminals = false,
  },
  keys = {
    {
      "<c-_>",
      "<cmd>ToggleTerm<cr>",
      mode = { "n", "t" },
      desc = "Terminal",
    },
  },
}
