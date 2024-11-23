return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    table.remove(opts.sections.lualine_c)
    opts.extensions = {
      "lazy",
      "man",
      "mason",
      "neo-tree",
      "nvim-tree",
      "oil",
      "toggleterm",
      "trouble",
    }
  end,
}
