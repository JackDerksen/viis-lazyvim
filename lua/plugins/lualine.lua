return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    local icons = require("lazyvim.config").icons
    local Util = require("lazyvim.util")

    return {
      options = {
        icons_enabled = true,
        theme = "catppuccin",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            icon = "",
            separator = { left = "", right = "" },
            color = {
              fg = "#1c1d21",
              bg = "#b4befe",
            },
          },
        },
        lualine_b = {
          {
            "branch",
            icon = "",
            separator = { left = "", right = "" },
            color = {
              fg = "#1c1d21",
              bg = "#7d83ac",
            },
          },
          {
            "diff",
            separator = { left = "", right = "" },
            color = {
              fg = "#1c1d21",
              bg = "#7d83ac",
            },
          },
        },
        lualine_c = {
          {
            "diagnostics",
            separator = { left = "", right = "" },
            color = {
              bg = "#45475a",
            },
          },
          {
            "filename",
          },
        },
        lualine_x = { "filesize" },
        lualine_y = {
          {
            "filetype",
            icons_enabled = false,
            color = {
              fg = "#1C1D21",
              bg = "#eba0ac",
            },
          },
        },
        lualine_z = {
          {
            "location",
            icon = "",
            color = {
              fg = "#1c1d21",
              bg = "#f2cdcd",
            },
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = { "neo-tree", "lazy" },
    }
  end,
}
