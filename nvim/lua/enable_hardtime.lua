-- Dependency for Hardtime: vim.notify needs to be setup
vim.notify = require("notify")

-- Break bad habits, master Vim motions
-- See plugins lua
require("hardtime").setup({
    disable_mouse = false,
    -- I keep arrow keys because HJKL makes no sense with my layout
    disabled_keys = {
      ["<Up>"] = {},
      ["<Down>"] = {},
      ["<Left>"] = {},
      ["<Right>"] = {},
    },
  })
vim.opt.termguicolors=true
