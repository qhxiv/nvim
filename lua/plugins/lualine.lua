return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      theme = "auto",
      icons_enabled = false,
      component_separators = "",
      section_separators = "",
    },
    sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_y = {},
      lualine_z = {},

      lualine_c = {
        "branch",
        "diff",
        "disagnostics",
        { "filename", path = 1 },
      },
      lualine_x = {
        "fileformat",
        { "filetype", icons_enabled = true },
      },
    },
  },
}
