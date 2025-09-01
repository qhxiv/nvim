return {
  "Mofiqul/vscode.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local lightmodeFile = vim.fn.expand("~/.lightmode")
    local isLightmode = vim.fn.filereadable(lightmodeFile) == 1

    if isLightmode then
      vim.o.background = "light"
    end

    vim.cmd("colo vscode")
  end,
}
