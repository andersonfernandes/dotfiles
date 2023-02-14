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
    requires = {'nvim-tree/nvim-web-devicons'}
  }
  use {
    'VonHeikemen/fine-cmdline.nvim',
    requires = {
      {'MunifTanjim/nui.nvim'}
    }
  }

  -- Editing
  use 'RRethy/vim-illuminate'
  use 'tomtom/tcomment_vim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Fuzzy Finder
  use {
    'junegunn/fzf', -- Only used on terminal
    dir = '~/.fzf',
    run = './install --all'
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Git
  use 'tpope/vim-fugitive'
  use 'mhinz/vim-signify'

  -- Development misc
  use 'dense-analysis/ale'
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }
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
