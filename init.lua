-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd.colorscheme("catppuccin")

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#6e738d", bold = true })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#b4befe", bold = true })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#6e738d", bold = true })
