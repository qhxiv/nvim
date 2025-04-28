local opt = vim.opt

opt.clipboard = "unnamedplus"

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.hidden = false

opt.splitbelow = true -- Force all horizontal splits to go below current window (default: false)
opt.splitright = true -- Force all vertical splits to go to the right of current window (default: false)

opt.mouse = "a"
opt.wrap = false
opt.linebreak = true

opt.signcolumn = "yes"

opt.swapfile = false
opt.backup = false

opt.ignorecase = true
opt.smartcase = true

opt.hlsearch = true
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8

opt.updatetime = 50

opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

opt.laststatus = 3

vim.cmd("colo habamax")
