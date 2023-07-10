-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
--
vim.opt.guifont = 'CaskaydiaCovePL Nerd Font:h16'
vim.opt.relativenumber = true

reload('user.plugins')
reload('user.keymap')

lvim.colorscheme='nightfly'
lvim.builtin.lualine.style = 'default'
local lualine_colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
}
local lualine_nightfly = require "lualine.themes.nightfly"
lualine_nightfly.normal.a.bg = lualine_colors.blue
lualine_nightfly.insert.a.bg = lualine_colors.green
lualine_nightfly.visual.a.bg = lualine_colors.violet
lualine_nightfly.command = {
  a = {
    gui = "bold",
    bg = lualine_colors.yellow,
    fg = lualine_colors.black,
  },
}
lvim.builtin.lualine.options.theme = lualine_nightfly

lvim.builtin.nvimtree.setup.view.width = 50


-- keybindings
lvim.builtin.which_key.mappings["ee"] = {
  ":NvimTreeToggle<CR>"
}
lvim.builtin.which_key.mappings["ef"] = {
  ":NvimTreeFocus<CR>"
}

-- no-neck-pain
-- require("lazy").setup({{"shortcuts/no-neck-pain.nvim", version = "*"}})
