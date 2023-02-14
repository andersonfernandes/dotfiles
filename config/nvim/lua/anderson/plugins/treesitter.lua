require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'c',
        'lua',
        'vim',
        'help',
        'ruby',
        'javascript',
        'gitcommit',
        'json'
    },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    indent = {
        enable = true
    }
}
