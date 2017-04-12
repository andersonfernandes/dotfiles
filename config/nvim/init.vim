"=Plugins=
call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'mattn/emmet-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'honza/vim-snippets'
Plug 'janko-m/vim-test'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

Plug 'kchmck/vim-coffee-script'

Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

"=General=
set laststatus=2
set number
set modifiable

"=Theme=
syntax enable
set background=dark
colorscheme gruvbox

"=Indentation=
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

"=Keys=
let mapleader = ","
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
nmap <leader>vs :vsplit<cr> 
nmap <leader>hs :split<cr> 
inoremap { {}<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i

"=Plugin Configs=

" NERDTree
nmap <leader>ne :NERDTreeToggle<cr> 
let NERDTreeShowHidden=1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_max_depth = 50
let g:ctrlp_max_files = 100000

" vim-airline
let g:airline_theme='gruvbox'

" vim-test
nmap <silent> <leader>t :TestFile<CR>

" vim-ruby
autocmd FileType ruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby let g:rubycomplete_rails = 1

" vim-rails
nmap <leader>jc :Econtroller<cr> 
nmap <leader>jm :Emodel<cr> 
nmap <leader>jsc :vsplit<cr> :Econtroller<cr> 
nmap <leader>jsm :vsplit<cr> :Emodel<cr> 

" deoplete
let g:deoplete#enable_at_startup = 1

" emmet-vim
autocmd FileType html imap <buffer><expr><tab> emmet#expandAbbrIntelligent("\<tab>")
autocmd FileType eruby imap <buffer><expr><tab> emmet#expandAbbrIntelligent("\<tab>")
autocmd FileType css imap <buffer><expr><tab><tab> emmet#expandAbbrIntelligent("\<tab>")

