set noerrorbells
set incsearch
set hidden
set number
set inccommand=split
set nowrap
set modifiable
set clipboard=unnamedplus

" Theme
syntax enable
set background=dark
colorscheme gruvbox

" Indentation
filetype indent on
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set statusline=%!BuildStatusLine()

set showtabline=1
set tabline=%!BuildTabLine()
