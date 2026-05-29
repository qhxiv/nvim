return {
  {
    "Mofiqul/vscode.nvim",
    config = function()
      -- vim.cmd("colo vscode")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
      })

      vim.cmd("colo kanagawa")
    end,
  },
}
