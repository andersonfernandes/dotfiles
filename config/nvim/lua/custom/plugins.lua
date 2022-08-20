vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Interface
  use 'morhetz/gruvbox'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'

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
