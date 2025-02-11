vim.g.mapleader = " "
vim.g.maplocalleader = " "

local set = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Swap j, k with gj, gk
set("n", "j", "gj", opts)
set("n", "gj", "j", opts)
set("n", "k", "gk", opts)
set("n", "gk", "k", opts)

-- save file
set("n", "<C-s>", "<Cmd>w<CR>", opts)

-- save file without auto-formatting
set("n", "<leader>sn", "<Cmd>noautocmd w <CR>", opts)

-- Buffers
set("n", "<S-H>", "<Cmd>bnext<CR>", opts)
set("n", "<S-L>", "<Cmd>bprev<CR>", opts)

-- Window management
set("n", "<leader>v", "<C-w>v", opts) -- split window vertically
set("n", "<leader>h", "<C-w>s", opts) -- split window horizontally
set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
set("n", "<leader>wq", "<Cmd>close<CR>", opts) -- close current split window

-- Toggle line wrapping
set("n", "<leader>tw", "<Cmd>set wrap!<CR>", opts)

-- Make current file executable
set("n", "<leader>x", "<Cmd>!chmod +x %<CR>", { silent = true })

-- Resize with arrows
set("n", "<Up>", "<Cmd>resize -2<CR>", opts)
set("n", "<Down>", "<Cmd>resize +2<CR>", opts)
set("n", "<Left>", "<Cmd>vertical resize -2<CR>", opts)
set("n", "<Right>", "<Cmd>vertical resize +2<CR>", opts)

-- Navigate between splits
set("n", "<C-k>", "<Cmd>wincmd k<CR>", opts)
set("n", "<C-j>", "<Cmd>wincmd j<CR>", opts)
set("n", "<C-h>", "<Cmd>wincmd h<CR>", opts)
set("n", "<C-l>", "<Cmd>wincmd l<CR>", opts)

-- Esc to turn off highlight search
set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

set("n", "J", "mzJ`z")

-- Diagnostic keymaps
-- v0.11+
-- set("n", "[d", function()
--   vim.diagnostic.jump({ count = -1, float = true })
-- end)
-- set("n", "]d", function()
--   vim.diagnostic.jump({ count = 1, float = true })
-- end)
set("n", "[d", vim.diagnostic.goto_prev)
set("n", "]d", vim.diagnostic.goto_next)
set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
set("n", "<leader>l", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Stay in indent mode
set("v", "<", "<gv", opts)
set("v", ">", ">gv", opts)

-- Keep last yanked when pasting
set("v", "p", '"_dP', opts)

-- Move code while in visual mode
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

set("i", "<C-c>", "<Esc>")
