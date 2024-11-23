return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = false,
  },
  keys = {
    {
      "<leader>uB",
      "<cmd>Gitsigns toggle_current_line_blame<cr>",
      desc = "Toggle Line Blame",
    },
  },
}
