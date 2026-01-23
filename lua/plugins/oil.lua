return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      keymaps = {
        ["<C-s>"] = false,
        ["<C-h>"] = false,
        ["<C-l>"] = false,
      },
      viewoptions = {
        show_hidden = false,
      },
      float = { padding = 5, border = 2 },
    })

    -- vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
    vim.keymap.set("n", "-", "<CMD>lua require('oil').open_float('.')<CR>", { desc = "Open parent directory" })
  end,
}
