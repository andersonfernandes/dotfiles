call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'voldikss/vim-floaterm'

Plug 'cohama/lexima.vim'
Plug 'tomtom/tcomment_vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'stsewd/fzf-checkout.vim'

Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'sheerun/vim-polyglot'
Plug 'vim-ruby/vim-ruby'

Plug 'tpope/vim-rails', { 'tag': 'v5.2' }
Plug 'janko-m/vim-test'
Plug 'ngmy/vim-rubocop'
Plug 'posva/vim-vue'
call plug#end()
