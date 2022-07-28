vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Interface
  use 'morhetz/gruvbox'
  use {'preservim/nerdtree', opt = true, cmd = {'NERDTreeToggle', 'NERDTreeFind'}}
  use 'ryanoasis/vim-devicons'

  -- Editing
  use 'cohama/lexima.vim'
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
  use 'janko-m/vim-test'
  use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }
  use 'honza/vim-snippets'

  -- Ruby
  use 'vim-ruby/vim-ruby'
  use 'tpope/vim-rails'
  use 'ngmy/vim-rubocop'

  -- Javascript
  use 'pangloss/vim-javascript'
  use 'maxmellon/vim-jsx-pretty'
end)
