-- This will show current line git blame
-- Also adds a keymap for toggling it off

return {
  "lewis6991/gitsigns.nvim",
  keys = {
    {
      "<leader>uB",
      "<cmd>Gitsigns toggle_current_line_blame<cr>",
      desc = "Toggle Line Blame",
    },
  },
  opts = {
    current_line_blame = true,
  },
}
