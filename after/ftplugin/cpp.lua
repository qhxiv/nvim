local set = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Compile and run
set("n", "<leader>c", function()
  local filename = vim.fn.expand("%")
  local output = vim.fn.expand("%:r")
  local command = string.format(
    "g++ -std=c++17 -Wshadow -Wall -O2 -Wno-unused-result '%s' -o $HOME/.local/bin/a && $HOME/.local/bin/a",
    filename
  )

  vim.cmd.write()
  vim.cmd.vnew()
  vim.cmd.term(command)
end, opts)

-- Copy from template to current file
set("n", "<leader>r", function()
  -- local templatePath = "/mnt/d/Documents/Workspace/cp/temp.cpp"
  local templatePath = "~/cp/tmp.cpp"

  vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.fn.readfile(templatePath))
  vim.api.nvim_win_set_cursor(0, { 7, 0 })
end, opts)
