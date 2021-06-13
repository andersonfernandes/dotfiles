call plug#begin('~/.local/share/nvim/plugged')
" Interface
Plug 'morhetz/gruvbox' " that awesome colorscheme
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }

" Editing
Plug 'cohama/lexima.vim' " auto  closing parentheses
Plug 'junegunn/goyo.vim', { 'on':  'Goyo' } " distraction-free writing
Plug 'RRethy/vim-illuminate' " word highlighting
Plug 'tomtom/tcomment_vim'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' " fzf 🤝 vim

" Git
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'mhinz/vim-signify' " git diff in sign column
Plug 'stsewd/fzf-checkout.vim' " branchs and tags management with fzf

" Development misc
Plug 'dense-analysis/ale' " lint engine
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " extension host
Plug 'sheerun/vim-polyglot' " language pack
Plug 'janko-m/vim-test' " tests runner
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'honza/vim-snippets'

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'ngmy/vim-rubocop'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'posva/vim-vue'
call plug#end()
