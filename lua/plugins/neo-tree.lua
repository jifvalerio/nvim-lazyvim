return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({
          source = "filesystem",
          position = "float",
          toggle = true,
          reveal_force_cwd = true,
          dir = LazyVim.root(),
        })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
    {
      "<leader>fE",
      function()
        require("neo-tree.command").execute({
          source = "filesystem",
          position = "float",
          toggle = true,
          reveal_force_cwd = true,
          dir = vim.uv.cwd(),
        })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
  },
  opts = {
    window = {
      position = "float",
    },
  },
}
