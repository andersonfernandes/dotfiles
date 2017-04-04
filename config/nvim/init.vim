" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'

Plug 'vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
call plug#end()

" General 
let NERDTreeShowHidden=1
set laststatus=2

" Colors
syntax enable
set background=dark
colorscheme gruvbox
let g:airline_theme='gruvbox'

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Keys 
let mapleader = ","
nmap <leader>ne :NERDTreeToggle<cr> 
let g:ctrlp_map = '<c-p>'
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" CtrlP
let g:ctrlp_max_depth = 50
let g:ctrlp_max_files = 100000
