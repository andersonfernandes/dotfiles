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
  --Plug 'dense-analysis/ale' " lint engine
  --Plug 'neoclide/coc.nvim', { 'branch': 'release' } " extension host
  --Plug 'sheerun/vim-polyglot' " language pack
  --Plug 'janko-m/vim-test' " tests runner
  --Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  --Plug 'honza/vim-snippets'

  -- Ruby
  --Plug 'vim-ruby/vim-ruby'
  --Plug 'tpope/vim-rails'
  --Plug 'ngmy/vim-rubocop'

  -- Javascript
  --Plug 'pangloss/vim-javascript'
  --Plug 'maxmellon/vim-jsx-pretty'
  --Plug 'posva/vim-vue'
end)
