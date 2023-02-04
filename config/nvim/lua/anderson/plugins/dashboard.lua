local config = {}

config.shortcut = {
    {
        desc = '  New file ',
        action = 'enew',
        group = '@string',
        key = 'n'
    },
    {
        desc = '   Update ',
        action = 'PackerSync',
        group = '@string',
        key = 'u'
    },
    {
        desc = ' dotfiles',
        group = '@string',
        action = 'vsplit ~/.config/nvim/init.lua',
        key = 'd',
    },
    {
        desc = '   Quit ',
        action = 'q!',
        group = '@macro',
        key = 'q'
    }
}

-- https://patorjk.com/software/taag/#p=display&f=Bloody&t=neovim
config.header = {
    '',
    '',
    '███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓',
    '██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒',
    '▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░',
    '▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ',
    '▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒',
    '░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░',
    '░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░',
    '░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ',
    '░    ░  ░    ░ ░        ░   ░         ░   ',
    '░                  ',
    '',
    '',
}

config.mru = { limit = 8 }
config.project = { limit = 4 }
config.packages = { enable = true }
config.week_header = { enable = true }

-- Setup.
require('dashboard').setup {
    theme = 'hyper',
    config = config
}
