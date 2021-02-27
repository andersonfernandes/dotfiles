call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim', { 'on':  'Goyo' }

Plug 'cohama/lexima.vim'
Plug 'tomtom/tcomment_vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'stsewd/fzf-checkout.vim'

Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'vim-ruby/vim-ruby'

Plug 'tpope/vim-rails'
Plug 'janko-m/vim-test'
Plug 'ngmy/vim-rubocop'
Plug 'posva/vim-vue'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()
