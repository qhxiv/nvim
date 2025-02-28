return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- Optional
      "nvim-telescope/telescope.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "obsidian",
            path = "/mnt/d/Documents/Workspace/obsidian",
          },
        },
        completion = {
          nvim_cmp = false,
        },
        sort_by = "path",
        mappings = {
          -- Overrides the 'gd' mapping to work on markdown/wiki links within your vault.
          ["gd"] = {
            action = function()
              return require("obsidian").util.gf_passthrough()
            end,
            opts = { noremap = false, expr = true, buffer = true },
          },
          -- Toggle check-boxes.
          ["<leader>ch"] = {
            action = function()
              return require("obsidian").util.toggle_checkbox()
            end,
            opts = { buffer = true },
          },
          -- Smart action depending on context, either follow link or toggle checkbox.
          ["<cr>"] = {
            action = function()
              return require("obsidian").util.smart_action()
            end,
            opts = { buffer = true, expr = true },
          },
          ["<leader>ff"] = {
            action = function()
              return vim.cmd("ObsidianQuickSwitch")
            end,
            opts = { noremap = true, silent = true },
          },
          ["<leader>ft"] = {
            action = function()
              return vim.cmd("ObsidianTags")
            end,
            opts = { noremap = true, silent = true },
          },
          ["<leader>fb"] = {
            action = function()
              return vim.cmd("ObsidianBacklinks")
            end,
            opts = { noremap = true, silent = true },
          },
        },
        note_id_func = function(title)
          local suffix = ""

          if title ~= nil then
            suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
          else
            for _ = 1, 4 do
              suffix = suffix .. string.char(math.random(65, 90))
            end
          end

          return tostring(os.date("%d-%m-%Y")) .. "-" .. suffix
        end,
        ui = {
          checkboxes = {
            [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
            ["x"] = { char = "", hl_group = "ObsidianDone" },
          },
        },
      })

      local cmp = require("cmp")
      cmp.register_source("obsidian", require("cmp_obsidian").new())
      cmp.register_source("obsidian_new", require("cmp_obsidian_new").new())
      cmp.register_source("obsidian_tags", require("cmp_obsidian_tags").new())
    end,
  },
  {
    "saghen/blink.cmp",
    dependencies = { "saghen/blink.compat" },
    opts = {
      sources = {
        default = { "obsidian", "obsidian_new", "obsidian_tags" },
        providers = {
          obsidian = {
            name = "obsidian",
            module = "blink.compat.source",
          },
          obsidian_new = {
            name = "obsidian_new",
            module = "blink.compat.source",
          },
          obsidian_tags = {
            name = "obsidian_tags",
            module = "blink.compat.source",
          },
        },
      },
    },
  },
}
