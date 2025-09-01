-- Highlight whatever you have just yanked for a short amount of time
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Remove line number, start insert mode when opening a terminal
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("open-terminal-actions", { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false

    vim.cmd.startinsert()
  end,
})
