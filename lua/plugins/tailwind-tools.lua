return {
  "luckasRanarison/tailwind-tools.nvim",
  name = "tailwind-tools",
  build = ":UpdateRemotePlugins",
  lazy = false,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = {},
  keys = {
    {
      "<leader>uz",
      "<cmd>TailwindConcealToggle<cr>",
      desc = "Toggle Tailwind Conceal",
    },
  },
}
