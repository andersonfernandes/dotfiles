vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Interface
  use 'morhetz/gruvbox'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        config = {
          -- https://patorjk.com/software/taag/#p=display&f=Bloody&t=neovim
          header = {
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
          },
          shortcut = {
            {
              desc = ' Tree',
              group = 'Label',
              action = 'NvimTreeToggle',
              key = 't',
            },
            {
              desc = ' dotfiles',
              group = 'Number',
              action = 'vsplit ~/.config/nvim/init.lua',
              key = 'd',
            },
          },
        },
      }
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
  }

  -- Editing
  use 'RRethy/vim-illuminate'
  use 'tomtom/tcomment_vim'

  -- Fuzzy Finder
  use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
  use 'junegunn/fzf.vim'

  -- Git
  use 'tpope/vim-fugitive'
  use 'mhinz/vim-signify'
  use 'stsewd/fzf-checkout.vim'

  -- Development misc
  use 'dense-analysis/ale'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use 'sheerun/vim-polyglot'
  use 'honza/vim-snippets'

  -- Ruby
  use 'vim-ruby/vim-ruby'
  use 'tpope/vim-rails'
  use 'ngmy/vim-rubocop'

  -- Javascript/Typescript
  use 'pangloss/vim-javascript'
  use 'maxmellon/vim-jsx-pretty'
end)
