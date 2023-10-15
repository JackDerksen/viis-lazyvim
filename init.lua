-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = "latte",
    dark = "mocha",
  },
  transparent_background = false, -- disables setting the background color.
  show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false, -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15, -- percentage of the shade to apply to the inactive window
  },
  no_italic = true, -- Force no italic
  no_bold = true, -- Force no bold
  no_underline = true, -- Force no underline
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = {}, -- Change the style of comments
    conditionals = {},
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  color_overrides = {
    mocha = {
      --peach = "#fcc6a7",
      --green = "#d2fac5",
      --yellow = "#ffe5b0",
      --mauve = "#a8b1ff",
      --pink = "#fad2ef",
      --blue = "#9dc6fa",
      --teal = "#c0fcf4",
      --sky = "#acebfc",
      --maroon = "#f7a3aa",
      --red = "#fa8790",
      --sapphire = "#fad2ef",
    },
  },
  highlight_overrides = {
    all = function(colors)
      return {
        DiagnosticVirtualTextError = { bg = colors.none },
        DiagnosticVirtualTextWarn = { bg = colors.none },
        DiagnosticVirtualTextHint = { bg = colors.none },
        DiagnosticVirtualTextInfo = { bg = colors.none },
      }
    end,
  },
  integrations = {
    cmp = true,
    treesitter = true,
    harpoon = true,
    telescope = {
      enabled = true,
      --style = "nvchad",
    },
    lsp_trouble = true,
    which_key = true,
    fidget = true,
    neotree = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = {},
        hints = {},
        warnings = {},
        information = {},
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
      inlay_hints = {
        background = true,
      },
    },
  },
})
vim.cmd.colorscheme("catppuccin")

vim.keymap.set("n", "<leader>zz", function()
  require("zen-mode").setup({
    window = {
      backdrop = 0.9,
      width = 100,
      options = {
        relativenumber = true,
        cursorline = true,
        signcolumn = "yes",
      },
    },
    plugins = {
      options = {
        enabled = true,
        showcmd = true,
        ruler = true,
      },
    },
  })
  require("zen-mode").toggle()
  vim.wo.wrap = false
  vim.wo.number = true
  vim.wo.rnu = true
end)

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#6e738d", bold = true })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#b7bdf8", bold = true })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#6e738d", bold = true })
