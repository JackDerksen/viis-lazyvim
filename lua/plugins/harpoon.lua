return {
  "ThePrimeagen/harpoon",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = true,
  keys = {
    { "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with Harpoon" },
    { "<leader>he", "<cmd>lua require('harpoon.ui').toggle_quick_menu()", desc = "Toggle Harpoon menu" },
    { "<leader>h1", "<cmd>lua require('harpoon.ui').nav_file(1)", desc = "Harpoon mark 1" },
    { "<leader>h2", "<cmd>lua require('harpoon.ui').nav_file(2)", desc = "Harpoon mark 2" },
    { "<leader>h3", "<cmd>lua require('harpoon.ui').nav_file(3)", desc = "Harpoon mark 3" },
    { "<leader>h4", "<cmd>lua require('harpoon.ui').nav_file(4)", desc = "Harpoon mark 4" },
  },
}
