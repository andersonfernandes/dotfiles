call pathogen#infect()
set nocompatible
filetype off

" === General  ===
set guioptions-=m
set guioptions-=T
set guioptions-=r
set formatoptions-=ro
let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1
set laststatus=2

" === Colors  ====
syntax enable
set background=dark
colorscheme railscasts

" === Indentation ===
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" === Keys  ===
let mapleader = ","
nmap <leader>ne :NERDTreeToggle<cr> 
let g:move_key_modifier = 'C'
inoremap { {<CR>}<Esc>ko

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'matze/vim-move'

Plugin 'vim-jp/vim-cpp'
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'

Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on
