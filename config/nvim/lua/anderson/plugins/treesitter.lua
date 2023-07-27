require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'vim',
    'gitcommit',
    'json',
    'c',
    'lua',
    'ruby',
    'javascript',
    'typescript',
  },

  sync_install = true,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true
  }
}
