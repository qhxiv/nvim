return {
  {

    "Mofiqul/vscode.nvim",
    config = function()
      -- vim.cmd("colo vscode")
    end,
  },
  {
    "vague-theme/vague.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
    config = function()
      vim.cmd("colorscheme vague")
    end,
  },
}
