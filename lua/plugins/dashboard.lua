return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function()
    local logo = [[
    ███╗  ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
    ████╗ ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
    ██╔██╗██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
    ██║╚████║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
    ██║ ╚███║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
    ╚═╝  ╚══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
    - viis -
    ]]

    logo = string.rep("\n", 4) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        center = {
          { action = "Telescope find_files", desc = " Find file", icon = " ", key = "f" },
          { action = "ene | startinsert", desc = " New file", icon = " ", key = "n" },
          { action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "r" },
          { action = "e $MYVIMRC", desc = " Config", icon = " ", key = "c" },
          { action = 'lua require("persistence").load()', desc = " Restore Session", icon = " ", key = "s" },
          { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
          { action = "qa", desc = " Quit", icon = " ", key = "q" },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
    end

    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    return opts
  end,
}
