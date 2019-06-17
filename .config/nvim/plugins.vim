call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'tomtom/tcomment_vim'
Plug 'terryma/vim-multiple-cursors'

Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'sheerun/vim-polyglot'
Plug 'vim-ruby/vim-ruby'

Plug 'janko-m/vim-test'
Plug 'ngmy/vim-rubocop'
call plug#end()
