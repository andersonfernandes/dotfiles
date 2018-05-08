"= Plugins =
call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'janko-m/vim-test'
Plug 'ngmy/vim-rubocop'

Plug 'mattn/emmet-vim'
Plug 'kchmck/vim-coffee-script'
Plug 'pangloss/vim-javascript'
call plug#end()

"= General =
set hidden
set number
set inccommand=split
set nowrap
set modifiable
set colorcolumn=120
set clipboard=unnamed

"= Theme =
syntax enable
set background=dark
colorscheme gruvbox

"= Indentation =
filetype indent on
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

"= Keys =
let mapleader = ","
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

noremap <leader>vs :vsplit<cr>
noremap <leader>hs :split<cr>

noremap <leader>tn :tabnew<cr>
noremap <leader>tl :tabnext<cr>
noremap <leader>th :tabprevious<cr>
noremap <leader>tq :tabclose<cr>

noremap <c-p> :Files<cr>
noremap <c-f> :Ag<space>
noremap <c-b> :Buffers<cr>

map <F2> :mksession! ~/.config/nvim/vim_session <cr>
map <F3> :source ~/.config/nvim/vim_session <cr>


"= Plugins Configs =

" emmet

" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" vim-multiple-cursors
function! Multiple_cursors_before()
  exe 'call deoplete#toggle()'
endfunction

function! Multiple_cursors_after()
  exe 'call deoplete#toggle()'
endfunction

" deoplete
let g:deoplete#enable_at_startup = 1

" NERDTree
nmap <leader>ne :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<cr>
let NERDTreeShowHidden=1

" vim-test
nmap <silent> <leader>T :TestFile -strategy=neovim<CR>
nmap <silent> <leader>lT :TestNearest<CR>

" vim-ruby
autocmd FileType ruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby let g:rubycomplete_rails = 1

" vim-rails
nmap <leader>jc :Econtroller<cr>
nmap <leader>jm :Emodel<cr>
nmap <leader>jsc :vsplit<cr> :Econtroller<cr>
nmap <leader>jsm :vsplit<cr> :Emodel<cr>
