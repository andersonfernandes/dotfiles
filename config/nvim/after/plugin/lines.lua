-- lualine.nvim
require('lualine').setup {
  options = {
    theme = 'gruvbox-material',
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {},
    lualine_z = {'location'}
  },
  tabline = {
    lualine_a = {'tabs'},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = {'nvim-tree'},
}
