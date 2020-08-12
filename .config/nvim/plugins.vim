call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'tomtom/tcomment_vim'
Plug 'ap/vim-css-color'

Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'sheerun/vim-polyglot'
Plug 'vim-ruby/vim-ruby'

Plug 'tpope/vim-rails'
Plug 'janko-m/vim-test'
Plug 'ngmy/vim-rubocop'
Plug 'posva/vim-vue'
Plug 'ecomba/vim-ruby-refactoring'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
call plug#end()
