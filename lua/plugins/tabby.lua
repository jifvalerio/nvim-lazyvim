return {
  "nanozuki/tabby.nvim",
  event = "VimEnter",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {},
  config = function()
    require("tabby").setup({
      preset = "tab_only",
      option = {
        theme = {
          fill = "TabLineFill",
          head = "TabLine",
          current_tab = "TabLineSel",
          tab = "TabLine",
          win = "TabLine",
          tail = "TabLine",
        },
        nerdfont = true,
        lualine_theme = nil,
        tab_name = {
          name_fallback = function()
            return ""
          end,
        },
        buf_name = {
          mode = "unique",
        },
      },
    })
  end,
  keys = {
    {
      "<leader>fw",
      "<cmd>Tabby pick_window<cr>",
      desc = "Tabby pick window",
    },
    {
      "<leader><tab>r",
      function()
        local user_input = vim.fn.input("Enter name: ")
        vim.cmd("Tabby rename_tab " .. user_input)
      end,
      desc = "Tabby rename tab",
    },
  },
}
